#include "types.h"

/*Mini-UART register definitions */
#define AUX_PERI_BASE  (PERI_BASE + 0x00215000)
#define MINI_UART_BASE (AUX_PERI_BASE + 0x40)

typedef struct aux_mini_uart_regs_t{
    reg32 AUX_MU_IO_REG ;
    reg32 AUX_MU_IER_REG;
    reg32 AUX_MU_IIR_REG;
    reg32 AUX_MU_LCR_REG;
    reg32 AUX_MU_MCR_REG;
    reg32 AUX_MU_LSR_REG;
    reg32 AUX_MU_MSR_REG;
    reg32 AUX_MU_SCRATCH;
    reg32 AUX_MU_CNTL_REG;
    reg32 AUX_MU_STAT_REG;
    reg32 AUX_MU_BAUD_REG;
}aux_mini_uart_regs_t;


extern reg32* AUX_ENABLES;
extern aux_mini_uart_regs_t* mini_uart;
extern void uart_init();
extern uint8 uart_read_available();
extern uint8 uart_read();
extern void uart_write(uint8 data);
extern void putc(char *p, char data);
