#include <config.h>
#include <arm.h>
#include <printf.h>
#include <types.h>

#include <irq.h>
#include <timers.h>


void init_systick_timer(uint64* irq_en){
#ifdef ENABLE_TIMER_IRQ
    init_systimer();
    /* Interrupt handler called manually first time. */
    systick_handler();

    *irq_en |= IRQ_SYS_TIMER_1_EN;
#endif
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
    /*Setup Timer interrupt */
    init_systick_timer(&irq_en);
    /*Enable Interrupts */
    enable_interrupts(irq_en);
    /*Enable ARM interrupts */
    irq_enable();

}

/* Interrupt Handlers */
void irq_handler(){
    /* Identify IRQ */
    uint64 irq_sts = *(unsigned int*)(ARM_INT_BASE + IRQ_PENDING_1_OFF); 

    /* Service all interrupts */
#ifdef ENABLE_TIMER_IRQ
    if(irq_sts & SYSTIMER_INTR_MASK){
        systick_handler();
        irq_sts &= ~((uint64)SYSTIMER_INTR_MASK);
    }
#endif

    /* All known interrupts should be cleared by now */
    if(irq_sts){
        printf("Unknown interrupt raised. Shutting down...\n");
        while(1);
    }

}
