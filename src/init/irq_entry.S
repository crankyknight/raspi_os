#include <arm.h>

.section ".text"
.extern dump_regs

/* Context includes x0-x30, spsr(for debug), elr(for debug), in that order */
#define CONTEXT_STACK_SIZE  ((31 + 2) * 8)


.macro vtable_entry entry
    .align 7 /*Align to 2^7 = 0x80 */
    b \entry
    .endm

.macro ehandler_loop_infinite e_handler
\e_handler :
    context_save
    bl dump_regs
    1: b 1b
    .endm

.macro context_save 
    sub sp, sp, #CONTEXT_STACK_SIZE

    stp x0, x1, [sp, #(16 * 0)]
    stp x2, x3, [sp, #(16 * 1)]
    stp x4, x5, [sp, #(16 * 2)]
    stp x6, x7, [sp, #(16 * 3)]
    stp x8, x9, [sp, #(16 * 4)]
    stp x10, x11, [sp, #(16 * 5)]
    stp x12, x13, [sp, #(16 * 6)]
    stp x14, x15, [sp, #(16 * 7)]
    stp x16, x17, [sp, #(16 * 8)]
    stp x18, x19, [sp, #(16 * 9)]
    stp x20, x21, [sp, #(16 * 10)]
    stp x22, x23, [sp, #(16 * 11)]
    stp x24, x25, [sp, #(16 * 12)]
    stp x26, x27, [sp, #(16 * 13)]
    stp x28, x29, [sp, #(16 * 14)]

    mrs  x0, SPSR_EL1
    mrs  x1, ELR_EL1

    stp x30, x0, [sp, #(16 * 15)]
    str x1, [sp, #((16 * 15) + 8)]
    .endm

.macro context_restore
    ldp x0, x1, [sp, #(16 * 0)]
    ldp x2, x3, [sp, #(16 * 1)]
    ldp x4, x5, [sp, #(16 * 2)]
    ldp x6, x7, [sp, #(16 * 3)]
    ldp x8, x9, [sp, #(16 * 4)]
    ldp x10, x11, [sp, #(16 * 5)]
    ldp x12, x13, [sp, #(16 * 6)]
    ldp x14, x15, [sp, #(16 * 7)]
    ldp x16, x17, [sp, #(16 * 8)]
    ldp x18, x19, [sp, #(16 * 9)]
    ldp x20, x21, [sp, #(16 * 10)]
    ldp x22, x23, [sp, #(16 * 11)]
    ldp x24, x25, [sp, #(16 * 12)]
    ldp x26, x27, [sp, #(16 * 13)]
    ldp x28, x29, [sp, #(16 * 14)]
    ldr x30, [sp, #(16 * 15)]

    add sp, sp, #CONTEXT_STACK_SIZE
    .endm

.section ".vectors"
/*Following is based on Sec 10.4 "AArch64 exception table" of Armv8-A Programmer's Guide */ 
vector_table :
    vtable_entry    sync_cur_el_sp0
    vtable_entry    irq_cur_el_sp0
    vtable_entry    fiq_cur_el_sp0
    vtable_entry    serror_cur_el_sp0

    vtable_entry    sync_cur_el_spx
    vtable_entry    irq_cur_el_spx
    vtable_entry    fiq_cur_el_spx
    vtable_entry    serror_cur_el_spx

    vtable_entry    sync_lower_el_a64
    vtable_entry    irq_lower_el_a64
    vtable_entry    fiq_lower_el_a64
    vtable_entry    serror_lower_el_a64
    
    vtable_entry    sync_lower_el_a32
    vtable_entry    irq_lower_el_a32 
    vtable_entry    fiq_lower_el_a32
    vtable_entry    serror_lower_el_a32


/* Exception Handlers */
ehandler_loop_infinite  sync_cur_el_sp0
ehandler_loop_infinite  irq_cur_el_sp0
ehandler_loop_infinite  fiq_cur_el_sp0
ehandler_loop_infinite  serror_cur_el_sp0

ehandler_loop_infinite  sync_cur_el_spx
/*--- IRQ handled separately */
ehandler_loop_infinite  fiq_cur_el_spx
ehandler_loop_infinite  serror_cur_el_spx

ehandler_loop_infinite  sync_lower_el_a64
ehandler_loop_infinite  irq_lower_el_a64
ehandler_loop_infinite  fiq_lower_el_a64
ehandler_loop_infinite  serror_lower_el_a64

ehandler_loop_infinite  sync_lower_el_a32
ehandler_loop_infinite  irq_lower_el_a32
ehandler_loop_infinite  fiq_lower_el_a32
ehandler_loop_infinite  serror_lower_el_a32

irq_cur_el_spx :
    context_save
    bl irq_handler
    context_restore
    eret


.section ".text"
.global init_interrupts_base
init_interrupts_base :
    ldr x0, =vector_table
    msr VBAR_EL1, x0
    ret

.global irq_enable
irq_enable :
    msr daifclr, #2
    ret

.global irq_disable
irq_disable :
    msr daifset, #2
    ret

