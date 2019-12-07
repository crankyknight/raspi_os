#ifndef __RASPIOS_TYPES__
#define __RASPIOS_TYPES__
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint32;
typedef unsigned long long uint64;

typedef signed char int8;
typedef signed short int16;
typedef signed int int32;
typedef signed long long int64;

typedef volatile unsigned int reg32;
typedef volatile unsigned long long reg64;

/* Below used to define reserved registers
 * Works as preprocessor runs first */
#define RESERVED :32

#define PERI_BASE (0x3F000000)

#endif /* __RASPIOS_TYPES__ */
