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
#endif
