#ifndef _UTILS_H_
#define _UTILS_H_

#include "types.h"
extern void delay(uint32 cycles);
extern int get_core_id();
extern int get_el();
extern void mmio_write(uint32 reg, uint32 data);
extern uint32 mmio_read(uint32 reg);
#endif
