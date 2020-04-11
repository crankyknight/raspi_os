#include <config.h>
#include <arm.h>
#include <types.h>
#include <utils.h>
#include <timers.h>
#include <printf.h>

#define  TICKS_PER_SEC      (1000 / TICK_FREQ_MS)

typedef struct timer_regs_t timer_regs_t;
struct timer_t{
    timer_regs_t* timer_regs;
    uint64  last_count; /* For debug */
    uint64  num_ticks_since_boot;
    uint64  sec_since_boot;
    uint64  msec_ticks;
#ifdef RASPIOS_QEMU_SIM
    uint32 ctr_frq;
#endif
}systimer;

#ifndef RASPIOS_QEMU_SIM
#define  COMPARE_VAL_INC    (SYS_TIMER_FREQ_HZ / TICK_FREQ_MS)
typedef struct timer_regs_t{
    reg32 control;
    reg64 timer_val;
    reg32 compare0;
    reg32 compare1;
    reg32 compare2;
    reg32 compare3;
}timer_regs_t;

void init_systimer(){
    systimer.timer_regs = (timer_regs_t*)SYS_TIMERS_BASE; 
}

void systick_handler(){
    /*Clear interrupt - writing the read value back clears interrupt*/
    systimer.timer_regs->control = systimer.timer_regs->control;

    systimer.last_count = systimer.timer_regs->timer_val;
    systimer.timer_regs->compare1 = systimer.last_count + COMPARE_VAL_INC; 
    systimer.num_ticks_since_boot++;
    systimer.msec_ticks++;
    if(systimer.msec_ticks == TICKS_PER_SEC){
        /* 1 second over */
        systimer.msec_ticks = 0;
        systimer.sec_since_boot++;
    }
    return;
}

int timer_intr_pending(uint32* irq_sts){
    if(irq_sts[0] & SYSTIMER_INTR_MASK)
        return 1;
}

#else /* RASPIOS_QEMU_SIM */

/* Local timer - reg 0x40000034 not writeable on QEMU
 * for some reason. To be debugged */
#if 0
#define  COMPARE_VAL_INC    (XTAL_FREQ_HZ / TICK_FREQ_MS)
typedef struct timer_regs_t{
    reg32 load;
    reg32 value;
    reg32 control;
    reg32 intr_clr;
    reg32 intr_sts_raw;
    reg32 intr_sts;
    reg32 reload;
    reg32 pre_divider;
    reg32 free_run_ctr;
}timer_regs_t;

void init_systimer(){
    //mmio_write(CORE_TIMER_PRESCALE, CORE_TIMER_PRESCALE_VAL); 
    mmio_write(CORE_TIMER_INTR_SEL, CORE0_TIMER_IRQ_SEL);

    mmio_write(LOCAL_TIMER_CTRL, 
            LOCAL_TIMER_CTRL_IRQ_EN | 
            LOCAL_TIMER_CTRL_EN |
            20000000);

    mmio_write(LOCAL_TIMER_WR_CTRL, 
            LOCAL_TIMER_WR_CTRL_IRQ_CLR |
            LOCAL_TIMER_WR_CTRL_RELOAD);

    /* Route timer interrupt to core 0 */
    mmio_write(CORE0_TIMER_IRQCNTL, TIMER1_IRQ); 
}

void systick_handler(){
    /*Acknowledge interrupt and reload timer */
    mmio_write(LOCAL_TIMER_WR_CTRL, 
            LOCAL_TIMER_WR_CTRL_IRQ_CLR |
            LOCAL_TIMER_WR_CTRL_RELOAD);

    systimer.num_ticks_since_boot++;
    systimer.msec_ticks++;
    if(systimer.msec_ticks == TICKS_PER_SEC){
        /* 1 second over */
        systimer.msec_ticks = 0;
        systimer.sec_since_boot++;
    }
    return;
}
#endif

/* Below code reference 
 * https://github.com/eggman/raspberrypi/blob/master/qemu-raspi3/timer01/kernel.c
 * Changed timer from virutal to physical timer (refer ARM doc - Generic timers)
 */
 

void routing_core0cntv_to_core0irq(void)
{
    mmio_write(CORE0_TIMER_IRQCNTL, TIMER3_IRQ);
}

uint32 read_core0timer_pending(void)
{
    uint32 tmp;
    tmp = mmio_read(CORE0_IRQ_SOURCE);
    return tmp;
}

void enable_cntv(void)
{
    uint32 cntv_ctl;
    cntv_ctl = 1;
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
}

void disable_cntv(void)
{
    uint32 cntv_ctl;
    cntv_ctl = 0;
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
}

uint64 read_cntvct(void)
{
	uint64 val;
	asm volatile("mrs %0, cntvct_el0" : "=r" (val));
	return (val);
}

uint32 read_cntv_tval(void)
{
    uint32 val;
	asm volatile ("mrs %0, cntv_tval_el0" : "=r" (val));
    return val;
}

void write_cntv_tval(uint32 val)
{
	asm volatile ("msr cntv_tval_el0, %0" :: "r" (val));
    return;
}

uint32 read_cntfrq(void)
{
    uint32 val;
	asm volatile ("mrs %0, cntfrq_el0" : "=r" (val));
    return val;
}

void init_systimer(){
    systimer.ctr_frq = read_cntfrq();
    write_cntv_tval(systimer.ctr_frq/TICKS_PER_SEC);
    routing_core0cntv_to_core0irq();
    enable_cntv();
}

void systick_handler(){
    /* This write clears interrupt by setting
     * next compare val. Interrupt asserted only
     * when CVAL <= System_count
     */
    write_cntv_tval(systimer.ctr_frq/TICKS_PER_SEC);
    
    systimer.num_ticks_since_boot++;
    systimer.msec_ticks++;
    if(systimer.msec_ticks == TICKS_PER_SEC){
        /* 1 second over */
        systimer.msec_ticks = 0;
        systimer.sec_since_boot++;
    }
    return;
}

int timer_intr_pending(uint32* irq_sts){
    if(read_core0timer_pending() & TIMER3_IRQ)
        return 1;
}
#endif /* RASPIOS_QEMU_SIM */


