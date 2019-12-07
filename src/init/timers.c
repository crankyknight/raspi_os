#include <config.h>
#include <arm.h>
#include <types.h>
#include <timers.h>

#define  COMPARE_VAL_INC    (SYS_TIMER_FREQ_HZ / TICK_FREQ_MS)
#define  TICKS_PER_SEC      (1000 / TICK_FREQ_MS)

typedef struct timer_regs_t{
    reg32 control;
    reg64 timer_val;
    reg32 compare0;
    reg32 compare1;
    reg32 compare2;
    reg32 compare3;
}timer_regs_t;


struct timer_t{
    timer_regs_t* timer_regs;
    uint64  last_count; /* For debug */
    uint64  num_ticks_since_boot;
    uint64  sec_since_boot;
    uint64  msec;
}systimer;


void init_systimer(){
    systimer.timer_regs = (timer_regs_t*)SYS_TIMERS_BASE; 
}

void systick_handler(){
    /*Clear interrupt - writing the read value back clears interrupt*/
    systimer.timer_regs->control = systimer.timer_regs->control;

    systimer.last_count = systimer.timer_regs->timer_val;
    systimer.timer_regs->compare1 = systimer.last_count + COMPARE_VAL_INC; 
    systimer.num_ticks_since_boot++;
    systimer.msec++;
    if(systimer.msec == TICKS_PER_SEC){
        /* 1 second over */
        systimer.msec = 0;
        systimer.sec_since_boot++;
    }
    return;
}

