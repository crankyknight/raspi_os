#include <arm.h>
#include <mem.h>
.section ".text.boot"

.globl _boot_entry
_boot_entry:
    mrs x0, mpidr_el1
    and x0, x0, #0xFF
    cbnz x0, halt_proc

    /*Zero out bss section */
    adr x0, __bss_start
    adr x1, __bss_end
    sub x1, x1, x0
    bl   memzero

    bl el1_setup
    b   kernel_main

halt_proc:
    wfe
    b halt_proc


el1_setup :
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
           SCTLR_EL1_MMU_DIS | SCTLR_EL1_DCACHE_DIS | SCTLR_EL1_ICACHE_DIS |\
           SCTLR_EL1_STACK_ALIGN_CHK_EN | SCTLR_EL1_ALIGN_CHK_EN)
    msr SCTLR_EL1, x0

    /*Setting of following 2 registers also ensures exceptions are handled at EL1(kernel) */
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
