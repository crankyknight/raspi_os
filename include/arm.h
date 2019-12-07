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
#define PERI_BASE (0x3F000000)

#define AUX_PERI_BASE           (PERI_BASE + 0x00215000)
#define MINI_UART_BASE          (AUX_PERI_BASE + 0x40)
#define ARM_INT_BASE            (PERI_BASE + 0xB000)
#define SYS_TIMERS_BASE         (PERI_BASE + 0x3000)

/* Interrupt Control Registers */
#define IRQ_EN_1_OFF                (0x210)
#define IRQ_SYS_TIMER_1_EN          (1<<1)
#define IRQ_BASIC_PENDING_OFF       (0x200)
#define IRQ_PENDING_1_OFF           (0x204)
#define IRQ_PENDING_2_OFF           (0x208)
#define IRQ_PENDING_SYSTIMER        (1<<0)

#define SYSTIMER_INTR_MASK          (IRQ_SYS_TIMER_1_EN)

#endif
