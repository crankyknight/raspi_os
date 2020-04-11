#ifndef __ARM_H__
#define __ARM_H__

/* System control register(EL1) - pg 2025 ARMv8 Architecture reference Manual*/
#define SCTLR_EL1_MMU_EN                (1<<0)
#define SCTLR_EL1_MMU_DIS               (0<<0)
#define SCTLR_EL1_ALIGN_CHK_EN          (1<<1)
#define SCTLR_EL1_ALIGN_CHK_DIS         (0<<1)
#define SCTLR_EL1_DCACHE_EN             (1<<2)
#define SCTLR_EL1_DCACHE_DIS            (1<<2)
#define SCTLR_EL1_STACK_ALIGN_CHK_EN    (1<<4)
#define SCTLR_EL1_ICACHE_EN             (1<<12)
#define SCTLR_EL1_ICACHE_DIS            (0<<12)
#define SCTLR_EL1_E0E_LITTLE            (0<<24)
#define SCTLR_EL1_E0E_BIG               (1<<24)
#define SCTLR_EL1_EE_LITTLE             (0<<25)
#define SCTLR_EL1_EE_BIG                (1<<25)

/* Secure Configuration register(EL3) - pg 2022 ARMv8 Architecture reference Manual */
#define SCR_EL3_RW_AARCH64              (1<<10)
#define SCR_EL3_NS                      (1<<0)

/* Hypervisor Configuration register(EL2) - pg 1923 ARMv8 Architecture reference Manual*/
#define HCR_EL2_RW_AARCH64              (1<<31)

/* Saved PSR */
#define SPSR_MASK_EXCEPTIONS            (7 << 6)
#define SPSR_MODE_EL1h                  (5<<0)      /* EL1h -> handler SP chosen as opposed to thread SP(EL0) 
                                                    http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0488c/CHDDGJID.html*/
/* Peripherals Base */
#define PERI_BASE               (0x3F000000)
#define LOCAL_PERI_BASE         (0x40000000)

#define AUX_PERI_BASE           (PERI_BASE + 0x00215000)
#define MINI_UART_BASE          (AUX_PERI_BASE + 0x40)
#define ARM_INT_BASE            (PERI_BASE + 0xB000)
#define SYS_TIMERS_BASE         (PERI_BASE + 0x3000)
#define LOCAL_TIMER_BASE        (PERI_BASE + 0xB400)

/* Interrupt Control Registers */
#define IRQ_EN_1_OFF                    (0x210)
#define IRQ_SYS_TIMER_1_EN              (1<<1)

#define IRQ_BASIC_PENDING_OFF           (0x200)
#define IRQ_BASIC_PENDING_LOCAL_TIMER   (1<<0)

#define IRQ_PENDING_1_OFF               (0x204)
#define IRQ_PENDING_1_SYSTIMER          (1<<1)

#define IRQ_PENDING_2_OFF               (0x208)

#define SYSTIMER_INTR_MASK              (IRQ_SYS_TIMER_1_EN)

/* Below section taken from QA7_rev3.4 pdf */
/* Timers interrupt control registers */
#define CORE0_TIMER_IRQCNTL 0x40000040
#define CORE1_TIMER_IRQCNTL 0x40000044
#define CORE2_TIMER_IRQCNTL 0x40000048
#define CORE3_TIMER_IRQCNTL 0x4000004C

/* Where to route timer interrupt to, IRQ/FIQ
   Setting both the IRQ and FIQ bit gives an FIQ */
#define TIMER0_IRQ 0x01
#define TIMER1_IRQ 0x02
#define TIMER2_IRQ 0x04
#define TIMER3_IRQ 0x08
#define TIMER0_FIQ 0x10
#define TIMER1_FIQ 0x20
#define TIMER2_FIQ 0x40
#define TIMER3_FIQ 0x80

/* Mailbox interrupt control registers */
#define CORE0_MBOX_IRQCNTL 0x40000050
#define CORE1_MBOX_IRQCNTL 0x40000054
#define CORE2_MBOX_IRQCNTL 0x40000058
#define CORE3_MBOX_IRQCNTL 0x4000005C

/* Where to route mailbox interrupt to, IRQ/FIQ
   Setting both the IRQ and FIQ bit gives an FIQ */
#define MBOX0_IRQ 0x01
#define MBOX1_IRQ 0x02
#define MBOX2_IRQ 0x04
#define MBOX3_IRQ 0x08
#define MBOX0_FIQ 0x10
#define MBOX1_FIQ 0x20
#define MBOX2_FIQ 0x40
#define MBOX3_FIQ 0x80

