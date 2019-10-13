#include "types.h"

#define GPIO_BASE (PERI_BASE + 0x00200000)
/*GPIO register definitions */
typedef struct gpio_regs_t{
    reg32 GPFSEL1;
    reg32 GPFSEL2;
    reg32 GPFSEL3;
    reg32 GPFSEL4;
    reg32 GPFSEL5;
    reg32 RESERVED;
    reg32 GPSET0;
    reg32 GPSET1;
    reg32 RESERVED;
    reg32 GPCLR0;
    reg32 GPCLR1;
    reg32 RESERVED;
    reg32 GPLEV0;
    reg32 GPLEV1;
    reg32 RESERVED;
    reg32 GPEDS0;
    reg32 GPEDS1;
    reg32 RESERVED;
    reg32 GPREN0;
    reg32 GPREN1;
    reg32 RESERVED;
    reg32 GPFEN0;
    reg32 GPFEN1;
    reg32 RESERVED;
    reg32 GPHEN0;
    reg32 GPHEN1;
    reg32 RESERVED;
    reg32 GPLEN0;
    reg32 GPLEN1;
    reg32 RESERVED;
    reg32 GPAREN0;
    reg32 GPAREN1;
    reg32 RESERVED;
    reg32 GPAFEN0;
    reg32 GPAFEN1;
    reg32 RESERVED;
    reg32 GPPUD;
    reg32 GPPUDCLK0;
    reg32 GPPUDCLK1;
    reg32 RESERVED ;
    reg32 RESERVED;
}gpio_regs_t;

extern gpio_regs_t* gpio;
