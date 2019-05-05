#include "mem.h"
.section ".text.boot"

.globl _boot_entry
_boot_entry:
    mrs x0, mpidr_el1
    and x0, x0, #0xFF
    cbnz x0, halt_proc

    /*Zero out bss section */
    adr x0, __bss_start
    adr x1, __bss_end
    bl   memzero

    mov sp, #STACK_BASE
    b   kernel_main

halt_proc:
    wfe
    b halt_proc