/* IRQ & FIQ source registers */
#define CORE0_IRQ_SOURCE 0x40000060
#define CORE1_IRQ_SOURCE 0x40000064
#define CORE2_IRQ_SOURCE 0x40000068
#define CORE3_IRQ_SOURCE 0x4000006C
#define CORE0_FIQ_SOURCE 0x40000070
#define CORE1_FIQ_SOURCE 0x40000074
#define CORE2_FIQ_SOURCE 0x40000078
#define CORE3_FIQ_SOURCE 0x4000007C

/* Interrupt source bits
   IRQ and FIQ are the same
   GPU bits can be set for one core only */
#define INT_SRC_TIMER0  0x00000001
#define INT_SRC_TIMER1  0x00000002
#define INT_SRC_TIMER2  0x00000004
#define INT_SRC_TIMER3  0x00000008
#define INT_SRC_MBOX0   0x00000010
#define INT_SRC_MBOX1   0x00000020
#define INT_SRC_MBOX2   0x00000040
#define INT_SRC_MBOX3   0x00000080
#define INT_SRC_GPU     0x00000100
#define INT_SRC_PMU     0x00000200

/* Mailbox write-set registers (Write only) */
#define CORE0_MBOX0_SET 0x40000080
#define CORE0_MBOX1_SET 0x40000084
#define CORE0_MBOX2_SET 0x40000088
#define CORE0_MBOX3_SET 0x4000008C
#define CORE1_MBOX0_SET 0x40000090
#define CORE1_MBOX1_SET 0x40000094
#define CORE1_MBOX2_SET 0x40000098
#define CORE1_MBOX3_SET 0x4000009C
#define CORE2_MBOX0_SET 0x400000A0
#define CORE2_MBOX1_SET 0x400000A4
#define CORE2_MBOX2_SET 0x400000A8
#define CORE2_MBOX3_SET 0x400000AC
#define CORE3_MBOX0_SET 0x400000B0
#define CORE3_MBOX1_SET 0x400000B4
#define CORE3_MBOX2_SET 0x400000B8
#define CORE3_MBOX3_SET 0x400000BC

/* Mailbox write-clear registers (Read & Write) */
#define CORE0_MBOX0_RDCLR 0x400000C0
#define CORE0_MBOX1_RDCLR 0x400000C4
#define CORE0_MBOX2_RDCLR 0x400000C8
#define CORE0_MBOX3_RDCLR 0x400000CC
#define CORE1_MBOX0_RDCLR 0x400000D0
#define CORE1_MBOX1_RDCLR 0x400000D4
#define CORE1_MBOX2_RDCLR 0x400000D8
#define CORE1_MBOX3_RDCLR 0x400000DC
#define CORE2_MBOX0_RDCLR 0x400000E0
#define CORE2_MBOX1_RDCLR 0x400000E4
#define CORE2_MBOX2_RDCLR 0x400000E8
#define CORE2_MBOX3_RDCLR 0x400000EC
#define CORE3_MBOX0_RDCLR 0x400000F0
#define CORE3_MBOX1_RDCLR 0x400000F4
#define CORE3_MBOX2_RDCLR 0x400000F8
#define CORE3_MBOX3_RDCLR 0x400000FC
/* QA7_rev3.4 */

#define CORE_TIMER_PRESCALE 0x40000008
/* Divide ratio = 19.2. System uses 19.2MHz crystal, 
 * hence 1MHz effective timer freq
 */
#define CORE_TIMER_PRESCALE_VAL (0x06AAAAAB)

#define CORE_TIMER_INTR_SEL 0x40000024
#define CORE0_TIMER_IRQ_SEL 0x00
#define CORE1_TIMER_IRQ_SEL 0x01
#define CORE2_TIMER_IRQ_SEL 0x02
#define CORE3_TIMER_IRQ_SEL 0x03
#define CORE0_TIMER_FIQ_SEL 0x04
#define CORE1_TIMER_FIQ_SEL 0x05
#define CORE2_TIMER_FIQ_SEL 0x06
#define CORE3_TIMER_FIQ_SEL 0x07

#define LOCAL_TIMER_CTRL            0x40000034
#define LOCAL_TIMER_CTRL_IRQ_EN     (1<<29)
#define LOCAL_TIMER_CTRL_EN         (1<<28)

#define LOCAL_TIMER_WR_CTRL             0x40000038
#define LOCAL_TIMER_WR_CTRL_IRQ_CLR     (1<<31)
#define LOCAL_TIMER_WR_CTRL_RELOAD      (1<<30)
#endif
