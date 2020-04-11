#include <config.h>
#include <arm.h>
#include <printf.h>
#include <types.h>

#include <irq.h>
#include <timers.h>


void init_systick_timer(uint64* irq_en){
    init_systimer();
    /* Interrupt handler called manually first time. */
    //systick_handler();
}

void enable_interrupts(uint64 irq_en){
    reg64* irq_en_reg = (reg64*)(ARM_INT_BASE + IRQ_EN_1_OFF);
    *irq_en_reg = irq_en;
}

extern void init_interrupts_base();
extern void irq_enable();
void init_interrupts(){
    uint64 irq_en;
    init_interrupts_base();
#ifdef ENABLE_TIMER_IRQ
    /*Setup Timer interrupt */
    init_systick_timer(&irq_en);
#endif
    /*Enable Interrupts */
    enable_interrupts(irq_en);
    /*Enable ARM interrupts */
    irq_enable();

}

/* Interrupt Handlers */
void irq_handler(){
    /* Identify IRQ */
    uint32* irq_sts = (unsigned int*)(ARM_INT_BASE + IRQ_BASIC_PENDING_OFF); 

    /* Service all interrupts */
#ifdef ENABLE_TIMER_IRQ
    if(timer_intr_pending(irq_sts)){
        RASPIOS_DBG(TIMER_DBG, "Systick intr rasied!\n");
        systick_handler();
    }
#endif

}
