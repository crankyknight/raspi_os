#include <arm.h>
#include <mem.h>
.section ".text"
.global el1_setup

el1_setup :
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
           SCTLR_EL1_MMU_DIS | SCTLR_EL1_DCACHE_DIS | SCTLR_EL1_ICACHE_DIS |\
           SCTLR_EL1_STACK_ALIGN_CHK_EN | SCTLR_EL1_ALIGN_CHK_EN)
    msr SCTLR_EL1, x0

    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
    msr SCR_EL3, x0

    ldr x0, =(HCR_EL2_RW_AARCH64)
    msr HCR_EL2, x0 

    /* Copy Link register to elr */
    msr ELR_EL3, lr

   /* Setup EL1 status word */ 
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
    msr SPSR_EL3, x0

    /*As of now, we do not return to EL3. Overwrite stack of EL3 */
    ldr x0, =STACK_BASE
    msr SP_EL1, x0

    /* Go to EL1. Stack already uses EL1 SP */
    eret
