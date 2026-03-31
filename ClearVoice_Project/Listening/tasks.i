# 1 "../Tasks/Tasks.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 344 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../Tasks/Tasks.c" 2
# 1 "../Tasks/tasks.h" 1




# 1 "../SignalProcess\\fftana.h" 1






# 1 "../SignalProcess/long_fft\\extra_ffts.h" 1







# 1 "../Drivers/CMSIS/DSP/Include\\arm_math.h" 1
# 310 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
# 1 "../Drivers/CMSIS/Include\\cmsis_compiler.h" 1
# 28 "../Drivers/CMSIS/Include\\cmsis_compiler.h"
# 1 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 1 3
# 56 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 3
typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long long int int64_t;


typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef signed short int int_least16_t;
typedef signed int int_least32_t;
typedef signed long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long int uint_least64_t;




typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed int int_fast32_t;
typedef signed long long int int_fast64_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long int uint_fast64_t;






typedef signed int intptr_t;
typedef unsigned int uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 29 "../Drivers/CMSIS/Include\\cmsis_compiler.h" 2
# 41 "../Drivers/CMSIS/Include\\cmsis_compiler.h"
# 1 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 1
# 31 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3


# 1 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 1 3
# 42 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__disable_fiq(void) {
  unsigned int cpsr;

  __asm__ __volatile__("mrs %[cpsr], faultmask\n"
                       "cpsid f\n"
                       : [cpsr] "=r"(cpsr));
  return cpsr & 0x1;
# 64 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
}


static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__disable_irq(void) {
  unsigned int cpsr;


  __asm__ __volatile__("mrs %[cpsr], primask\n"
                       "cpsid i\n"
                       : [cpsr] "=r"(cpsr));
  return cpsr & 0x1;
# 91 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
}







static __inline__ void __attribute__((__always_inline__, __nodebug__))
__enable_fiq(void) {

  __asm__ __volatile__("cpsie f");
# 111 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
}


static __inline__ void __attribute__((__always_inline__, __nodebug__))
__enable_irq(void) {

  __asm__ __volatile__("cpsie i");
# 126 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
}

static __inline__ void __attribute__((__always_inline__, __nodebug__)) __force_stores(void) {
    __asm__ __volatile__ ("" : : : "memory", "cc");
}

static void __attribute__((__always_inline__, __nodebug__)) __memory_changed(void) {
    __asm__ __volatile__ ("" : : : "memory", "cc");
}

static void __attribute__((__always_inline__, __nodebug__)) __schedule_barrier(void) {
    __asm__ __volatile__ ("" : : : "memory", "cc");
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
__semihost(int val, const void *ptr) {
  register int v __asm__("r0") = val;
  register const void *p __asm__("r1") = ptr;
  __asm__ __volatile__(


      "bkpt 0xab"
# 162 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\arm_compat.h" 3
      : "+r"(v), "+r"(p)
      :
      : "memory", "cc");
  return v;
}


static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__vfp_status(unsigned int mask, unsigned int flags) {
  unsigned int fpscr;
  __asm__ __volatile__("vmrs %[fpscr], fpscr" : [fpscr] "=r"(fpscr));
  unsigned int set = mask & flags;
  unsigned int clear = mask & ~flags;
  unsigned int toggle = ~mask & flags;
  fpscr |= set;
  fpscr &= ~clear;
  fpscr ^= toggle;
  __asm__ __volatile__("vmsr fpscr, %[fpscr]" : : [fpscr] "r"(fpscr));
  return fpscr;
}
# 34 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 2 3
# 68 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

 struct __attribute__((packed)) T_UINT32 { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

 struct __attribute__((packed, aligned(1))) T_UINT16_WRITE { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

 struct __attribute__((packed, aligned(1))) T_UINT16_READ { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

 struct __attribute__((packed, aligned(1))) T_UINT32_WRITE { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

 struct __attribute__((packed, aligned(1))) T_UINT32_READ { uint32_t v; };
#pragma clang diagnostic pop
# 167 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}
# 197 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
}
# 221 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_PSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, psp" : "=r" (result) );
  return(result);
}
# 293 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
}
# 317 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_MSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, msp" : "=r" (result) );
  return(result);
}
# 347 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
}
# 398 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return(result);
}
# 428 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 471 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_BASEPRI(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, basepri" : "=r" (result) );
  return(result);
}
# 501 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __set_BASEPRI(uint32_t basePri)
{
  __asm volatile ("MSR basepri, %0" : : "r" (basePri) : "memory");
}
# 526 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  __asm volatile ("MSR basepri_max, %0" : : "r" (basePri) : "memory");
}







__attribute__((always_inline)) static __inline uint32_t __get_FAULTMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, faultmask" : "=r" (result) );
  return(result);
}
# 567 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  __asm volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
}
# 901 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  op2 %= 32U;
  if (op2 == 0U)
  {
    return op1;
  }
  return (op1 >> op2) | (op1 << (32U - op2));
}
# 936 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint8_t __CLZ(uint32_t value)
{
# 947 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
  if (value == 0U)
  {
    return 32U;
  }
  return __builtin_clz(value);
}
# 1062 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rrx %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 1077 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint8_t __LDRBT(volatile uint8_t *ptr)
{
  uint32_t result;

  __asm volatile ("ldrbt %0, %1" : "=r" (result) : "Q" (*ptr) );
  return ((uint8_t) result);
}
# 1092 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint16_t __LDRHT(volatile uint16_t *ptr)
{
  uint32_t result;

  __asm volatile ("ldrht %0, %1" : "=r" (result) : "Q" (*ptr) );
  return ((uint16_t) result);
}
# 1107 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __LDRT(volatile uint32_t *ptr)
{
  uint32_t result;

  __asm volatile ("ldrt %0, %1" : "=r" (result) : "Q" (*ptr) );
  return(result);
}
# 1122 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __STRBT(uint8_t value, volatile uint8_t *ptr)
{
  __asm volatile ("strbt %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1134 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __STRHT(uint16_t value, volatile uint16_t *ptr)
{
  __asm volatile ("strht %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1146 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline void __STRT(uint32_t value, volatile uint32_t *ptr)
{
  __asm volatile ("strt %1, %0" : "=Q" (*ptr) : "r" (value) );
}
# 1365 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __SADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __QADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UQADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__((always_inline)) static __inline uint32_t __SSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __QSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __USUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UQSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__((always_inline)) static __inline uint32_t __SADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __QADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UQADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __QSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __USUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UQSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __QASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UQASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __QSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __USAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UQSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __USAD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usad8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __USADA8(uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("usada8 %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}
# 1685 "../Drivers/CMSIS/Include/cmsis_armclang_ltm.h" 3
__attribute__((always_inline)) static __inline uint32_t __UXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("uxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __UXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("sxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SMUAD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuad %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SMUADX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuadx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SMLAD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlad %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SMLADX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smladx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static __inline uint64_t __SMLALD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlald %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static __inline uint64_t __SMLALDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlaldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static __inline uint32_t __SMUSD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SMUSDX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusdx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SMLSD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsd %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static __inline uint32_t __SMLSDX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsdx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static __inline uint64_t __SMLSLD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsld %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static __inline uint64_t __SMLSLDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static __inline uint32_t __SEL (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sel %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline int32_t __QADD( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qadd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static __inline int32_t __QSUB( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qsub %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}







__attribute__((always_inline)) static __inline int32_t __SMMLA (int32_t op1, int32_t op2, int32_t op3)
{
  int32_t result;

  __asm volatile ("smmla %0, %1, %2, %3" : "=r" (result): "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}
# 42 "../Drivers/CMSIS/Include\\cmsis_compiler.h" 2
# 311 "../Drivers/CMSIS/DSP/Include\\arm_math.h" 2
# 321 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
# 1 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 1 3
# 51 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
    typedef unsigned int size_t;






extern __attribute__((nothrow)) void *memcpy(void * __restrict ,
                    const void * __restrict , size_t ) __attribute__((__nonnull__(1,2)));






extern __attribute__((nothrow)) void *memmove(void * ,
                    const void * , size_t ) __attribute__((__nonnull__(1,2)));
# 77 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) char *strcpy(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((nothrow)) char *strncpy(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 93 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) char *strcat(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((nothrow)) char *strncat(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 117 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) int memcmp(const void * , const void * , size_t ) __attribute__((__nonnull__(1,2)));







extern __attribute__((nothrow)) int strcmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));






extern __attribute__((nothrow)) int strncmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 141 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) int strcasecmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));







extern __attribute__((nothrow)) int strncasecmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 158 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) int strcoll(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 169 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) size_t strxfrm(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 193 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) void *memchr(const void * , int , size_t ) __attribute__((__nonnull__(1)));
# 209 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) char *strchr(const char * , int ) __attribute__((__nonnull__(1)));
# 218 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) size_t strcspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 232 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) char *strpbrk(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 247 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) char *strrchr(const char * , int ) __attribute__((__nonnull__(1)));
# 257 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) size_t strspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 270 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) char *strstr(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 280 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) char *strtok(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(2)));
extern __attribute__((nothrow)) char *_strtok_r(char * , const char * , char ** ) __attribute__((__nonnull__(2,3)));
# 321 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) void *memset(void * , int , size_t ) __attribute__((__nonnull__(1)));





extern __attribute__((nothrow)) char *strerror(int );







extern __attribute__((nothrow)) size_t strlen(const char * ) __attribute__((__nonnull__(1)));






extern __attribute__((nothrow)) size_t strlcpy(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 362 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) size_t strlcat(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 388 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((nothrow)) void _membitcpybl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitcpybb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitcpyhl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitcpyhb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitcpywl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitcpywb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitmovebl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitmovebb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitmovehl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitmovehb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitmovewl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) void _membitmovewb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
# 322 "../Drivers/CMSIS/DSP/Include\\arm_math.h" 2
# 1 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 1 3
# 139 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double , double );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float , float );







extern __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float );
extern __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double );



static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}



static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}



static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);
}
static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);
}





static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}



static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}



static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
static __inline __attribute__((nothrow)) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
# 248 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
  typedef float float_t;
  typedef double double_t;
# 264 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern const int math_errhandling;







extern __attribute__((nothrow)) double acos(double );



extern __attribute__((nothrow)) double asin(double );





extern __attribute__((nothrow)) __attribute__((const)) double atan(double );



extern __attribute__((nothrow)) double atan2(double , double );





extern __attribute__((nothrow)) double cos(double );




extern __attribute__((nothrow)) double sin(double );





extern void __use_accurate_range_reduction(void);



extern __attribute__((nothrow)) double tan(double );





extern __attribute__((nothrow)) double cosh(double );




extern __attribute__((nothrow)) double sinh(double );






extern __attribute__((nothrow)) __attribute__((const)) double tanh(double );



extern __attribute__((nothrow)) double exp(double );






extern __attribute__((nothrow)) double frexp(double , int * ) __attribute__((__nonnull__(2)));







extern __attribute__((nothrow)) double ldexp(double , int );




extern __attribute__((nothrow)) double log(double );





extern __attribute__((nothrow)) double log10(double );



extern __attribute__((nothrow)) double modf(double , double * ) __attribute__((__nonnull__(2)));





extern __attribute__((nothrow)) double pow(double , double );






extern __attribute__((nothrow)) double sqrt(double );







    static __inline double _sqrt(double __x) { return sqrt(__x); }




    static __inline float _sqrtf(float __x) { return (float)sqrt(__x); }







extern __attribute__((nothrow)) __attribute__((const)) double ceil(double );


extern __attribute__((nothrow)) __attribute__((const)) double fabs(double );



extern __attribute__((nothrow)) __attribute__((const)) double floor(double );



extern __attribute__((nothrow)) double fmod(double , double );
# 425 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((nothrow)) double acosh(double );



extern __attribute__((nothrow)) double asinh(double );



extern __attribute__((nothrow)) double atanh(double );



extern __attribute__((nothrow)) double cbrt(double );



static __inline __attribute__((nothrow)) __attribute__((const)) double copysign(double __x, double __y)



{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
static __inline __attribute__((nothrow)) __attribute__((const)) float copysignf(float __x, float __y)



{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __attribute__((nothrow)) double erf(double );



extern __attribute__((nothrow)) double erfc(double );



extern __attribute__((nothrow)) double expm1(double );
# 491 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((nothrow)) double hypot(double , double );






extern __attribute__((nothrow)) int ilogb(double );



extern __attribute__((nothrow)) int ilogbf(float );



extern __attribute__((nothrow)) int ilogbl(long double );
# 604 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((nothrow)) double lgamma (double );




extern __attribute__((nothrow)) double log1p(double );



extern __attribute__((nothrow)) double logb(double );



extern __attribute__((nothrow)) float logbf(float );



extern __attribute__((nothrow)) long double logbl(long double );



extern __attribute__((nothrow)) double nextafter(double , double );




extern __attribute__((nothrow)) float nextafterf(float , float );




extern __attribute__((nothrow)) long double nextafterl(long double , long double );




extern __attribute__((nothrow)) double nexttoward(double , long double );




extern __attribute__((nothrow)) float nexttowardf(float , long double );




extern __attribute__((nothrow)) long double nexttowardl(long double , long double );




extern __attribute__((nothrow)) double remainder(double , double );



extern __attribute__((nothrow)) __attribute__((const)) double rint(double );



extern __attribute__((nothrow)) double scalbln(double , long int );



extern __attribute__((nothrow)) float scalblnf(float , long int );



extern __attribute__((nothrow)) long double scalblnl(long double , long int );



extern __attribute__((nothrow)) double scalbn(double , int );



extern __attribute__((nothrow)) float scalbnf(float , int );



extern __attribute__((nothrow)) long double scalbnl(long double , int );
# 698 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((nothrow)) __attribute__((const)) float _fabsf(float);
static __inline __attribute__((nothrow)) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __attribute__((nothrow)) float sinf(float );
extern __attribute__((nothrow)) float cosf(float );
extern __attribute__((nothrow)) float tanf(float );
extern __attribute__((nothrow)) float acosf(float );
extern __attribute__((nothrow)) float asinf(float );
extern __attribute__((nothrow)) float atanf(float );
extern __attribute__((nothrow)) float atan2f(float , float );
extern __attribute__((nothrow)) float sinhf(float );
extern __attribute__((nothrow)) float coshf(float );
extern __attribute__((nothrow)) float tanhf(float );
extern __attribute__((nothrow)) float expf(float );
extern __attribute__((nothrow)) float logf(float );
extern __attribute__((nothrow)) float log10f(float );
extern __attribute__((nothrow)) float powf(float , float );
extern __attribute__((nothrow)) float sqrtf(float );
extern __attribute__((nothrow)) float ldexpf(float , int );
extern __attribute__((nothrow)) float frexpf(float , int * ) __attribute__((__nonnull__(2)));
extern __attribute__((nothrow)) __attribute__((const)) float ceilf(float );
extern __attribute__((nothrow)) __attribute__((const)) float floorf(float );
extern __attribute__((nothrow)) float fmodf(float , float );
extern __attribute__((nothrow)) float modff(float , float * ) __attribute__((__nonnull__(2)));
# 738 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
__attribute__((nothrow)) long double acosl(long double );
__attribute__((nothrow)) long double asinl(long double );
__attribute__((nothrow)) long double atanl(long double );
__attribute__((nothrow)) long double atan2l(long double , long double );
__attribute__((nothrow)) long double ceill(long double );
__attribute__((nothrow)) long double cosl(long double );
__attribute__((nothrow)) long double coshl(long double );
__attribute__((nothrow)) long double expl(long double );
__attribute__((nothrow)) long double fabsl(long double );
__attribute__((nothrow)) long double floorl(long double );
__attribute__((nothrow)) long double fmodl(long double , long double );
__attribute__((nothrow)) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__attribute__((nothrow)) long double ldexpl(long double , int );
__attribute__((nothrow)) long double logl(long double );
__attribute__((nothrow)) long double log10l(long double );
__attribute__((nothrow)) long double modfl(long double , long double * ) __attribute__((__nonnull__(2)));
__attribute__((nothrow)) long double powl(long double , long double );
__attribute__((nothrow)) long double sinl(long double );
__attribute__((nothrow)) long double sinhl(long double );
__attribute__((nothrow)) long double sqrtl(long double );
__attribute__((nothrow)) long double tanl(long double );
__attribute__((nothrow)) long double tanhl(long double );






extern __attribute__((nothrow)) float acoshf(float );
__attribute__((nothrow)) long double acoshl(long double );
extern __attribute__((nothrow)) float asinhf(float );
__attribute__((nothrow)) long double asinhl(long double );
extern __attribute__((nothrow)) float atanhf(float );
__attribute__((nothrow)) long double atanhl(long double );
__attribute__((nothrow)) long double copysignl(long double , long double );
extern __attribute__((nothrow)) float cbrtf(float );
__attribute__((nothrow)) long double cbrtl(long double );
extern __attribute__((nothrow)) float erff(float );
__attribute__((nothrow)) long double erfl(long double );
extern __attribute__((nothrow)) float erfcf(float );
__attribute__((nothrow)) long double erfcl(long double );
extern __attribute__((nothrow)) float expm1f(float );
__attribute__((nothrow)) long double expm1l(long double );
extern __attribute__((nothrow)) float log1pf(float );
__attribute__((nothrow)) long double log1pl(long double );
extern __attribute__((nothrow)) float hypotf(float , float );
__attribute__((nothrow)) long double hypotl(long double , long double );
extern __attribute__((nothrow)) float lgammaf(float );
__attribute__((nothrow)) long double lgammal(long double );
extern __attribute__((nothrow)) float remainderf(float , float );
__attribute__((nothrow)) long double remainderl(long double , long double );
extern __attribute__((nothrow)) float rintf(float );
__attribute__((nothrow)) long double rintl(long double );







extern __attribute__((nothrow)) double exp2(double );
extern __attribute__((nothrow)) float exp2f(float );
__attribute__((nothrow)) long double exp2l(long double );
extern __attribute__((nothrow)) double fdim(double , double );
extern __attribute__((nothrow)) float fdimf(float , float );
__attribute__((nothrow)) long double fdiml(long double , long double );
# 813 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((nothrow)) double fma(double , double , double );
extern __attribute__((nothrow)) float fmaf(float , float , float );

static __inline __attribute__((nothrow)) long double fmal(long double __x, long double __y, long double __z) { return (long double)fma((double)__x, (double)__y, (double)__z); }


extern __attribute__((nothrow)) __attribute__((const)) double fmax(double , double );
extern __attribute__((nothrow)) __attribute__((const)) float fmaxf(float , float );
__attribute__((nothrow)) long double fmaxl(long double , long double );
extern __attribute__((nothrow)) __attribute__((const)) double fmin(double , double );
extern __attribute__((nothrow)) __attribute__((const)) float fminf(float , float );
__attribute__((nothrow)) long double fminl(long double , long double );
extern __attribute__((nothrow)) double log2(double );
extern __attribute__((nothrow)) float log2f(float );
__attribute__((nothrow)) long double log2l(long double );
extern __attribute__((nothrow)) long lrint(double );
extern __attribute__((nothrow)) long lrintf(float );

static __inline __attribute__((nothrow)) long lrintl(long double __x) { return lrint((double)__x); }


extern __attribute__((nothrow)) long long llrint(double );
extern __attribute__((nothrow)) long long llrintf(float );

static __inline __attribute__((nothrow)) long long llrintl(long double __x) { return llrint((double)__x); }


extern __attribute__((nothrow)) long lround(double );
extern __attribute__((nothrow)) long lroundf(float );

static __inline __attribute__((nothrow)) long lroundl(long double __x) { return lround((double)__x); }


extern __attribute__((nothrow)) long long llround(double );
extern __attribute__((nothrow)) long long llroundf(float );

static __inline __attribute__((nothrow)) long long llroundl(long double __x) { return llround((double)__x); }


extern __attribute__((nothrow)) __attribute__((const)) double nan(const char * );
extern __attribute__((nothrow)) __attribute__((const)) float nanf(const char * );

static __inline __attribute__((nothrow)) __attribute__((const)) long double nanl(const char *__t) { return (long double)nan(__t); }
# 866 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\math.h" 3
extern __attribute__((nothrow)) __attribute__((const)) double nearbyint(double );
extern __attribute__((nothrow)) __attribute__((const)) float nearbyintf(float );
__attribute__((nothrow)) long double nearbyintl(long double );
extern __attribute__((nothrow)) double remquo(double , double , int * );
extern __attribute__((nothrow)) float remquof(float , float , int * );

static __inline long double remquol(long double __x, long double __y, int *__q) { return (long double)remquo((double)__x, (double)__y, __q); }


extern __attribute__((nothrow)) __attribute__((const)) double round(double );
extern __attribute__((nothrow)) __attribute__((const)) float roundf(float );
__attribute__((nothrow)) long double roundl(long double );
extern __attribute__((nothrow)) double tgamma(double );
extern __attribute__((nothrow)) float tgammaf(float );
__attribute__((nothrow)) long double tgammal(long double );
extern __attribute__((nothrow)) __attribute__((const)) double trunc(double );
extern __attribute__((nothrow)) __attribute__((const)) float truncf(float );
__attribute__((nothrow)) long double truncl(long double );
# 323 "../Drivers/CMSIS/DSP/Include\\arm_math.h" 2
# 1 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\float.h" 1 3
# 130 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\float.h" 3
unsigned _controlfp(unsigned, unsigned);
unsigned _clearfp(void);
unsigned _statusfp(void);
# 324 "../Drivers/CMSIS/DSP/Include\\arm_math.h" 2
# 375 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  typedef enum
  {
    ARM_MATH_SUCCESS = 0,
    ARM_MATH_ARGUMENT_ERROR = -1,
    ARM_MATH_LENGTH_ERROR = -2,
    ARM_MATH_SIZE_MISMATCH = -3,
    ARM_MATH_NANINF = -4,
    ARM_MATH_SINGULAR = -5,
    ARM_MATH_TEST_FAILURE = -6
  } arm_status;




  typedef int8_t q7_t;




  typedef int16_t q15_t;




  typedef int32_t q31_t;




  typedef int64_t q63_t;




  typedef float float32_t;




  typedef double float64_t;
# 454 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
__attribute__((always_inline)) static __inline q31_t read_q15x2 (
  q15_t * pQ15)
{
  q31_t val;

  memcpy (&val, pQ15, 4);

  return (val);
}






__attribute__((always_inline)) static __inline q31_t read_q15x2_ia (
  q15_t ** pQ15)
{
  q31_t val;

  memcpy (&val, *pQ15, 4);
  *pQ15 += 2;

  return (val);
}






__attribute__((always_inline)) static __inline q31_t read_q15x2_da (
  q15_t ** pQ15)
{
  q31_t val;

  memcpy (&val, *pQ15, 4);
  *pQ15 -= 2;

  return (val);
}







__attribute__((always_inline)) static __inline void write_q15x2_ia (
  q15_t ** pQ15,
  q31_t value)
{
  q31_t val = value;

  memcpy (*pQ15, &val, 4);
  *pQ15 += 2;
}







__attribute__((always_inline)) static __inline void write_q15x2 (
  q15_t * pQ15,
  q31_t value)
{
  q31_t val = value;

  memcpy (pQ15, &val, 4);
}







__attribute__((always_inline)) static __inline q31_t read_q7x4_ia (
  q7_t ** pQ7)
{
  q31_t val;

  memcpy (&val, *pQ7, 4);
  *pQ7 += 4;

  return (val);
}






__attribute__((always_inline)) static __inline q31_t read_q7x4_da (
  q7_t ** pQ7)
{
  q31_t val;

  memcpy (&val, *pQ7, 4);
  *pQ7 -= 4;

  return (val);
}







__attribute__((always_inline)) static __inline void write_q7x4_ia (
  q7_t ** pQ7,
  q31_t value)
{
  q31_t val = value;

  memcpy (*pQ7, &val, 4);
  *pQ7 += 4;
}
# 670 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline q31_t clip_q63_to_q31(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFFFFFF ^ ((q31_t) (x >> 63)))) : (q31_t) x;
  }




  __attribute__((always_inline)) static __inline q15_t clip_q63_to_q15(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFF ^ ((q15_t) (x >> 63)))) : (q15_t) (x >> 15);
  }




  __attribute__((always_inline)) static __inline q7_t clip_q31_to_q7(
  q31_t x)
  {
    return ((q31_t) (x >> 24) != ((q31_t) x >> 23)) ?
      ((0x7F ^ ((q7_t) (x >> 31)))) : (q7_t) x;
  }




  __attribute__((always_inline)) static __inline q15_t clip_q31_to_q15(
  q31_t x)
  {
    return ((q31_t) (x >> 16) != ((q31_t) x >> 15)) ?
      ((0x7FFF ^ ((q15_t) (x >> 31)))) : (q15_t) x;
  }




  __attribute__((always_inline)) static __inline q63_t mult32x64(
  q63_t x,
  q31_t y)
  {
    return ((((q63_t) (x & 0x00000000FFFFFFFF) * y) >> 32) +
            (((q63_t) (x >> 32) * y) ) );
  }




  __attribute__((always_inline)) static __inline uint32_t arm_recip_q31(
        q31_t in,
        q31_t * dst,
  const q31_t * pRecipTable)
  {
    q31_t out;
    uint32_t tempVal;
    uint32_t index, i;
    uint32_t signBits;

    if (in > 0)
    {
      signBits = ((uint32_t) (__CLZ( in) - 1));
    }
    else
    {
      signBits = ((uint32_t) (__CLZ(-in) - 1));
    }


    in = (in << signBits);


    index = (uint32_t)(in >> 24);
    index = (index & 0x0000003F);


    out = pRecipTable[index];



    for (i = 0U; i < 2U; i++)
    {
      tempVal = (uint32_t) (((q63_t) in * out) >> 31);
      tempVal = 0x7FFFFFFFu - tempVal;


      out = clip_q63_to_q31(((q63_t) out * tempVal) >> 30);
    }


    *dst = out;


    return (signBits + 1U);
  }





  __attribute__((always_inline)) static __inline uint32_t arm_recip_q15(
        q15_t in,
        q15_t * dst,
  const q15_t * pRecipTable)
  {
    q15_t out = 0;
    uint32_t tempVal = 0;
    uint32_t index = 0, i = 0;
    uint32_t signBits = 0;

    if (in > 0)
    {
      signBits = ((uint32_t)(__CLZ( in) - 17));
    }
    else
    {
      signBits = ((uint32_t)(__CLZ(-in) - 17));
    }


    in = (in << signBits);


    index = (uint32_t)(in >> 8);
    index = (index & 0x0000003F);


    out = pRecipTable[index];



    for (i = 0U; i < 2U; i++)
    {
      tempVal = (uint32_t) (((q31_t) in * out) >> 15);
      tempVal = 0x7FFFu - tempVal;

      out = (q15_t) (((q31_t) out * tempVal) >> 14);

    }


    *dst = out;


    return (signBits + 1);
  }
# 1197 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  typedef struct
  {
          uint16_t numTaps;
          q7_t *pState;
    const q7_t *pCoeffs;
  } arm_fir_instance_q7;




  typedef struct
  {
          uint16_t numTaps;
          q15_t *pState;
    const q15_t *pCoeffs;
  } arm_fir_instance_q15;




  typedef struct
  {
          uint16_t numTaps;
          q31_t *pState;
    const q31_t *pCoeffs;
  } arm_fir_instance_q31;




  typedef struct
  {
          uint16_t numTaps;
          float32_t *pState;
    const float32_t *pCoeffs;
  } arm_fir_instance_f32;
# 1241 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_q7(
  const arm_fir_instance_q7 * S,
  const q7_t * pSrc,
        q7_t * pDst,
        uint32_t blockSize);
# 1255 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_init_q7(
        arm_fir_instance_q7 * S,
        uint16_t numTaps,
  const q7_t * pCoeffs,
        q7_t * pState,
        uint32_t blockSize);
# 1269 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_q15(
  const arm_fir_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 1282 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_fast_q15(
  const arm_fir_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 1299 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_fir_init_q15(
        arm_fir_instance_q15 * S,
        uint16_t numTaps,
  const q15_t * pCoeffs,
        q15_t * pState,
        uint32_t blockSize);
# 1313 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_q31(
  const arm_fir_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 1326 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_fast_q31(
  const arm_fir_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 1340 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_init_q31(
        arm_fir_instance_q31 * S,
        uint16_t numTaps,
  const q31_t * pCoeffs,
        q31_t * pState,
        uint32_t blockSize);
# 1354 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_f32(
  const arm_fir_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 1368 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_init_f32(
        arm_fir_instance_f32 * S,
        uint16_t numTaps,
  const float32_t * pCoeffs,
        float32_t * pState,
        uint32_t blockSize);




  typedef struct
  {
          int8_t numStages;
          q15_t *pState;
    const q15_t *pCoeffs;
          int8_t postShift;
  } arm_biquad_casd_df1_inst_q15;




  typedef struct
  {
          uint32_t numStages;
          q31_t *pState;
    const q31_t *pCoeffs;
          uint8_t postShift;
  } arm_biquad_casd_df1_inst_q31;




  typedef struct
  {
          uint32_t numStages;
          float32_t *pState;
    const float32_t *pCoeffs;
  } arm_biquad_casd_df1_inst_f32;
# 1414 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df1_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 1428 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df1_init_q15(
        arm_biquad_casd_df1_inst_q15 * S,
        uint8_t numStages,
  const q15_t * pCoeffs,
        q15_t * pState,
        int8_t postShift);
# 1442 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df1_fast_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 1455 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df1_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 1468 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df1_fast_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 1482 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df1_init_q31(
        arm_biquad_casd_df1_inst_q31 * S,
        uint8_t numStages,
  const q31_t * pCoeffs,
        q31_t * pState,
        int8_t postShift);
# 1496 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df1_f32(
  const arm_biquad_casd_df1_inst_f32 * S,
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 1509 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df1_init_f32(
        arm_biquad_casd_df1_inst_f32 * S,
        uint8_t numStages,
  const float32_t * pCoeffs,
        float32_t * pState);




  typedef struct
  {
    uint16_t numRows;
    uint16_t numCols;
    float32_t *pData;
  } arm_matrix_instance_f32;





  typedef struct
  {
    uint16_t numRows;
    uint16_t numCols;
    float64_t *pData;
  } arm_matrix_instance_f64;




  typedef struct
  {
    uint16_t numRows;
    uint16_t numCols;
    q15_t *pData;
  } arm_matrix_instance_q15;




  typedef struct
  {
    uint16_t numRows;
    uint16_t numCols;
    q31_t *pData;
  } arm_matrix_instance_q31;
# 1564 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_add_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
        arm_matrix_instance_f32 * pDst);
# 1577 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_add_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
        arm_matrix_instance_q15 * pDst);
# 1590 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_add_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
        arm_matrix_instance_q31 * pDst);
# 1603 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_cmplx_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
        arm_matrix_instance_f32 * pDst);
# 1616 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_cmplx_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
        arm_matrix_instance_q15 * pDst,
        q15_t * pScratch);
# 1630 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_cmplx_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
        arm_matrix_instance_q31 * pDst);
# 1642 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_trans_f32(
  const arm_matrix_instance_f32 * pSrc,
        arm_matrix_instance_f32 * pDst);
# 1653 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_trans_q15(
  const arm_matrix_instance_q15 * pSrc,
        arm_matrix_instance_q15 * pDst);
# 1664 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_trans_q31(
  const arm_matrix_instance_q31 * pSrc,
        arm_matrix_instance_q31 * pDst);
# 1676 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
        arm_matrix_instance_f32 * pDst);
# 1690 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
        arm_matrix_instance_q15 * pDst,
        q15_t * pState);
# 1705 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_mult_fast_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
        arm_matrix_instance_q15 * pDst,
        q15_t * pState);
# 1719 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
        arm_matrix_instance_q31 * pDst);
# 1732 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_mult_fast_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
        arm_matrix_instance_q31 * pDst);
# 1745 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_sub_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
        arm_matrix_instance_f32 * pDst);
# 1758 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_sub_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
        arm_matrix_instance_q15 * pDst);
# 1771 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_sub_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
        arm_matrix_instance_q31 * pDst);
# 1784 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_scale_f32(
  const arm_matrix_instance_f32 * pSrc,
        float32_t scale,
        arm_matrix_instance_f32 * pDst);
# 1798 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_scale_q15(
  const arm_matrix_instance_q15 * pSrc,
        q15_t scaleFract,
        int32_t shift,
        arm_matrix_instance_q15 * pDst);
# 1813 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_mat_scale_q31(
  const arm_matrix_instance_q31 * pSrc,
        q31_t scaleFract,
        int32_t shift,
        arm_matrix_instance_q31 * pDst);
# 1826 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
void arm_mat_init_q31(
        arm_matrix_instance_q31 * S,
        uint16_t nRows,
        uint16_t nColumns,
        q31_t * pData);
# 1839 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
void arm_mat_init_q15(
        arm_matrix_instance_q15 * S,
        uint16_t nRows,
        uint16_t nColumns,
        q15_t * pData);
# 1852 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
void arm_mat_init_f32(
        arm_matrix_instance_f32 * S,
        uint16_t nRows,
        uint16_t nColumns,
        float32_t * pData);





  typedef struct
  {
          q15_t A0;




          q31_t A1;

          q15_t state[3];
          q15_t Kp;
          q15_t Ki;
          q15_t Kd;
  } arm_pid_instance_q15;




  typedef struct
  {
          q31_t A0;
          q31_t A1;
          q31_t A2;
          q31_t state[3];
          q31_t Kp;
          q31_t Ki;
          q31_t Kd;
  } arm_pid_instance_q31;




  typedef struct
  {
          float32_t A0;
          float32_t A1;
          float32_t A2;
          float32_t state[3];
          float32_t Kp;
          float32_t Ki;
          float32_t Kd;
  } arm_pid_instance_f32;
# 1912 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_pid_init_f32(
        arm_pid_instance_f32 * S,
        int32_t resetStateFlag);






  void arm_pid_reset_f32(
        arm_pid_instance_f32 * S);







  void arm_pid_init_q31(
        arm_pid_instance_q31 * S,
        int32_t resetStateFlag);







  void arm_pid_reset_q31(
        arm_pid_instance_q31 * S);







  void arm_pid_init_q15(
        arm_pid_instance_q15 * S,
        int32_t resetStateFlag);






  void arm_pid_reset_q15(
        arm_pid_instance_q15 * S);





  typedef struct
  {
          uint32_t nValues;
          float32_t x1;
          float32_t xSpacing;
          float32_t *pYData;
  } arm_linear_interp_instance_f32;




  typedef struct
  {
          uint16_t numRows;
          uint16_t numCols;
          float32_t *pData;
  } arm_bilinear_interp_instance_f32;




  typedef struct
  {
          uint16_t numRows;
          uint16_t numCols;
          q31_t *pData;
  } arm_bilinear_interp_instance_q31;




  typedef struct
  {
          uint16_t numRows;
          uint16_t numCols;
          q15_t *pData;
  } arm_bilinear_interp_instance_q15;




  typedef struct
  {
          uint16_t numRows;
          uint16_t numCols;
          q7_t *pData;
  } arm_bilinear_interp_instance_q7;
# 2021 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_mult_q7(
  const q7_t * pSrcA,
  const q7_t * pSrcB,
        q7_t * pDst,
        uint32_t blockSize);
# 2035 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_mult_q15(
  const q15_t * pSrcA,
  const q15_t * pSrcB,
        q15_t * pDst,
        uint32_t blockSize);
# 2049 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_mult_q31(
  const q31_t * pSrcA,
  const q31_t * pSrcB,
        q31_t * pDst,
        uint32_t blockSize);
# 2063 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_mult_f32(
  const float32_t * pSrcA,
  const float32_t * pSrcB,
        float32_t * pDst,
        uint32_t blockSize);





  typedef struct
  {
          uint16_t fftLen;
          uint8_t ifftFlag;
          uint8_t bitReverseFlag;
    const q15_t *pTwiddle;
    const uint16_t *pBitRevTable;
          uint16_t twidCoefModifier;
          uint16_t bitRevFactor;
  } arm_cfft_radix2_instance_q15;


  arm_status arm_cfft_radix2_init_q15(
        arm_cfft_radix2_instance_q15 * S,
        uint16_t fftLen,
        uint8_t ifftFlag,
        uint8_t bitReverseFlag);


  void arm_cfft_radix2_q15(
  const arm_cfft_radix2_instance_q15 * S,
        q15_t * pSrc);





  typedef struct
  {
          uint16_t fftLen;
          uint8_t ifftFlag;
          uint8_t bitReverseFlag;
    const q15_t *pTwiddle;
    const uint16_t *pBitRevTable;
          uint16_t twidCoefModifier;
          uint16_t bitRevFactor;
  } arm_cfft_radix4_instance_q15;


  arm_status arm_cfft_radix4_init_q15(
        arm_cfft_radix4_instance_q15 * S,
        uint16_t fftLen,
        uint8_t ifftFlag,
        uint8_t bitReverseFlag);


  void arm_cfft_radix4_q15(
  const arm_cfft_radix4_instance_q15 * S,
        q15_t * pSrc);




  typedef struct
  {
          uint16_t fftLen;
          uint8_t ifftFlag;
          uint8_t bitReverseFlag;
    const q31_t *pTwiddle;
    const uint16_t *pBitRevTable;
          uint16_t twidCoefModifier;
          uint16_t bitRevFactor;
  } arm_cfft_radix2_instance_q31;


  arm_status arm_cfft_radix2_init_q31(
        arm_cfft_radix2_instance_q31 * S,
        uint16_t fftLen,
        uint8_t ifftFlag,
        uint8_t bitReverseFlag);


  void arm_cfft_radix2_q31(
  const arm_cfft_radix2_instance_q31 * S,
        q31_t * pSrc);




  typedef struct
  {
          uint16_t fftLen;
          uint8_t ifftFlag;
          uint8_t bitReverseFlag;
    const q31_t *pTwiddle;
    const uint16_t *pBitRevTable;
          uint16_t twidCoefModifier;
          uint16_t bitRevFactor;
  } arm_cfft_radix4_instance_q31;


  void arm_cfft_radix4_q31(
  const arm_cfft_radix4_instance_q31 * S,
        q31_t * pSrc);


  arm_status arm_cfft_radix4_init_q31(
        arm_cfft_radix4_instance_q31 * S,
        uint16_t fftLen,
        uint8_t ifftFlag,
        uint8_t bitReverseFlag);




  typedef struct
  {
          uint16_t fftLen;
          uint8_t ifftFlag;
          uint8_t bitReverseFlag;
    const float32_t *pTwiddle;
    const uint16_t *pBitRevTable;
          uint16_t twidCoefModifier;
          uint16_t bitRevFactor;
          float32_t onebyfftLen;
  } arm_cfft_radix2_instance_f32;


  arm_status arm_cfft_radix2_init_f32(
        arm_cfft_radix2_instance_f32 * S,
        uint16_t fftLen,
        uint8_t ifftFlag,
        uint8_t bitReverseFlag);


  void arm_cfft_radix2_f32(
  const arm_cfft_radix2_instance_f32 * S,
        float32_t * pSrc);




  typedef struct
  {
          uint16_t fftLen;
          uint8_t ifftFlag;
          uint8_t bitReverseFlag;
    const float32_t *pTwiddle;
    const uint16_t *pBitRevTable;
          uint16_t twidCoefModifier;
          uint16_t bitRevFactor;
          float32_t onebyfftLen;
  } arm_cfft_radix4_instance_f32;


  arm_status arm_cfft_radix4_init_f32(
        arm_cfft_radix4_instance_f32 * S,
        uint16_t fftLen,
        uint8_t ifftFlag,
        uint8_t bitReverseFlag);


  void arm_cfft_radix4_f32(
  const arm_cfft_radix4_instance_f32 * S,
        float32_t * pSrc);




  typedef struct
  {
          uint16_t fftLen;
    const q15_t *pTwiddle;
    const uint16_t *pBitRevTable;
          uint16_t bitRevLength;
  } arm_cfft_instance_q15;

void arm_cfft_q15(
    const arm_cfft_instance_q15 * S,
          q15_t * p1,
          uint8_t ifftFlag,
          uint8_t bitReverseFlag);




  typedef struct
  {
          uint16_t fftLen;
    const q31_t *pTwiddle;
    const uint16_t *pBitRevTable;
          uint16_t bitRevLength;
  } arm_cfft_instance_q31;

void arm_cfft_q31(
    const arm_cfft_instance_q31 * S,
          q31_t * p1,
          uint8_t ifftFlag,
          uint8_t bitReverseFlag);




  typedef struct
  {
          uint16_t fftLen;
    const float32_t *pTwiddle;
    const uint16_t *pBitRevTable;
          uint16_t bitRevLength;
  } arm_cfft_instance_f32;

  void arm_cfft_f32(
  const arm_cfft_instance_f32 * S,
        float32_t * p1,
        uint8_t ifftFlag,
        uint8_t bitReverseFlag);




  typedef struct
  {
          uint32_t fftLenReal;
          uint8_t ifftFlagR;
          uint8_t bitReverseFlagR;
          uint32_t twidCoefRModifier;
    const q15_t *pTwiddleAReal;
    const q15_t *pTwiddleBReal;
    const arm_cfft_instance_q15 *pCfft;
  } arm_rfft_instance_q15;

  arm_status arm_rfft_init_q15(
        arm_rfft_instance_q15 * S,
        uint32_t fftLenReal,
        uint32_t ifftFlagR,
        uint32_t bitReverseFlag);

  void arm_rfft_q15(
  const arm_rfft_instance_q15 * S,
        q15_t * pSrc,
        q15_t * pDst);




  typedef struct
  {
          uint32_t fftLenReal;
          uint8_t ifftFlagR;
          uint8_t bitReverseFlagR;
          uint32_t twidCoefRModifier;
    const q31_t *pTwiddleAReal;
    const q31_t *pTwiddleBReal;
    const arm_cfft_instance_q31 *pCfft;
  } arm_rfft_instance_q31;

  arm_status arm_rfft_init_q31(
        arm_rfft_instance_q31 * S,
        uint32_t fftLenReal,
        uint32_t ifftFlagR,
        uint32_t bitReverseFlag);

  void arm_rfft_q31(
  const arm_rfft_instance_q31 * S,
        q31_t * pSrc,
        q31_t * pDst);




  typedef struct
  {
          uint32_t fftLenReal;
          uint16_t fftLenBy2;
          uint8_t ifftFlagR;
          uint8_t bitReverseFlagR;
          uint32_t twidCoefRModifier;
    const float32_t *pTwiddleAReal;
    const float32_t *pTwiddleBReal;
          arm_cfft_radix4_instance_f32 *pCfft;
  } arm_rfft_instance_f32;

  arm_status arm_rfft_init_f32(
        arm_rfft_instance_f32 * S,
        arm_cfft_radix4_instance_f32 * S_CFFT,
        uint32_t fftLenReal,
        uint32_t ifftFlagR,
        uint32_t bitReverseFlag);

  void arm_rfft_f32(
  const arm_rfft_instance_f32 * S,
        float32_t * pSrc,
        float32_t * pDst);




typedef struct
  {
          arm_cfft_instance_f32 Sint;
          uint16_t fftLenRFFT;
    const float32_t * pTwiddleRFFT;
  } arm_rfft_fast_instance_f32 ;

arm_status arm_rfft_fast_init_f32 (
         arm_rfft_fast_instance_f32 * S,
         uint16_t fftLen);

arm_status arm_rfft_32_fast_init_f32 ( arm_rfft_fast_instance_f32 * S );

arm_status arm_rfft_64_fast_init_f32 ( arm_rfft_fast_instance_f32 * S );

arm_status arm_rfft_128_fast_init_f32 ( arm_rfft_fast_instance_f32 * S );

arm_status arm_rfft_256_fast_init_f32 ( arm_rfft_fast_instance_f32 * S );

arm_status arm_rfft_512_fast_init_f32 ( arm_rfft_fast_instance_f32 * S );

arm_status arm_rfft_1024_fast_init_f32 ( arm_rfft_fast_instance_f32 * S );

arm_status arm_rfft_2048_fast_init_f32 ( arm_rfft_fast_instance_f32 * S );

arm_status arm_rfft_4096_fast_init_f32 ( arm_rfft_fast_instance_f32 * S );


  void arm_rfft_fast_f32(
        arm_rfft_fast_instance_f32 * S,
        float32_t * p, float32_t * pOut,
        uint8_t ifftFlag);




  typedef struct
  {
          uint16_t N;
          uint16_t Nby2;
          float32_t normalize;
    const float32_t *pTwiddle;
    const float32_t *pCosFactor;
          arm_rfft_instance_f32 *pRfft;
          arm_cfft_radix4_instance_f32 *pCfft;
  } arm_dct4_instance_f32;
# 2418 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_dct4_init_f32(
        arm_dct4_instance_f32 * S,
        arm_rfft_instance_f32 * S_RFFT,
        arm_cfft_radix4_instance_f32 * S_CFFT,
        uint16_t N,
        uint16_t Nby2,
        float32_t normalize);
# 2433 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_dct4_f32(
  const arm_dct4_instance_f32 * S,
        float32_t * pState,
        float32_t * pInlineBuffer);





  typedef struct
  {
          uint16_t N;
          uint16_t Nby2;
          q31_t normalize;
    const q31_t *pTwiddle;
    const q31_t *pCosFactor;
          arm_rfft_instance_q31 *pRfft;
          arm_cfft_radix4_instance_q31 *pCfft;
  } arm_dct4_instance_q31;
# 2464 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_dct4_init_q31(
        arm_dct4_instance_q31 * S,
        arm_rfft_instance_q31 * S_RFFT,
        arm_cfft_radix4_instance_q31 * S_CFFT,
        uint16_t N,
        uint16_t Nby2,
        q31_t normalize);
# 2479 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_dct4_q31(
  const arm_dct4_instance_q31 * S,
        q31_t * pState,
        q31_t * pInlineBuffer);





  typedef struct
  {
          uint16_t N;
          uint16_t Nby2;
          q15_t normalize;
    const q15_t *pTwiddle;
    const q15_t *pCosFactor;
          arm_rfft_instance_q15 *pRfft;
          arm_cfft_radix4_instance_q15 *pCfft;
  } arm_dct4_instance_q15;
# 2510 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_dct4_init_q15(
        arm_dct4_instance_q15 * S,
        arm_rfft_instance_q15 * S_RFFT,
        arm_cfft_radix4_instance_q15 * S_CFFT,
        uint16_t N,
        uint16_t Nby2,
        q15_t normalize);
# 2525 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_dct4_q15(
  const arm_dct4_instance_q15 * S,
        q15_t * pState,
        q15_t * pInlineBuffer);
# 2538 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_add_f32(
  const float32_t * pSrcA,
  const float32_t * pSrcB,
        float32_t * pDst,
        uint32_t blockSize);
# 2552 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_add_q7(
  const q7_t * pSrcA,
  const q7_t * pSrcB,
        q7_t * pDst,
        uint32_t blockSize);
# 2566 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_add_q15(
  const q15_t * pSrcA,
  const q15_t * pSrcB,
        q15_t * pDst,
        uint32_t blockSize);
# 2580 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_add_q31(
  const q31_t * pSrcA,
  const q31_t * pSrcB,
        q31_t * pDst,
        uint32_t blockSize);
# 2594 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_sub_f32(
  const float32_t * pSrcA,
  const float32_t * pSrcB,
        float32_t * pDst,
        uint32_t blockSize);
# 2608 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_sub_q7(
  const q7_t * pSrcA,
  const q7_t * pSrcB,
        q7_t * pDst,
        uint32_t blockSize);
# 2622 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_sub_q15(
  const q15_t * pSrcA,
  const q15_t * pSrcB,
        q15_t * pDst,
        uint32_t blockSize);
# 2636 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_sub_q31(
  const q31_t * pSrcA,
  const q31_t * pSrcB,
        q31_t * pDst,
        uint32_t blockSize);
# 2650 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_scale_f32(
  const float32_t * pSrc,
        float32_t scale,
        float32_t * pDst,
        uint32_t blockSize);
# 2665 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_scale_q7(
  const q7_t * pSrc,
        q7_t scaleFract,
        int8_t shift,
        q7_t * pDst,
        uint32_t blockSize);
# 2681 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_scale_q15(
  const q15_t * pSrc,
        q15_t scaleFract,
        int8_t shift,
        q15_t * pDst,
        uint32_t blockSize);
# 2697 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_scale_q31(
  const q31_t * pSrc,
        q31_t scaleFract,
        int8_t shift,
        q31_t * pDst,
        uint32_t blockSize);
# 2711 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_abs_q7(
  const q7_t * pSrc,
        q7_t * pDst,
        uint32_t blockSize);
# 2723 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_abs_f32(
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 2735 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_abs_q15(
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 2747 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_abs_q31(
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 2760 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_dot_prod_f32(
  const float32_t * pSrcA,
  const float32_t * pSrcB,
        uint32_t blockSize,
        float32_t * result);
# 2774 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_dot_prod_q7(
  const q7_t * pSrcA,
  const q7_t * pSrcB,
        uint32_t blockSize,
        q31_t * result);
# 2788 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_dot_prod_q15(
  const q15_t * pSrcA,
  const q15_t * pSrcB,
        uint32_t blockSize,
        q63_t * result);
# 2802 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_dot_prod_q31(
  const q31_t * pSrcA,
  const q31_t * pSrcB,
        uint32_t blockSize,
        q63_t * result);
# 2816 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_shift_q7(
  const q7_t * pSrc,
        int8_t shiftBits,
        q7_t * pDst,
        uint32_t blockSize);
# 2830 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_shift_q15(
  const q15_t * pSrc,
        int8_t shiftBits,
        q15_t * pDst,
        uint32_t blockSize);
# 2844 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_shift_q31(
  const q31_t * pSrc,
        int8_t shiftBits,
        q31_t * pDst,
        uint32_t blockSize);
# 2858 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_offset_f32(
  const float32_t * pSrc,
        float32_t offset,
        float32_t * pDst,
        uint32_t blockSize);
# 2872 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_offset_q7(
  const q7_t * pSrc,
        q7_t offset,
        q7_t * pDst,
        uint32_t blockSize);
# 2886 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_offset_q15(
  const q15_t * pSrc,
        q15_t offset,
        q15_t * pDst,
        uint32_t blockSize);
# 2900 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_offset_q31(
  const q31_t * pSrc,
        q31_t offset,
        q31_t * pDst,
        uint32_t blockSize);
# 2913 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_negate_f32(
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 2925 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_negate_q7(
  const q7_t * pSrc,
        q7_t * pDst,
        uint32_t blockSize);
# 2937 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_negate_q15(
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 2949 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_negate_q31(
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 2961 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_copy_f32(
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 2973 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_copy_q7(
  const q7_t * pSrc,
        q7_t * pDst,
        uint32_t blockSize);
# 2985 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_copy_q15(
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 2997 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_copy_q31(
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 3009 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fill_f32(
        float32_t value,
        float32_t * pDst,
        uint32_t blockSize);
# 3021 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fill_q7(
        q7_t value,
        q7_t * pDst,
        uint32_t blockSize);
# 3033 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fill_q15(
        q15_t value,
        q15_t * pDst,
        uint32_t blockSize);
# 3045 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fill_q31(
        q31_t value,
        q31_t * pDst,
        uint32_t blockSize);
# 3059 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_conv_f32(
  const float32_t * pSrcA,
        uint32_t srcALen,
  const float32_t * pSrcB,
        uint32_t srcBLen,
        float32_t * pDst);
# 3077 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_conv_opt_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst,
        q15_t * pScratch1,
        q15_t * pScratch2);
# 3095 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_conv_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst);
# 3111 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_conv_fast_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst);
# 3129 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_conv_fast_opt_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst,
        q15_t * pScratch1,
        q15_t * pScratch2);
# 3147 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_conv_q31(
  const q31_t * pSrcA,
        uint32_t srcALen,
  const q31_t * pSrcB,
        uint32_t srcBLen,
        q31_t * pDst);
# 3163 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_conv_fast_q31(
  const q31_t * pSrcA,
        uint32_t srcALen,
  const q31_t * pSrcB,
        uint32_t srcBLen,
        q31_t * pDst);
# 3181 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_conv_opt_q7(
  const q7_t * pSrcA,
        uint32_t srcALen,
  const q7_t * pSrcB,
        uint32_t srcBLen,
        q7_t * pDst,
        q15_t * pScratch1,
        q15_t * pScratch2);
# 3199 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_conv_q7(
  const q7_t * pSrcA,
        uint32_t srcALen,
  const q7_t * pSrcB,
        uint32_t srcBLen,
        q7_t * pDst);
# 3218 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_conv_partial_f32(
  const float32_t * pSrcA,
        uint32_t srcALen,
  const float32_t * pSrcB,
        uint32_t srcBLen,
        float32_t * pDst,
        uint32_t firstIndex,
        uint32_t numPoints);
# 3241 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_conv_partial_opt_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst,
        uint32_t firstIndex,
        uint32_t numPoints,
        q15_t * pScratch1,
        q15_t * pScratch2);
# 3264 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_conv_partial_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst,
        uint32_t firstIndex,
        uint32_t numPoints);
# 3285 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_conv_partial_fast_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst,
        uint32_t firstIndex,
        uint32_t numPoints);
# 3308 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_conv_partial_fast_opt_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst,
        uint32_t firstIndex,
        uint32_t numPoints,
        q15_t * pScratch1,
        q15_t * pScratch2);
# 3331 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_conv_partial_q31(
  const q31_t * pSrcA,
        uint32_t srcALen,
  const q31_t * pSrcB,
        uint32_t srcBLen,
        q31_t * pDst,
        uint32_t firstIndex,
        uint32_t numPoints);
# 3352 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_conv_partial_fast_q31(
  const q31_t * pSrcA,
        uint32_t srcALen,
  const q31_t * pSrcB,
        uint32_t srcBLen,
        q31_t * pDst,
        uint32_t firstIndex,
        uint32_t numPoints);
# 3375 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_conv_partial_opt_q7(
  const q7_t * pSrcA,
        uint32_t srcALen,
  const q7_t * pSrcB,
        uint32_t srcBLen,
        q7_t * pDst,
        uint32_t firstIndex,
        uint32_t numPoints,
        q15_t * pScratch1,
        q15_t * pScratch2);
# 3398 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_conv_partial_q7(
  const q7_t * pSrcA,
        uint32_t srcALen,
  const q7_t * pSrcB,
        uint32_t srcBLen,
        q7_t * pDst,
        uint32_t firstIndex,
        uint32_t numPoints);





  typedef struct
  {
          uint8_t M;
          uint16_t numTaps;
    const q15_t *pCoeffs;
          q15_t *pState;
  } arm_fir_decimate_instance_q15;




  typedef struct
  {
          uint8_t M;
          uint16_t numTaps;
    const q31_t *pCoeffs;
          q31_t *pState;
  } arm_fir_decimate_instance_q31;




typedef struct
  {
          uint8_t M;
          uint16_t numTaps;
    const float32_t *pCoeffs;
          float32_t *pState;
  } arm_fir_decimate_instance_f32;
# 3449 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
void arm_fir_decimate_f32(
  const arm_fir_decimate_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 3468 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_fir_decimate_init_f32(
        arm_fir_decimate_instance_f32 * S,
        uint16_t numTaps,
        uint8_t M,
  const float32_t * pCoeffs,
        float32_t * pState,
        uint32_t blockSize);
# 3484 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_decimate_q15(
  const arm_fir_decimate_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 3498 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_decimate_fast_q15(
  const arm_fir_decimate_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 3516 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_fir_decimate_init_q15(
        arm_fir_decimate_instance_q15 * S,
        uint16_t numTaps,
        uint8_t M,
  const q15_t * pCoeffs,
        q15_t * pState,
        uint32_t blockSize);
# 3532 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_decimate_q31(
  const arm_fir_decimate_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 3545 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_decimate_fast_q31(
  const arm_fir_decimate_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 3563 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_fir_decimate_init_q31(
        arm_fir_decimate_instance_q31 * S,
        uint16_t numTaps,
        uint8_t M,
  const q31_t * pCoeffs,
        q31_t * pState,
        uint32_t blockSize);





  typedef struct
  {
        uint8_t L;
        uint16_t phaseLength;
  const q15_t *pCoeffs;
        q15_t *pState;
  } arm_fir_interpolate_instance_q15;




  typedef struct
  {
        uint8_t L;
        uint16_t phaseLength;
  const q31_t *pCoeffs;
        q31_t *pState;
  } arm_fir_interpolate_instance_q31;




  typedef struct
  {
        uint8_t L;
        uint16_t phaseLength;
  const float32_t *pCoeffs;
        float32_t *pState;
  } arm_fir_interpolate_instance_f32;
# 3613 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_interpolate_q15(
  const arm_fir_interpolate_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 3631 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_fir_interpolate_init_q15(
        arm_fir_interpolate_instance_q15 * S,
        uint8_t L,
        uint16_t numTaps,
  const q15_t * pCoeffs,
        q15_t * pState,
        uint32_t blockSize);
# 3647 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_interpolate_q31(
  const arm_fir_interpolate_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 3665 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_fir_interpolate_init_q31(
        arm_fir_interpolate_instance_q31 * S,
        uint8_t L,
        uint16_t numTaps,
  const q31_t * pCoeffs,
        q31_t * pState,
        uint32_t blockSize);
# 3681 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_interpolate_f32(
  const arm_fir_interpolate_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 3699 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_fir_interpolate_init_f32(
        arm_fir_interpolate_instance_f32 * S,
        uint8_t L,
        uint16_t numTaps,
  const float32_t * pCoeffs,
        float32_t * pState,
        uint32_t blockSize);





  typedef struct
  {
          uint8_t numStages;
          q63_t *pState;
    const q31_t *pCoeffs;
          uint8_t postShift;
  } arm_biquad_cas_df1_32x64_ins_q31;
# 3726 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cas_df1_32x64_q31(
  const arm_biquad_cas_df1_32x64_ins_q31 * S,
        q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 3740 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cas_df1_32x64_init_q31(
        arm_biquad_cas_df1_32x64_ins_q31 * S,
        uint8_t numStages,
  const q31_t * pCoeffs,
        q63_t * pState,
        uint8_t postShift);





  typedef struct
  {
          uint8_t numStages;
          float32_t *pState;
    const float32_t *pCoeffs;
  } arm_biquad_cascade_df2T_instance_f32;




  typedef struct
  {
          uint8_t numStages;
          float32_t *pState;
    const float32_t *pCoeffs;
  } arm_biquad_cascade_stereo_df2T_instance_f32;




  typedef struct
  {
          uint8_t numStages;
          float64_t *pState;
          float64_t *pCoeffs;
  } arm_biquad_cascade_df2T_instance_f64;
# 3786 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df2T_f32(
  const arm_biquad_cascade_df2T_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 3800 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_stereo_df2T_f32(
  const arm_biquad_cascade_stereo_df2T_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 3814 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df2T_f64(
  const arm_biquad_cascade_df2T_instance_f64 * S,
        float64_t * pSrc,
        float64_t * pDst,
        uint32_t blockSize);
# 3834 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df2T_init_f32(
        arm_biquad_cascade_df2T_instance_f32 * S,
        uint8_t numStages,
  const float32_t * pCoeffs,
        float32_t * pState);
# 3848 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_stereo_df2T_init_f32(
        arm_biquad_cascade_stereo_df2T_instance_f32 * S,
        uint8_t numStages,
  const float32_t * pCoeffs,
        float32_t * pState);
# 3862 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_biquad_cascade_df2T_init_f64(
        arm_biquad_cascade_df2T_instance_f64 * S,
        uint8_t numStages,
        float64_t * pCoeffs,
        float64_t * pState);





  typedef struct
  {
          uint16_t numStages;
          q15_t *pState;
    const q15_t *pCoeffs;
  } arm_fir_lattice_instance_q15;




  typedef struct
  {
          uint16_t numStages;
          q31_t *pState;
    const q31_t *pCoeffs;
  } arm_fir_lattice_instance_q31;




  typedef struct
  {
          uint16_t numStages;
          float32_t *pState;
    const float32_t *pCoeffs;
  } arm_fir_lattice_instance_f32;
# 3907 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_lattice_init_q15(
        arm_fir_lattice_instance_q15 * S,
        uint16_t numStages,
  const q15_t * pCoeffs,
        q15_t * pState);
# 3921 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_lattice_q15(
  const arm_fir_lattice_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 3935 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_lattice_init_q31(
        arm_fir_lattice_instance_q31 * S,
        uint16_t numStages,
  const q31_t * pCoeffs,
        q31_t * pState);
# 3949 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_lattice_q31(
  const arm_fir_lattice_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 3963 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_lattice_init_f32(
        arm_fir_lattice_instance_f32 * S,
        uint16_t numStages,
  const float32_t * pCoeffs,
        float32_t * pState);
# 3977 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_lattice_f32(
  const arm_fir_lattice_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);





  typedef struct
  {
          uint16_t numStages;
          q15_t *pState;
          q15_t *pkCoeffs;
          q15_t *pvCoeffs;
  } arm_iir_lattice_instance_q15;




  typedef struct
  {
          uint16_t numStages;
          q31_t *pState;
          q31_t *pkCoeffs;
          q31_t *pvCoeffs;
  } arm_iir_lattice_instance_q31;




  typedef struct
  {
          uint16_t numStages;
          float32_t *pState;
          float32_t *pkCoeffs;
          float32_t *pvCoeffs;
  } arm_iir_lattice_instance_f32;
# 4025 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_iir_lattice_f32(
  const arm_iir_lattice_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 4041 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_iir_lattice_init_f32(
        arm_iir_lattice_instance_f32 * S,
        uint16_t numStages,
        float32_t * pkCoeffs,
        float32_t * pvCoeffs,
        float32_t * pState,
        uint32_t blockSize);
# 4057 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_iir_lattice_q31(
  const arm_iir_lattice_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 4073 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_iir_lattice_init_q31(
        arm_iir_lattice_instance_q31 * S,
        uint16_t numStages,
        q31_t * pkCoeffs,
        q31_t * pvCoeffs,
        q31_t * pState,
        uint32_t blockSize);
# 4089 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_iir_lattice_q15(
  const arm_iir_lattice_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 4105 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_iir_lattice_init_q15(
        arm_iir_lattice_instance_q15 * S,
        uint16_t numStages,
        q15_t * pkCoeffs,
        q15_t * pvCoeffs,
        q15_t * pState,
        uint32_t blockSize);





  typedef struct
  {
          uint16_t numTaps;
          float32_t *pState;
          float32_t *pCoeffs;
          float32_t mu;
  } arm_lms_instance_f32;
# 4135 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_f32(
  const arm_lms_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pRef,
        float32_t * pOut,
        float32_t * pErr,
        uint32_t blockSize);
# 4153 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_init_f32(
        arm_lms_instance_f32 * S,
        uint16_t numTaps,
        float32_t * pCoeffs,
        float32_t * pState,
        float32_t mu,
        uint32_t blockSize);





  typedef struct
  {
          uint16_t numTaps;
          q15_t *pState;
          q15_t *pCoeffs;
          q15_t mu;
          uint32_t postShift;
  } arm_lms_instance_q15;
# 4185 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_init_q15(
        arm_lms_instance_q15 * S,
        uint16_t numTaps,
        q15_t * pCoeffs,
        q15_t * pState,
        q15_t mu,
        uint32_t blockSize,
        uint32_t postShift);
# 4204 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_q15(
  const arm_lms_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pRef,
        q15_t * pOut,
        q15_t * pErr,
        uint32_t blockSize);





  typedef struct
  {
          uint16_t numTaps;
          q31_t *pState;
          q31_t *pCoeffs;
          q31_t mu;
          uint32_t postShift;
  } arm_lms_instance_q31;
# 4235 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_q31(
  const arm_lms_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pRef,
        q31_t * pOut,
        q31_t * pErr,
        uint32_t blockSize);
# 4254 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_init_q31(
        arm_lms_instance_q31 * S,
        uint16_t numTaps,
        q31_t * pCoeffs,
        q31_t * pState,
        q31_t mu,
        uint32_t blockSize,
        uint32_t postShift);





  typedef struct
  {
          uint16_t numTaps;
          float32_t *pState;
          float32_t *pCoeffs;
          float32_t mu;
          float32_t energy;
          float32_t x0;
  } arm_lms_norm_instance_f32;
# 4287 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_norm_f32(
        arm_lms_norm_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pRef,
        float32_t * pOut,
        float32_t * pErr,
        uint32_t blockSize);
# 4305 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_norm_init_f32(
        arm_lms_norm_instance_f32 * S,
        uint16_t numTaps,
        float32_t * pCoeffs,
        float32_t * pState,
        float32_t mu,
        uint32_t blockSize);





  typedef struct
  {
          uint16_t numTaps;
          q31_t *pState;
          q31_t *pCoeffs;
          q31_t mu;
          uint8_t postShift;
    const q31_t *recipTable;
          q31_t energy;
          q31_t x0;
  } arm_lms_norm_instance_q31;
# 4339 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_norm_q31(
        arm_lms_norm_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pRef,
        q31_t * pOut,
        q31_t * pErr,
        uint32_t blockSize);
# 4358 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_norm_init_q31(
        arm_lms_norm_instance_q31 * S,
        uint16_t numTaps,
        q31_t * pCoeffs,
        q31_t * pState,
        q31_t mu,
        uint32_t blockSize,
        uint8_t postShift);





  typedef struct
  {
          uint16_t numTaps;
          q15_t *pState;
          q15_t *pCoeffs;
          q15_t mu;
          uint8_t postShift;
    const q15_t *recipTable;
          q15_t energy;
          q15_t x0;
  } arm_lms_norm_instance_q15;
# 4393 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_norm_q15(
        arm_lms_norm_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pRef,
        q15_t * pOut,
        q15_t * pErr,
        uint32_t blockSize);
# 4412 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_lms_norm_init_q15(
        arm_lms_norm_instance_q15 * S,
        uint16_t numTaps,
        q15_t * pCoeffs,
        q15_t * pState,
        q15_t mu,
        uint32_t blockSize,
        uint8_t postShift);
# 4430 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_correlate_f32(
  const float32_t * pSrcA,
        uint32_t srcALen,
  const float32_t * pSrcB,
        uint32_t srcBLen,
        float32_t * pDst);
# 4447 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
void arm_correlate_opt_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst,
        q15_t * pScratch);
# 4464 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_correlate_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst);
# 4481 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
void arm_correlate_fast_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst);
# 4498 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
void arm_correlate_fast_opt_q15(
  const q15_t * pSrcA,
        uint32_t srcALen,
  const q15_t * pSrcB,
        uint32_t srcBLen,
        q15_t * pDst,
        q15_t * pScratch);
# 4515 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_correlate_q31(
  const q31_t * pSrcA,
        uint32_t srcALen,
  const q31_t * pSrcB,
        uint32_t srcBLen,
        q31_t * pDst);
# 4531 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
void arm_correlate_fast_q31(
  const q31_t * pSrcA,
        uint32_t srcALen,
  const q31_t * pSrcB,
        uint32_t srcBLen,
        q31_t * pDst);
# 4549 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_correlate_opt_q7(
  const q7_t * pSrcA,
        uint32_t srcALen,
  const q7_t * pSrcB,
        uint32_t srcBLen,
        q7_t * pDst,
        q15_t * pScratch1,
        q15_t * pScratch2);
# 4567 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_correlate_q7(
  const q7_t * pSrcA,
        uint32_t srcALen,
  const q7_t * pSrcB,
        uint32_t srcBLen,
        q7_t * pDst);





  typedef struct
  {
          uint16_t numTaps;
          uint16_t stateIndex;
          float32_t *pState;
    const float32_t *pCoeffs;
          uint16_t maxDelay;
          int32_t *pTapDelay;
  } arm_fir_sparse_instance_f32;




  typedef struct
  {
          uint16_t numTaps;
          uint16_t stateIndex;
          q31_t *pState;
    const q31_t *pCoeffs;
          uint16_t maxDelay;
          int32_t *pTapDelay;
  } arm_fir_sparse_instance_q31;




  typedef struct
  {
          uint16_t numTaps;
          uint16_t stateIndex;
          q15_t *pState;
    const q15_t *pCoeffs;
          uint16_t maxDelay;
          int32_t *pTapDelay;
  } arm_fir_sparse_instance_q15;




  typedef struct
  {
          uint16_t numTaps;
          uint16_t stateIndex;
          q7_t *pState;
    const q7_t *pCoeffs;
          uint16_t maxDelay;
          int32_t *pTapDelay;
  } arm_fir_sparse_instance_q7;
# 4636 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_sparse_f32(
        arm_fir_sparse_instance_f32 * S,
  const float32_t * pSrc,
        float32_t * pDst,
        float32_t * pScratchIn,
        uint32_t blockSize);
# 4654 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_sparse_init_f32(
        arm_fir_sparse_instance_f32 * S,
        uint16_t numTaps,
  const float32_t * pCoeffs,
        float32_t * pState,
        int32_t * pTapDelay,
        uint16_t maxDelay,
        uint32_t blockSize);
# 4672 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_sparse_q31(
        arm_fir_sparse_instance_q31 * S,
  const q31_t * pSrc,
        q31_t * pDst,
        q31_t * pScratchIn,
        uint32_t blockSize);
# 4690 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_sparse_init_q31(
        arm_fir_sparse_instance_q31 * S,
        uint16_t numTaps,
  const q31_t * pCoeffs,
        q31_t * pState,
        int32_t * pTapDelay,
        uint16_t maxDelay,
        uint32_t blockSize);
# 4709 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_sparse_q15(
        arm_fir_sparse_instance_q15 * S,
  const q15_t * pSrc,
        q15_t * pDst,
        q15_t * pScratchIn,
        q31_t * pScratchOut,
        uint32_t blockSize);
# 4728 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_sparse_init_q15(
        arm_fir_sparse_instance_q15 * S,
        uint16_t numTaps,
  const q15_t * pCoeffs,
        q15_t * pState,
        int32_t * pTapDelay,
        uint16_t maxDelay,
        uint32_t blockSize);
# 4747 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_sparse_q7(
        arm_fir_sparse_instance_q7 * S,
  const q7_t * pSrc,
        q7_t * pDst,
        q7_t * pScratchIn,
        q31_t * pScratchOut,
        uint32_t blockSize);
# 4766 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_fir_sparse_init_q7(
        arm_fir_sparse_instance_q7 * S,
        uint16_t numTaps,
  const q7_t * pCoeffs,
        q7_t * pState,
        int32_t * pTapDelay,
        uint16_t maxDelay,
        uint32_t blockSize);
# 4782 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_sin_cos_f32(
        float32_t theta,
        float32_t * pSinVal,
        float32_t * pCosVal);
# 4794 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_sin_cos_q31(
        q31_t theta,
        q31_t * pSinVal,
        q31_t * pCosVal);
# 4806 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_conj_f32(
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t numSamples);







  void arm_cmplx_conj_q31(
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t numSamples);
# 4829 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_conj_q15(
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t numSamples);
# 4841 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mag_squared_f32(
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t numSamples);
# 4853 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mag_squared_q31(
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t numSamples);
# 4865 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mag_squared_q15(
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t numSamples);
# 4944 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline float32_t arm_pid_f32(
  arm_pid_instance_f32 * S,
  float32_t in)
  {
    float32_t out;


    out = (S->A0 * in) +
      (S->A1 * S->state[0]) + (S->A2 * S->state[1]) + (S->state[2]);


    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;


    return (out);

  }
# 4977 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
__attribute__((always_inline)) static __inline q31_t arm_pid_q31(
  arm_pid_instance_q31 * S,
  q31_t in)
  {
    q63_t acc;
    q31_t out;


    acc = (q63_t) S->A0 * in;


    acc += (q63_t) S->A1 * S->state[0];


    acc += (q63_t) S->A2 * S->state[1];


    out = (q31_t) (acc >> 31U);


    out += S->state[2];


    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;


    return (out);
  }
# 5023 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
__attribute__((always_inline)) static __inline q15_t arm_pid_q15(
  arm_pid_instance_q15 * S,
  q15_t in)
  {
    q63_t acc;
    q15_t out;





    acc = (q31_t) __SMUAD((uint32_t)S->A0, (uint32_t)in);


    acc = (q63_t)__SMLALD((uint32_t)S->A1, (uint32_t)read_q15x2 (S->state), (uint64_t)acc);
# 5048 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
    acc += (q31_t) S->state[2] << 15;


    out = (q15_t) (__builtin_arm_ssat((acc >> 15), 16));


    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;


    return (out);
  }
# 5074 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_mat_inverse_f32(
  const arm_matrix_instance_f32 * src,
  arm_matrix_instance_f32 * dst);
# 5086 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  arm_status arm_mat_inverse_f64(
  const arm_matrix_instance_f64 * src,
  arm_matrix_instance_f64 * dst);
# 5132 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline void arm_clarke_f32(
  float32_t Ia,
  float32_t Ib,
  float32_t * pIalpha,
  float32_t * pIbeta)
  {

    *pIalpha = Ia;


    *pIbeta = ((float32_t) 0.57735026919 * Ia + (float32_t) 1.15470053838 * Ib);
  }
# 5159 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
__attribute__((always_inline)) static __inline void arm_clarke_q31(
  q31_t Ia,
  q31_t Ib,
  q31_t * pIalpha,
  q31_t * pIbeta)
  {
    q31_t product1, product2;


    *pIalpha = Ia;


    product1 = (q31_t) (((q63_t) Ia * 0x24F34E8B) >> 30);


    product2 = (q31_t) (((q63_t) Ib * 0x49E69D16) >> 30);


    *pIbeta = __QADD(product1, product2);
  }
# 5218 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline void arm_inv_clarke_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pIa,
  float32_t * pIb)
  {

    *pIa = Ialpha;


    *pIb = -0.5f * Ialpha + 0.8660254039f * Ibeta;
  }
# 5245 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
__attribute__((always_inline)) static __inline void arm_inv_clarke_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pIa,
  q31_t * pIb)
  {
    q31_t product1, product2;


    *pIa = Ialpha;


    product1 = (q31_t) (((q63_t) (Ialpha) * (0x40000000)) >> 31);


    product2 = (q31_t) (((q63_t) (Ibeta) * (0x6ED9EBA1)) >> 31);


    *pIb = __QSUB(product2, product1);
  }
# 5318 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline void arm_park_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pId,
  float32_t * pIq,
  float32_t sinVal,
  float32_t cosVal)
  {

    *pId = Ialpha * cosVal + Ibeta * sinVal;


    *pIq = -Ialpha * sinVal + Ibeta * cosVal;
  }
# 5349 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
__attribute__((always_inline)) static __inline void arm_park_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pId,
  q31_t * pIq,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;
    q31_t product3, product4;


    product1 = (q31_t) (((q63_t) (Ialpha) * (cosVal)) >> 31);


    product2 = (q31_t) (((q63_t) (Ibeta) * (sinVal)) >> 31);



    product3 = (q31_t) (((q63_t) (Ialpha) * (sinVal)) >> 31);


    product4 = (q31_t) (((q63_t) (Ibeta) * (cosVal)) >> 31);


    *pId = __QADD(product1, product2);


    *pIq = __QSUB(product4, product3);
  }
# 5421 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline void arm_inv_park_f32(
  float32_t Id,
  float32_t Iq,
  float32_t * pIalpha,
  float32_t * pIbeta,
  float32_t sinVal,
  float32_t cosVal)
  {

    *pIalpha = Id * cosVal - Iq * sinVal;


    *pIbeta = Id * sinVal + Iq * cosVal;
  }
# 5452 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
__attribute__((always_inline)) static __inline void arm_inv_park_q31(
  q31_t Id,
  q31_t Iq,
  q31_t * pIalpha,
  q31_t * pIbeta,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;
    q31_t product3, product4;


    product1 = (q31_t) (((q63_t) (Id) * (cosVal)) >> 31);


    product2 = (q31_t) (((q63_t) (Iq) * (sinVal)) >> 31);



    product3 = (q31_t) (((q63_t) (Id) * (sinVal)) >> 31);


    product4 = (q31_t) (((q63_t) (Iq) * (cosVal)) >> 31);


    *pIalpha = __QSUB(product1, product2);


    *pIbeta = __QADD(product4, product3);
  }
# 5536 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline float32_t arm_linear_interp_f32(
  arm_linear_interp_instance_f32 * S,
  float32_t x)
  {
    float32_t y;
    float32_t x0, x1;
    float32_t y0, y1;
    float32_t xSpacing = S->xSpacing;
    int32_t i;
    float32_t *pYData = S->pYData;


    i = (int32_t) ((x - S->x1) / xSpacing);

    if (i < 0)
    {

      y = pYData[0];
    }
    else if ((uint32_t)i >= S->nValues)
    {

      y = pYData[S->nValues - 1];
    }
    else
    {

      x0 = S->x1 + i * xSpacing;
      x1 = S->x1 + (i + 1) * xSpacing;


      y0 = pYData[i];
      y1 = pYData[i + 1];


      y = y0 + (x - x0) * ((y1 - y0) / (x1 - x0));

    }


    return (y);
  }
# 5593 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline q31_t arm_linear_interp_q31(
  q31_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;
    q31_t y0, y1;
    q31_t fract;
    int32_t index;




    index = ((x & (q31_t)0xFFF00000) >> 20);

    if (index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if (index < 0)
    {
      return (pYData[0]);
    }
    else
    {


      fract = (x & 0x000FFFFF) << 11;


      y0 = pYData[index];
      y1 = pYData[index + 1];


      y = ((q31_t) ((q63_t) y0 * (0x7FFFFFFF - fract) >> 32));


      y += ((q31_t) (((q63_t) y1 * fract) >> 32));


      return (y << 1U);
    }
  }
# 5651 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline q15_t arm_linear_interp_q15(
  q15_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q63_t y;
    q15_t y0, y1;
    q31_t fract;
    int32_t index;




    index = ((x & (int32_t)0xFFF00000) >> 20);

    if (index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if (index < 0)
    {
      return (pYData[0]);
    }
    else
    {


      fract = (x & 0x000FFFFF);


      y0 = pYData[index];
      y1 = pYData[index + 1];


      y = ((q63_t) y0 * (0xFFFFF - fract));


      y += ((q63_t) y1 * (fract));


      return (q15_t) (y >> 20);
    }
  }
# 5708 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline q7_t arm_linear_interp_q7(
  q7_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;
    q7_t y0, y1;
    q31_t fract;
    uint32_t index;




    if (x < 0)
    {
      return (pYData[0]);
    }
    index = (x >> 20) & 0xfff;

    if (index >= (nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else
    {


      fract = (x & 0x000FFFFF);


      y0 = pYData[index];
      y1 = pYData[index + 1];


      y = ((y0 * (0xFFFFF - fract)));


      y += (y1 * fract);


      return (q7_t) (y >> 20);
     }
  }
# 5761 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  float32_t arm_sin_f32(
  float32_t x);







  q31_t arm_sin_q31(
  q31_t x);







  q15_t arm_sin_q15(
  q15_t x);







  float32_t arm_cos_f32(
  float32_t x);







  q31_t arm_cos_q31(
  q31_t x);







  q15_t arm_cos_q15(
  q15_t x);
# 5849 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
__attribute__((always_inline)) static __inline arm_status arm_sqrt_f32(
  float32_t in,
  float32_t * pOut)
  {
    if (in >= 0.0f)
    {
# 5870 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
      *pOut = sqrtf(in);


      return (ARM_MATH_SUCCESS);
    }
    else
    {
      *pOut = 0.0f;
      return (ARM_MATH_ARGUMENT_ERROR);
    }
  }
# 5891 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_sqrt_q31(
  q31_t in,
  q31_t * pOut);
# 5904 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
arm_status arm_sqrt_q15(
  q15_t in,
  q15_t * pOut);
# 5916 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_vsqrt_f32(
  float32_t * pIn,
  float32_t * pOut,
  uint16_t len);

  void arm_vsqrt_q31(
  q31_t * pIn,
  q31_t * pOut,
  uint16_t len);

  void arm_vsqrt_q15(
  q15_t * pIn,
  q15_t * pOut,
  uint16_t len);
# 5939 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline void arm_circularWrite_f32(
  int32_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const int32_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0U;
    int32_t wOffset;



    wOffset = *writeOffset;


    i = blockSize;

    while (i > 0U)
    {

      circBuffer[wOffset] = *src;


      src += srcInc;


      wOffset += bufferInc;
      if (wOffset >= L)
        wOffset -= L;


      i--;
    }


    *writeOffset = (uint16_t)wOffset;
  }






  __attribute__((always_inline)) static __inline void arm_circularRead_f32(
  int32_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  int32_t * dst,
  int32_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0U;
    int32_t rOffset;
    int32_t* dst_end;



    rOffset = *readOffset;
    dst_end = dst_base + dst_length;


    i = blockSize;

    while (i > 0U)
    {

      *dst = circBuffer[rOffset];


      dst += dstInc;

      if (dst == dst_end)
      {
        dst = dst_base;
      }


      rOffset += bufferInc;

      if (rOffset >= L)
      {
        rOffset -= L;
      }


      i--;
    }


    *readOffset = rOffset;
  }





  __attribute__((always_inline)) static __inline void arm_circularWrite_q15(
  q15_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q15_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0U;
    int32_t wOffset;



    wOffset = *writeOffset;


    i = blockSize;

    while (i > 0U)
    {

      circBuffer[wOffset] = *src;


      src += srcInc;


      wOffset += bufferInc;
      if (wOffset >= L)
        wOffset -= L;


      i--;
    }


    *writeOffset = (uint16_t)wOffset;
  }





  __attribute__((always_inline)) static __inline void arm_circularRead_q15(
  q15_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q15_t * dst,
  q15_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset;
    q15_t* dst_end;



    rOffset = *readOffset;

    dst_end = dst_base + dst_length;


    i = blockSize;

    while (i > 0U)
    {

      *dst = circBuffer[rOffset];


      dst += dstInc;

      if (dst == dst_end)
      {
        dst = dst_base;
      }


      rOffset += bufferInc;

      if (rOffset >= L)
      {
        rOffset -= L;
      }


      i--;
    }


    *readOffset = rOffset;
  }





  __attribute__((always_inline)) static __inline void arm_circularWrite_q7(
  q7_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q7_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0U;
    int32_t wOffset;



    wOffset = *writeOffset;


    i = blockSize;

    while (i > 0U)
    {

      circBuffer[wOffset] = *src;


      src += srcInc;


      wOffset += bufferInc;
      if (wOffset >= L)
        wOffset -= L;


      i--;
    }


    *writeOffset = (uint16_t)wOffset;
  }





  __attribute__((always_inline)) static __inline void arm_circularRead_q7(
  q7_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q7_t * dst,
  q7_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset;
    q7_t* dst_end;



    rOffset = *readOffset;

    dst_end = dst_base + dst_length;


    i = blockSize;

    while (i > 0U)
    {

      *dst = circBuffer[rOffset];


      dst += dstInc;

      if (dst == dst_end)
      {
        dst = dst_base;
      }


      rOffset += bufferInc;

      if (rOffset >= L)
      {
        rOffset -= L;
      }


      i--;
    }


    *readOffset = rOffset;
  }
# 6245 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_power_q31(
  const q31_t * pSrc,
        uint32_t blockSize,
        q63_t * pResult);
# 6257 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_power_f32(
  const float32_t * pSrc,
        uint32_t blockSize,
        float32_t * pResult);
# 6269 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_power_q15(
  const q15_t * pSrc,
        uint32_t blockSize,
        q63_t * pResult);
# 6281 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_power_q7(
  const q7_t * pSrc,
        uint32_t blockSize,
        q31_t * pResult);
# 6293 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_mean_q7(
  const q7_t * pSrc,
        uint32_t blockSize,
        q7_t * pResult);
# 6305 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_mean_q15(
  const q15_t * pSrc,
        uint32_t blockSize,
        q15_t * pResult);
# 6317 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_mean_q31(
  const q31_t * pSrc,
        uint32_t blockSize,
        q31_t * pResult);
# 6329 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_mean_f32(
  const float32_t * pSrc,
        uint32_t blockSize,
        float32_t * pResult);
# 6341 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_var_f32(
  const float32_t * pSrc,
        uint32_t blockSize,
        float32_t * pResult);
# 6353 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_var_q31(
  const q31_t * pSrc,
        uint32_t blockSize,
        q31_t * pResult);
# 6365 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_var_q15(
  const q15_t * pSrc,
        uint32_t blockSize,
        q15_t * pResult);
# 6377 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_rms_f32(
  const float32_t * pSrc,
        uint32_t blockSize,
        float32_t * pResult);
# 6389 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_rms_q31(
  const q31_t * pSrc,
        uint32_t blockSize,
        q31_t * pResult);
# 6401 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_rms_q15(
  const q15_t * pSrc,
        uint32_t blockSize,
        q15_t * pResult);
# 6413 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_std_f32(
  const float32_t * pSrc,
        uint32_t blockSize,
        float32_t * pResult);
# 6425 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_std_q31(
  const q31_t * pSrc,
        uint32_t blockSize,
        q31_t * pResult);
# 6437 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_std_q15(
  const q15_t * pSrc,
        uint32_t blockSize,
        q15_t * pResult);
# 6449 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mag_f32(
  const float32_t * pSrc,
        float32_t * pDst,
        uint32_t numSamples);
# 6461 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mag_q31(
  const q31_t * pSrc,
        q31_t * pDst,
        uint32_t numSamples);
# 6473 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mag_q15(
  const q15_t * pSrc,
        q15_t * pDst,
        uint32_t numSamples);
# 6487 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_dot_prod_q15(
  const q15_t * pSrcA,
  const q15_t * pSrcB,
        uint32_t numSamples,
        q31_t * realResult,
        q31_t * imagResult);
# 6503 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_dot_prod_q31(
  const q31_t * pSrcA,
  const q31_t * pSrcB,
        uint32_t numSamples,
        q63_t * realResult,
        q63_t * imagResult);
# 6519 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_dot_prod_f32(
  const float32_t * pSrcA,
  const float32_t * pSrcB,
        uint32_t numSamples,
        float32_t * realResult,
        float32_t * imagResult);
# 6534 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mult_real_q15(
  const q15_t * pSrcCmplx,
  const q15_t * pSrcReal,
        q15_t * pCmplxDst,
        uint32_t numSamples);
# 6548 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mult_real_q31(
  const q31_t * pSrcCmplx,
  const q31_t * pSrcReal,
        q31_t * pCmplxDst,
        uint32_t numSamples);
# 6562 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mult_real_f32(
  const float32_t * pSrcCmplx,
  const float32_t * pSrcReal,
        float32_t * pCmplxDst,
        uint32_t numSamples);
# 6576 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_min_q7(
  const q7_t * pSrc,
        uint32_t blockSize,
        q7_t * result,
        uint32_t * index);
# 6590 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_min_q15(
  const q15_t * pSrc,
        uint32_t blockSize,
        q15_t * pResult,
        uint32_t * pIndex);
# 6604 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_min_q31(
  const q31_t * pSrc,
        uint32_t blockSize,
        q31_t * pResult,
        uint32_t * pIndex);
# 6618 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_min_f32(
  const float32_t * pSrc,
        uint32_t blockSize,
        float32_t * pResult,
        uint32_t * pIndex);
# 6632 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_max_q7(
  const q7_t * pSrc,
        uint32_t blockSize,
        q7_t * pResult,
        uint32_t * pIndex);
# 6646 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_max_q15(
  const q15_t * pSrc,
        uint32_t blockSize,
        q15_t * pResult,
        uint32_t * pIndex);
# 6660 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_max_q31(
  const q31_t * pSrc,
        uint32_t blockSize,
        q31_t * pResult,
        uint32_t * pIndex);
# 6674 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_max_f32(
  const float32_t * pSrc,
        uint32_t blockSize,
        float32_t * pResult,
        uint32_t * pIndex);
# 6688 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mult_cmplx_q15(
  const q15_t * pSrcA,
  const q15_t * pSrcB,
        q15_t * pDst,
        uint32_t numSamples);
# 6702 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mult_cmplx_q31(
  const q31_t * pSrcA,
  const q31_t * pSrcB,
        q31_t * pDst,
        uint32_t numSamples);
# 6716 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_cmplx_mult_cmplx_f32(
  const float32_t * pSrcA,
  const float32_t * pSrcB,
        float32_t * pDst,
        uint32_t numSamples);
# 6729 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_float_to_q31(
  const float32_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 6741 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_float_to_q15(
  const float32_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 6753 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_float_to_q7(
  const float32_t * pSrc,
        q7_t * pDst,
        uint32_t blockSize);
# 6765 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_q31_to_float(
  const q31_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 6777 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_q31_to_q15(
  const q31_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 6789 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_q31_to_q7(
  const q31_t * pSrc,
        q7_t * pDst,
        uint32_t blockSize);
# 6801 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_q15_to_float(
  const q15_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 6813 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_q15_to_q31(
  const q15_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 6825 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_q15_to_q7(
  const q15_t * pSrc,
        q7_t * pDst,
        uint32_t blockSize);
# 6837 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_q7_to_float(
  const q7_t * pSrc,
        float32_t * pDst,
        uint32_t blockSize);
# 6849 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_q7_to_q31(
  const q7_t * pSrc,
        q31_t * pDst,
        uint32_t blockSize);
# 6861 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  void arm_q7_to_q15(
  const q7_t * pSrc,
        q15_t * pDst,
        uint32_t blockSize);
# 6936 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline float32_t arm_bilinear_interp_f32(
  const arm_bilinear_interp_instance_f32 * S,
  float32_t X,
  float32_t Y)
  {
    float32_t out;
    float32_t f00, f01, f10, f11;
    float32_t *pData = S->pData;
    int32_t xIndex, yIndex, index;
    float32_t xdiff, ydiff;
    float32_t b1, b2, b3, b4;

    xIndex = (int32_t) X;
    yIndex = (int32_t) Y;



    if (xIndex < 0 || xIndex > (S->numRows - 1) || yIndex < 0 || yIndex > (S->numCols - 1))
    {
      return (0);
    }


    index = (xIndex - 1) + (yIndex - 1) * S->numCols;



    f00 = pData[index];
    f01 = pData[index + 1];


    index = (xIndex - 1) + (yIndex) * S->numCols;



    f10 = pData[index];
    f11 = pData[index + 1];


    b1 = f00;
    b2 = f01 - f00;
    b3 = f10 - f00;
    b4 = f00 - f01 - f10 + f11;


    xdiff = X - xIndex;


    ydiff = Y - yIndex;


    out = b1 + b2 * xdiff + b3 * ydiff + b4 * xdiff * ydiff;


    return (out);
  }
# 7001 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline q31_t arm_bilinear_interp_q31(
  arm_bilinear_interp_instance_q31 * S,
  q31_t X,
  q31_t Y)
  {
    q31_t out;
    q31_t acc = 0;
    q31_t xfract, yfract;
    q31_t x1, x2, y1, y2;
    int32_t rI, cI;
    q31_t *pYData = S->pData;
    uint32_t nCols = S->numCols;




    rI = ((X & (q31_t)0xFFF00000) >> 20);




    cI = ((Y & (q31_t)0xFFF00000) >> 20);



    if (rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }



    xfract = (X & 0x000FFFFF) << 11U;


    x1 = pYData[(rI) + (int32_t)nCols * (cI) ];
    x2 = pYData[(rI) + (int32_t)nCols * (cI) + 1];



    yfract = (Y & 0x000FFFFF) << 11U;


    y1 = pYData[(rI) + (int32_t)nCols * (cI + 1) ];
    y2 = pYData[(rI) + (int32_t)nCols * (cI + 1) + 1];


    out = ((q31_t) (((q63_t) x1 * (0x7FFFFFFF - xfract)) >> 32));
    acc = ((q31_t) (((q63_t) out * (0x7FFFFFFF - yfract)) >> 32));


    out = ((q31_t) ((q63_t) x2 * (0x7FFFFFFF - yfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (xfract) >> 32));


    out = ((q31_t) ((q63_t) y1 * (0x7FFFFFFF - xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));


    out = ((q31_t) ((q63_t) y2 * (xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));


    return ((q31_t)(acc << 2));
  }
# 7075 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline q15_t arm_bilinear_interp_q15(
  arm_bilinear_interp_instance_q15 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;
    q31_t out;
    q15_t x1, x2, y1, y2;
    q31_t xfract, yfract;
    int32_t rI, cI;
    q15_t *pYData = S->pData;
    uint32_t nCols = S->numCols;




    rI = ((X & (q31_t)0xFFF00000) >> 20);




    cI = ((Y & (q31_t)0xFFF00000) >> 20);



    if (rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }



    xfract = (X & 0x000FFFFF);


    x1 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI) ];
    x2 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI) + 1];



    yfract = (Y & 0x000FFFFF);


    y1 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI + 1) ];
    y2 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI + 1) + 1];





    out = (q31_t) (((q63_t) x1 * (0xFFFFF - xfract)) >> 4U);
    acc = ((q63_t) out * (0xFFFFF - yfract));


    out = (q31_t) (((q63_t) x2 * (0xFFFFF - yfract)) >> 4U);
    acc += ((q63_t) out * (xfract));


    out = (q31_t) (((q63_t) y1 * (0xFFFFF - xfract)) >> 4U);
    acc += ((q63_t) out * (yfract));


    out = (q31_t) (((q63_t) y2 * (xfract)) >> 4U);
    acc += ((q63_t) out * (yfract));



    return ((q15_t)(acc >> 36));
  }
# 7153 "../Drivers/CMSIS/DSP/Include\\arm_math.h"
  __attribute__((always_inline)) static __inline q7_t arm_bilinear_interp_q7(
  arm_bilinear_interp_instance_q7 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;
    q31_t out;
    q31_t xfract, yfract;
    q7_t x1, x2, y1, y2;
    int32_t rI, cI;
    q7_t *pYData = S->pData;
    uint32_t nCols = S->numCols;




    rI = ((X & (q31_t)0xFFF00000) >> 20);




    cI = ((Y & (q31_t)0xFFF00000) >> 20);



    if (rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }



    xfract = (X & (q31_t)0x000FFFFF);


    x1 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI) ];
    x2 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI) + 1];



    yfract = (Y & (q31_t)0x000FFFFF);


    y1 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI + 1) ];
    y2 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI + 1) + 1];


    out = ((x1 * (0xFFFFF - xfract)));
    acc = (((q63_t) out * (0xFFFFF - yfract)));


    out = ((x2 * (0xFFFFF - yfract)));
    acc += (((q63_t) out * (xfract)));


    out = ((y1 * (0xFFFFF - xfract)));
    acc += (((q63_t) out * (yfract)));


    out = ((y2 * (yfract)));
    acc += (((q63_t) out * (xfract)));


    return ((q7_t)(acc >> 40));
  }
# 8 "../SignalProcess/long_fft\\extra_ffts.h" 2







typedef struct
{
    uint16_t fftLen;
    const float32_t *pTwiddle;
    const uint32_t *pBitRevTable;
    uint16_t bitRevLength;
# 29 "../SignalProcess/long_fft\\extra_ffts.h"
} arm_cfft_instance_f32_extra;




typedef struct
{
    arm_cfft_instance_f32_extra Sint;
    uint16_t fftLenRFFT;
    const float32_t * pTwiddleRFFT;
} arm_rfft_fast_instance_f32_extra ;


arm_status arm_rfft_fast_init_f32_extra (
        arm_rfft_fast_instance_f32_extra * S,
        uint16_t fftLen);

void arm_rfft_fast_f32_extra(
        const arm_rfft_fast_instance_f32_extra * S,
        float32_t * p, float32_t * pOut,
        uint8_t ifftFlag);


arm_status arm_cfft_init_f32_extra(
        arm_cfft_instance_f32_extra * S,
        uint16_t fftLen);


void arm_cfft_f32_extra(
        const arm_cfft_instance_f32_extra * S,
        float32_t * p1,
        uint8_t ifftFlag,
        uint8_t bitReverseFlag);
# 7 "../SignalProcess\\fftana.h" 2
# 25 "../SignalProcess\\fftana.h"
typedef struct __attribute__((packed)) {
    float32_t cmp[8192];
} fftin;

typedef struct {
    float32_t phase[16384];
    float32_t mag[4096];

} fftdata;

typedef struct {
    uint16_t index[3];
} max_3_index;

typedef struct {
    float32_t axis[4096];
} freqaxis_t;

void process_data(const uint16_t *data_ori,fftin *data_processed);

 void add_window(fftin *data_in, const float32_t *windows_func);

void fft_process(fftin *data,fftdata *output);

freqaxis_t *get_freqaxis();

void regurlize_mag(fftdata *fft_result,float32_t regurlize_num);

void get_max_3(const fftdata *comparein, max_3_index *top3);

float32_t findnearfreq(float32_t freq1);

void Phase_atan(float32_t* FFT_In_Complex, uint32_t Index, float32_t* Phase);

float32_t FFT_PostProcess_FreqAmp(float32_t *fftMag, uint32_t peakIdx, float32_t freqRes, uint32_t Len, float32_t winCorrFactor, float32_t *pPreciseVpp);

void calc_psd_from_fft_mag_float(float32_t fft_mag[], float32_t psd[], float32_t Fs, uint32_t N_FFT, float32_t win_power_coeff);

float32_t Find_Vpp(fftin *input);

uint8_t Rec_wavetype(float32_t* Input_Mag, uint16_t Len);
# 5 "../Tasks/tasks.h" 2

# 1 "../MyDrive\\bsp_system.h" 1




# 1 "../Core/Inc\\main.h" 1
# 30 "../Core/Inc\\main.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h" 1
# 29 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
# 1 "../Core/Inc\\stm32h7xx_hal_conf.h" 1
# 246 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h" 1
# 27 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h" 1
# 29 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h"
# 1 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h" 1
# 126 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h"
# 1 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h" 1
# 48 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h"
typedef enum
{

  NonMaskableInt_IRQn = -14,
  HardFault_IRQn = -13,
  MemoryManagement_IRQn = -12,
  BusFault_IRQn = -11,
  UsageFault_IRQn = -10,
  SVCall_IRQn = -5,
  DebugMonitor_IRQn = -4,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,

  WWDG_IRQn = 0,
  PVD_AVD_IRQn = 1,
  TAMP_STAMP_IRQn = 2,
  RTC_WKUP_IRQn = 3,
  FLASH_IRQn = 4,
  RCC_IRQn = 5,
  EXTI0_IRQn = 6,
  EXTI1_IRQn = 7,
  EXTI2_IRQn = 8,
  EXTI3_IRQn = 9,
  EXTI4_IRQn = 10,
  DMA1_Stream0_IRQn = 11,
  DMA1_Stream1_IRQn = 12,
  DMA1_Stream2_IRQn = 13,
  DMA1_Stream3_IRQn = 14,
  DMA1_Stream4_IRQn = 15,
  DMA1_Stream5_IRQn = 16,
  DMA1_Stream6_IRQn = 17,
  ADC_IRQn = 18,
  FDCAN1_IT0_IRQn = 19,
  FDCAN2_IT0_IRQn = 20,
  FDCAN1_IT1_IRQn = 21,
  FDCAN2_IT1_IRQn = 22,
  EXTI9_5_IRQn = 23,
  TIM1_BRK_IRQn = 24,
  TIM1_UP_IRQn = 25,
  TIM1_TRG_COM_IRQn = 26,
  TIM1_CC_IRQn = 27,
  TIM2_IRQn = 28,
  TIM3_IRQn = 29,
  TIM4_IRQn = 30,
  I2C1_EV_IRQn = 31,
  I2C1_ER_IRQn = 32,
  I2C2_EV_IRQn = 33,
  I2C2_ER_IRQn = 34,
  SPI1_IRQn = 35,
  SPI2_IRQn = 36,
  USART1_IRQn = 37,
  USART2_IRQn = 38,
  USART3_IRQn = 39,
  EXTI15_10_IRQn = 40,
  RTC_Alarm_IRQn = 41,
  TIM8_BRK_TIM12_IRQn = 43,
  TIM8_UP_TIM13_IRQn = 44,
  TIM8_TRG_COM_TIM14_IRQn = 45,
  TIM8_CC_IRQn = 46,
  DMA1_Stream7_IRQn = 47,
  FMC_IRQn = 48,
  SDMMC1_IRQn = 49,
  TIM5_IRQn = 50,
  SPI3_IRQn = 51,
  UART4_IRQn = 52,
  UART5_IRQn = 53,
  TIM6_DAC_IRQn = 54,
  TIM7_IRQn = 55,
  DMA2_Stream0_IRQn = 56,
  DMA2_Stream1_IRQn = 57,
  DMA2_Stream2_IRQn = 58,
  DMA2_Stream3_IRQn = 59,
  DMA2_Stream4_IRQn = 60,
  ETH_IRQn = 61,
  ETH_WKUP_IRQn = 62,
  FDCAN_CAL_IRQn = 63,
  DMA2_Stream5_IRQn = 68,
  DMA2_Stream6_IRQn = 69,
  DMA2_Stream7_IRQn = 70,
  USART6_IRQn = 71,
  I2C3_EV_IRQn = 72,
  I2C3_ER_IRQn = 73,
  OTG_HS_EP1_OUT_IRQn = 74,
  OTG_HS_EP1_IN_IRQn = 75,
  OTG_HS_WKUP_IRQn = 76,
  OTG_HS_IRQn = 77,
  DCMI_IRQn = 78,
  RNG_IRQn = 80,
  FPU_IRQn = 81,
  UART7_IRQn = 82,
  UART8_IRQn = 83,
  SPI4_IRQn = 84,
  SPI5_IRQn = 85,
  SPI6_IRQn = 86,
  SAI1_IRQn = 87,
  LTDC_IRQn = 88,
  LTDC_ER_IRQn = 89,
  DMA2D_IRQn = 90,
  SAI2_IRQn = 91,
  QUADSPI_IRQn = 92,
  LPTIM1_IRQn = 93,
  CEC_IRQn = 94,
  I2C4_EV_IRQn = 95,
  I2C4_ER_IRQn = 96,
  SPDIF_RX_IRQn = 97,
  OTG_FS_EP1_OUT_IRQn = 98,
  OTG_FS_EP1_IN_IRQn = 99,
  OTG_FS_WKUP_IRQn = 100,
  OTG_FS_IRQn = 101,
  DMAMUX1_OVR_IRQn = 102,
  HRTIM1_Master_IRQn = 103,
  HRTIM1_TIMA_IRQn = 104,
  HRTIM1_TIMB_IRQn = 105,
  HRTIM1_TIMC_IRQn = 106,
  HRTIM1_TIMD_IRQn = 107,
  HRTIM1_TIME_IRQn = 108,
  HRTIM1_FLT_IRQn = 109,
  DFSDM1_FLT0_IRQn = 110,
  DFSDM1_FLT1_IRQn = 111,
  DFSDM1_FLT2_IRQn = 112,
  DFSDM1_FLT3_IRQn = 113,
  SAI3_IRQn = 114,
  SWPMI1_IRQn = 115,
  TIM15_IRQn = 116,
  TIM16_IRQn = 117,
  TIM17_IRQn = 118,
  MDIOS_WKUP_IRQn = 119,
  MDIOS_IRQn = 120,
  JPEG_IRQn = 121,
  MDMA_IRQn = 122,
  SDMMC2_IRQn = 124,
  HSEM1_IRQn = 125,
  ADC3_IRQn = 127,
  DMAMUX2_OVR_IRQn = 128,
  BDMA_Channel0_IRQn = 129,
  BDMA_Channel1_IRQn = 130,
  BDMA_Channel2_IRQn = 131,
  BDMA_Channel3_IRQn = 132,
  BDMA_Channel4_IRQn = 133,
  BDMA_Channel5_IRQn = 134,
  BDMA_Channel6_IRQn = 135,
  BDMA_Channel7_IRQn = 136,
  COMP_IRQn = 137 ,
  LPTIM2_IRQn = 138,
  LPTIM3_IRQn = 139,
  LPTIM4_IRQn = 140,
  LPTIM5_IRQn = 141,
  LPUART1_IRQn = 142,
  CRS_IRQn = 144,
  ECC_IRQn = 145,
  SAI4_IRQn = 146,
  WAKEUP_PIN_IRQn = 149,
} IRQn_Type;
# 223 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h"
# 1 "../Drivers/CMSIS/Include\\core_cm7.h" 1
# 29 "../Drivers/CMSIS/Include\\core_cm7.h" 3
# 63 "../Drivers/CMSIS/Include\\core_cm7.h" 3
# 1 "../Drivers/CMSIS/Include/cmsis_version.h" 1 3
# 29 "../Drivers/CMSIS/Include/cmsis_version.h" 3
# 64 "../Drivers/CMSIS/Include\\core_cm7.h" 2 3
# 274 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef union
{
  struct
  {
    uint32_t _reserved0:16;
    uint32_t GE:4;
    uint32_t _reserved1:7;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;
# 313 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;
# 331 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:1;
    uint32_t ICI_IT_1:6;
    uint32_t GE:4;
    uint32_t _reserved1:4;
    uint32_t T:1;
    uint32_t ICI_IT_2:2;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;
# 386 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef union
{
  struct
  {
    uint32_t nPRIV:1;
    uint32_t SPSEL:1;
    uint32_t FPCA:1;
    uint32_t _reserved0:29;
  } b;
  uint32_t w;
} CONTROL_Type;
# 421 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile uint32_t ISER[8U];
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];
        uint32_t RESERVED1[24U];
  volatile uint32_t ISPR[8U];
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];
        uint32_t RESERVED4[56U];
  volatile uint8_t IP[240U];
        uint32_t RESERVED5[644U];
  volatile uint32_t STIR;
} NVIC_Type;
# 455 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;
  volatile uint32_t VTOR;
  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
  volatile uint8_t SHPR[12U];
  volatile uint32_t SHCSR;
  volatile uint32_t CFSR;
  volatile uint32_t HFSR;
  volatile uint32_t DFSR;
  volatile uint32_t MMFAR;
  volatile uint32_t BFAR;
  volatile uint32_t AFSR;
  volatile const uint32_t ID_PFR[2U];
  volatile const uint32_t ID_DFR;
  volatile const uint32_t ID_AFR;
  volatile const uint32_t ID_MFR[4U];
  volatile const uint32_t ID_ISAR[5U];
        uint32_t RESERVED0[1U];
  volatile const uint32_t CLIDR;
  volatile const uint32_t CTR;
  volatile const uint32_t CCSIDR;
  volatile uint32_t CSSELR;
  volatile uint32_t CPACR;
        uint32_t RESERVED3[93U];
  volatile uint32_t STIR;
        uint32_t RESERVED4[15U];
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
  volatile const uint32_t MVFR2;
        uint32_t RESERVED5[1U];
  volatile uint32_t ICIALLU;
        uint32_t RESERVED6[1U];
  volatile uint32_t ICIMVAU;
  volatile uint32_t DCIMVAC;
  volatile uint32_t DCISW;
  volatile uint32_t DCCMVAU;
  volatile uint32_t DCCMVAC;
  volatile uint32_t DCCSW;
  volatile uint32_t DCCIMVAC;
  volatile uint32_t DCCISW;
        uint32_t RESERVED7[6U];
  volatile uint32_t ITCMCR;
  volatile uint32_t DTCMCR;
  volatile uint32_t AHBPCR;
  volatile uint32_t CACR;
  volatile uint32_t AHBSCR;
        uint32_t RESERVED8[1U];
  volatile uint32_t ABFSR;
} SCB_Type;
# 921 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const uint32_t ICTR;
  volatile uint32_t ACTLR;
} SCnSCB_Type;
# 979 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 1031 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile union
  {
    volatile uint8_t u8;
    volatile uint16_t u16;
    volatile uint32_t u32;
  } PORT [32U];
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;
        uint32_t RESERVED3[32U];
        uint32_t RESERVED4[43U];
  volatile uint32_t LAR;
  volatile const uint32_t LSR;
        uint32_t RESERVED5[6U];
  volatile const uint32_t PID4;
  volatile const uint32_t PID5;
  volatile const uint32_t PID6;
  volatile const uint32_t PID7;
  volatile const uint32_t PID0;
  volatile const uint32_t PID1;
  volatile const uint32_t PID2;
  volatile const uint32_t PID3;
  volatile const uint32_t CID0;
  volatile const uint32_t CID1;
  volatile const uint32_t CID2;
  volatile const uint32_t CID3;
} ITM_Type;
# 1119 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t CYCCNT;
  volatile uint32_t CPICNT;
  volatile uint32_t EXCCNT;
  volatile uint32_t SLEEPCNT;
  volatile uint32_t LSUCNT;
  volatile uint32_t FOLDCNT;
  volatile const uint32_t PCSR;
  volatile uint32_t COMP0;
  volatile uint32_t MASK0;
  volatile uint32_t FUNCTION0;
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;
  volatile uint32_t MASK1;
  volatile uint32_t FUNCTION1;
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;
  volatile uint32_t MASK2;
  volatile uint32_t FUNCTION2;
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;
  volatile uint32_t MASK3;
  volatile uint32_t FUNCTION3;
        uint32_t RESERVED3[981U];
  volatile uint32_t LAR;
  volatile const uint32_t LSR;
} DWT_Type;
# 1269 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile const uint32_t SSPSR;
  volatile uint32_t CSPSR;
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;
        uint32_t RESERVED2[131U];
  volatile const uint32_t FFSR;
  volatile uint32_t FFCR;
  volatile const uint32_t FSCR;
        uint32_t RESERVED3[759U];
  volatile const uint32_t TRIGGER;
  volatile const uint32_t FIFO0;
  volatile const uint32_t ITATBCTR2;
        uint32_t RESERVED4[1U];
  volatile const uint32_t ITATBCTR0;
  volatile const uint32_t FIFO1;
  volatile uint32_t ITCTRL;
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;
  volatile uint32_t CLAIMCLR;
        uint32_t RESERVED7[8U];
  volatile const uint32_t DEVID;
  volatile const uint32_t DEVTYPE;
} TPI_Type;
# 1431 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile const uint32_t TYPE;
  volatile uint32_t CTRL;
  volatile uint32_t RNR;
  volatile uint32_t RBAR;
  volatile uint32_t RASR;
  volatile uint32_t RBAR_A1;
  volatile uint32_t RASR_A1;
  volatile uint32_t RBAR_A2;
  volatile uint32_t RASR_A2;
  volatile uint32_t RBAR_A3;
  volatile uint32_t RASR_A3;
} MPU_Type;
# 1527 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;
  volatile uint32_t FPCAR;
  volatile uint32_t FPDSCR;
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
  volatile const uint32_t MVFR2;
} FPU_Type;
# 1639 "../Drivers/CMSIS/Include\\core_cm7.h" 3
typedef struct
{
  volatile uint32_t DHCSR;
  volatile uint32_t DCRSR;
  volatile uint32_t DCRDR;
  volatile uint32_t DEMCR;
} CoreDebug_Type;
# 1871 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);

  reg_value = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));
  reg_value = (reg_value |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U) );
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = reg_value;
}







static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}
# 1902 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    __asm volatile("":::"memory");
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __asm volatile("":::"memory");
  }
}
# 1921 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 1940 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
  }
}
# 1959 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 1978 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 1993 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 2010 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 2032 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
}
# 2054 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)] >> (8U - 4U)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4U)));
  }
}
# 2079 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
         );
}
# 2106 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}
# 2129 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t vectors = (uint32_t )((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  (* (int *) (vectors + ((int32_t)IRQn + 16) * 4)) = vector;
  __builtin_arm_dsb(0xF);
}
# 2145 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t vectors = (uint32_t )((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return (uint32_t)(* (int *) (vectors + ((int32_t)IRQn + 16) * 4));
}






__attribute__((__noreturn__)) static __inline void __NVIC_SystemReset(void)
{
  __builtin_arm_dsb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = (uint32_t)((0x5FAUL << 16U) |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U) );
  __builtin_arm_dsb(0xF);

  for(;;)
  {
    __builtin_arm_nop();
  }
}
# 2178 "../Drivers/CMSIS/Include\\core_cm7.h" 3
# 1 "../Drivers/CMSIS/Include/mpu_armv7.h" 1 3
# 29 "../Drivers/CMSIS/Include/mpu_armv7.h" 3
# 183 "../Drivers/CMSIS/Include/mpu_armv7.h" 3
typedef struct {
  uint32_t RBAR;
  uint32_t RASR;
} ARM_MPU_Region_t;




static __inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR |= (1UL << 16U);

  __builtin_arm_dsb(0xF);
  __builtin_arm_isb(0xF);
}



static __inline void ARM_MPU_Disable(void)
{
  __builtin_arm_dmb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR &= ~(1UL << 16U);

  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL &= ~(1UL );
}




static __inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = 0U;
}





static __inline void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}






static __inline void ARM_MPU_SetRegionEx(uint32_t rnr, uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}






static __inline void ARM_MPU_OrderedMemcpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i)
  {
    dst[i] = src[i];
  }
}





static __inline void ARM_MPU_Load(ARM_MPU_Region_t const* table, uint32_t cnt)
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  while (cnt > 4U) {
    ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), 4U*rowWordSize);
    table += 4U;
    cnt -= 4U;
  }
  ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), cnt*rowWordSize);
}
# 2179 "../Drivers/CMSIS/Include\\core_cm7.h" 2 3
# 2199 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t SCB_GetFPUType(void)
{
  uint32_t mvfr0;

  mvfr0 = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->MVFR0;
  if ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x220U)
  {
    return 2U;
  }
  else if ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x020U)
  {
    return 1U;
  }
  else
  {
    return 0U;
  }
}
# 2241 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_EnableICache (void)
{

    if (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR & (1UL << 17U)) return;

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICIALLU = 0UL;
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR |= (uint32_t)(1UL << 17U);
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_DisableICache (void)
{

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR &= ~(uint32_t)(1UL << 17U);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICIALLU = 0UL;
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_InvalidateICache (void)
{

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICIALLU = 0UL;
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}
# 2299 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_InvalidateICache_by_Addr (void *addr, int32_t isize)
{

    if ( isize > 0 ) {
       int32_t op_size = isize + (((uint32_t)addr) & (32U - 1U));
      uint32_t op_addr = (uint32_t)addr ;

      __builtin_arm_dsb(0xF);

      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICIMVAU = op_addr;
        op_addr += 32U;
        op_size -= 32U;
      } while ( op_size > 0 );

      __builtin_arm_dsb(0xF);
      __builtin_arm_isb(0xF);
    }

}






__attribute__((always_inline)) static __inline void SCB_EnableDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    if (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR & (1UL << 16U)) return;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCISW = (((sets << 5U) & (0x1FFUL << 5U)) |
                      ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);
    __builtin_arm_dsb(0xF);

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR |= (uint32_t)(1UL << 16U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_DisableDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCR &= ~(uint32_t)(1UL << 16U);
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCISW = (((sets << 5U) & (0x1FFUL << 5U)) |
                       ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_InvalidateDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCISW = (((sets << 5U) & (0x1FFUL << 5U)) |
                      ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_CleanDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCSW = (((sets << 5U) & (0x1FFUL << 5U)) |
                      ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}






__attribute__((always_inline)) static __inline void SCB_CleanInvalidateDCache (void)
{

    uint32_t ccsidr;
    uint32_t sets;
    uint32_t ways;

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CSSELR = 0U;
    __builtin_arm_dsb(0xF);

    ccsidr = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CCSIDR;


    sets = (uint32_t)((((ccsidr) & (0x7FFFUL << 13U) ) >> 13U ));
    do {
      ways = (uint32_t)((((ccsidr) & (0x3FFUL << 3U)) >> 3U));
      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCISW = (((sets << 5U) & (0x1FFUL << 5U)) |
                       ((ways << 30U) & (3UL << 30U)) );



      } while (ways-- != 0U);
    } while(sets-- != 0U);

    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);

}
# 2512 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_InvalidateDCache_by_Addr (void *addr, int32_t dsize)
{

    if ( dsize > 0 ) {
       int32_t op_size = dsize + (((uint32_t)addr) & (32U - 1U));
      uint32_t op_addr = (uint32_t)addr ;

      __builtin_arm_dsb(0xF);

      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCIMVAC = op_addr;
        op_addr += 32U;
        op_size -= 32U;
      } while ( op_size > 0 );

      __builtin_arm_dsb(0xF);
      __builtin_arm_isb(0xF);
    }

}
# 2542 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_CleanDCache_by_Addr (uint32_t *addr, int32_t dsize)
{

    if ( dsize > 0 ) {
       int32_t op_size = dsize + (((uint32_t)addr) & (32U - 1U));
      uint32_t op_addr = (uint32_t)addr ;

      __builtin_arm_dsb(0xF);

      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCMVAC = op_addr;
        op_addr += 32U;
        op_size -= 32U;
      } while ( op_size > 0 );

      __builtin_arm_dsb(0xF);
      __builtin_arm_isb(0xF);
    }

}
# 2572 "../Drivers/CMSIS/Include\\core_cm7.h" 3
__attribute__((always_inline)) static __inline void SCB_CleanInvalidateDCache_by_Addr (uint32_t *addr, int32_t dsize)
{

    if ( dsize > 0 ) {
       int32_t op_size = dsize + (((uint32_t)addr) & (32U - 1U));
      uint32_t op_addr = (uint32_t)addr ;

      __builtin_arm_dsb(0xF);

      do {
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->DCCIMVAC = op_addr;
        op_addr += 32U;
        op_size -= 32U;
      } while ( op_size > 0 );

      __builtin_arm_dsb(0xF);
      __builtin_arm_isb(0xF);
    }

}
# 2618 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4U) - 1UL);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
                   (1UL << 1U) |
                   (1UL );
  return (0UL);
}
# 2648 "../Drivers/CMSIS/Include\\core_cm7.h" 3
extern volatile int32_t ITM_RxBuffer;
# 2660 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL ) != 0UL) )
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __builtin_arm_nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}
# 2681 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);
  }

  return (ch);
}
# 2701 "../Drivers/CMSIS/Include\\core_cm7.h" 3
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);
  }
  else
  {
    return (1);
  }
}
# 224 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h" 2







# 1 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/system_stm32h7xx.h" 1
# 57 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/system_stm32h7xx.h"
extern uint32_t SystemCoreClock;
extern uint32_t SystemD2Clock;
extern const uint8_t D1CorePrescTable[16] ;
# 85 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/system_stm32h7xx.h"
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);
extern void ExitRun0Mode(void);
# 232 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h" 2
# 242 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h"
typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IER;
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CFGR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t PCSEL;
  volatile uint32_t LTR1;
  volatile uint32_t HTR1;
  uint32_t RESERVED1;
  uint32_t RESERVED2;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t SQR4;
  volatile uint32_t DR;
  uint32_t RESERVED3;
  uint32_t RESERVED4;
  volatile uint32_t JSQR;
  uint32_t RESERVED5[4];
  volatile uint32_t OFR1;
  volatile uint32_t OFR2;
  volatile uint32_t OFR3;
  volatile uint32_t OFR4;
  uint32_t RESERVED6[4];
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  uint32_t RESERVED7[4];
  volatile uint32_t AWD2CR;
  volatile uint32_t AWD3CR;
  uint32_t RESERVED8;
  uint32_t RESERVED9;
  volatile uint32_t LTR2;
  volatile uint32_t HTR2;
  volatile uint32_t LTR3;
  volatile uint32_t HTR3;
  volatile uint32_t DIFSEL;
  volatile uint32_t CALFACT;
  volatile uint32_t CALFACT2;
} ADC_TypeDef;


typedef struct
{
volatile uint32_t CSR;
uint32_t RESERVED;
volatile uint32_t CCR;
volatile uint32_t CDR;
volatile uint32_t CDR2;

} ADC_Common_TypeDef;






typedef struct
{
  volatile uint32_t CSR;
  volatile uint32_t CCR;
} VREFBUF_TypeDef;






typedef struct
{
  volatile uint32_t CREL;
  volatile uint32_t ENDN;
  volatile uint32_t RESERVED1;
  volatile uint32_t DBTP;
  volatile uint32_t TEST;
  volatile uint32_t RWD;
  volatile uint32_t CCCR;
  volatile uint32_t NBTP;
  volatile uint32_t TSCC;
  volatile uint32_t TSCV;
  volatile uint32_t TOCC;
  volatile uint32_t TOCV;
  volatile uint32_t RESERVED2[4];
  volatile uint32_t ECR;
  volatile uint32_t PSR;
  volatile uint32_t TDCR;
  volatile uint32_t RESERVED3;
  volatile uint32_t IR;
  volatile uint32_t IE;
  volatile uint32_t ILS;
  volatile uint32_t ILE;
  volatile uint32_t RESERVED4[8];
  volatile uint32_t GFC;
  volatile uint32_t SIDFC;
  volatile uint32_t XIDFC;
  volatile uint32_t RESERVED5;
  volatile uint32_t XIDAM;
  volatile uint32_t HPMS;
  volatile uint32_t NDAT1;
  volatile uint32_t NDAT2;
  volatile uint32_t RXF0C;
  volatile uint32_t RXF0S;
  volatile uint32_t RXF0A;
  volatile uint32_t RXBC;
  volatile uint32_t RXF1C;
  volatile uint32_t RXF1S;
  volatile uint32_t RXF1A;
  volatile uint32_t RXESC;
  volatile uint32_t TXBC;
  volatile uint32_t TXFQS;
  volatile uint32_t TXESC;
  volatile uint32_t TXBRP;
  volatile uint32_t TXBAR;
  volatile uint32_t TXBCR;
  volatile uint32_t TXBTO;
  volatile uint32_t TXBCF;
  volatile uint32_t TXBTIE;
  volatile uint32_t TXBCIE;
  volatile uint32_t RESERVED6[2];
  volatile uint32_t TXEFC;
  volatile uint32_t TXEFS;
  volatile uint32_t TXEFA;
  volatile uint32_t RESERVED7;
} FDCAN_GlobalTypeDef;





typedef struct
{
  volatile uint32_t TTTMC;
  volatile uint32_t TTRMC;
  volatile uint32_t TTOCF;
  volatile uint32_t TTMLM;
  volatile uint32_t TURCF;
  volatile uint32_t TTOCN;
  volatile uint32_t TTGTP;
  volatile uint32_t TTTMK;
  volatile uint32_t TTIR;
  volatile uint32_t TTIE;
  volatile uint32_t TTILS;
  volatile uint32_t TTOST;
  volatile uint32_t TURNA;
  volatile uint32_t TTLGT;
  volatile uint32_t TTCTC;
  volatile uint32_t TTCPT;
  volatile uint32_t TTCSM;
  volatile uint32_t RESERVED1[111];
  volatile uint32_t TTTS;
} TTCAN_TypeDef;





typedef struct
{
  volatile uint32_t CREL;
  volatile uint32_t CCFG;
  volatile uint32_t CSTAT;
  volatile uint32_t CWD;
  volatile uint32_t IR;
  volatile uint32_t IE;
} FDCAN_ClockCalibrationUnit_TypeDef;






typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t TXDR;
  volatile uint32_t RXDR;
  volatile uint32_t ISR;
  volatile uint32_t IER;
}CEC_TypeDef;





typedef struct
{
  volatile uint32_t DR;
  volatile uint32_t IDR;
  volatile uint32_t CR;
  uint32_t RESERVED2;
  volatile uint32_t INIT;
  volatile uint32_t POL;
} CRC_TypeDef;





typedef struct
{
volatile uint32_t CR;
volatile uint32_t CFGR;
volatile uint32_t ISR;
volatile uint32_t ICR;
} CRS_TypeDef;






typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;
  volatile uint32_t SR;
  volatile uint32_t CCR;
  volatile uint32_t MCR;
  volatile uint32_t SHSR1;
  volatile uint32_t SHSR2;
  volatile uint32_t SHHR;
  volatile uint32_t SHRR;
} DAC_TypeDef;




typedef struct
{
  volatile uint32_t FLTCR1;
  volatile uint32_t FLTCR2;
  volatile uint32_t FLTISR;
  volatile uint32_t FLTICR;
  volatile uint32_t FLTJCHGR;
  volatile uint32_t FLTFCR;
  volatile uint32_t FLTJDATAR;
  volatile uint32_t FLTRDATAR;
  volatile uint32_t FLTAWHTR;
  volatile uint32_t FLTAWLTR;
  volatile uint32_t FLTAWSR;
  volatile uint32_t FLTAWCFR;
  volatile uint32_t FLTEXMAX;
  volatile uint32_t FLTEXMIN;
  volatile uint32_t FLTCNVTIMR;
} DFSDM_Filter_TypeDef;




typedef struct
{
  volatile uint32_t CHCFGR1;
  volatile uint32_t CHCFGR2;
  volatile uint32_t CHAWSCDR;

  volatile uint32_t CHWDATAR;
  volatile uint32_t CHDATINR;
} DFSDM_Channel_TypeDef;




typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;
  uint32_t RESERVED4[11];
  volatile uint32_t APB3FZ1;
  uint32_t RESERVED5;
  volatile uint32_t APB1LFZ1;
  uint32_t RESERVED6;
  volatile uint32_t APB1HFZ1;
  uint32_t RESERVED7;
  volatile uint32_t APB2FZ1;
  uint32_t RESERVED8;
  volatile uint32_t APB4FZ1;
}DBGMCU_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t RISR;
  volatile uint32_t IER;
  volatile uint32_t MISR;
  volatile uint32_t ICR;
  volatile uint32_t ESCR;
  volatile uint32_t ESUR;
  volatile uint32_t CWSTRTR;
  volatile uint32_t CWSIZER;
  volatile uint32_t DR;
} DCMI_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t NDTR;
  volatile uint32_t PAR;
  volatile uint32_t M0AR;
  volatile uint32_t M1AR;
  volatile uint32_t FCR;
} DMA_Stream_TypeDef;

typedef struct
{
  volatile uint32_t LISR;
  volatile uint32_t HISR;
  volatile uint32_t LIFCR;
  volatile uint32_t HIFCR;
} DMA_TypeDef;

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CM0AR;
  volatile uint32_t CM1AR;
} BDMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} BDMA_TypeDef;

typedef struct
{
  volatile uint32_t CCR;
}DMAMUX_Channel_TypeDef;

typedef struct
{
  volatile uint32_t CSR;
  volatile uint32_t CFR;
}DMAMUX_ChannelStatus_TypeDef;

typedef struct
{
  volatile uint32_t RGCR;
}DMAMUX_RequestGen_TypeDef;

typedef struct
{
  volatile uint32_t RGSR;
  volatile uint32_t RGCFR;
}DMAMUX_RequestGenStatus_TypeDef;




typedef struct
{
  volatile uint32_t GISR0;
}MDMA_TypeDef;

typedef struct
{
  volatile uint32_t CISR;
  volatile uint32_t CIFCR;
  volatile uint32_t CESR;
  volatile uint32_t CCR;
  volatile uint32_t CTCR;
  volatile uint32_t CBNDTR;
  volatile uint32_t CSAR;
  volatile uint32_t CDAR;
  volatile uint32_t CBRUR;
  volatile uint32_t CLAR;
  volatile uint32_t CTBR;
  uint32_t RESERVED0;
  volatile uint32_t CMAR;
  volatile uint32_t CMDR;
}MDMA_Channel_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
  volatile uint32_t FGMAR;
  volatile uint32_t FGOR;
  volatile uint32_t BGMAR;
  volatile uint32_t BGOR;
  volatile uint32_t FGPFCCR;
  volatile uint32_t FGCOLR;
  volatile uint32_t BGPFCCR;
  volatile uint32_t BGCOLR;
  volatile uint32_t FGCMAR;
  volatile uint32_t BGCMAR;
  volatile uint32_t OPFCCR;
  volatile uint32_t OCOLR;
  volatile uint32_t OMAR;
  volatile uint32_t OOR;
  volatile uint32_t NLR;
  volatile uint32_t LWR;
  volatile uint32_t AMTCR;
  uint32_t RESERVED[236];
  volatile uint32_t FGCLUT[256];
  volatile uint32_t BGCLUT[256];
} DMA2D_TypeDef;





typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACECR;
  volatile uint32_t MACPFR;
  volatile uint32_t MACWTR;
  volatile uint32_t MACHT0R;
  volatile uint32_t MACHT1R;
  uint32_t RESERVED1[14];
  volatile uint32_t MACVTR;
  uint32_t RESERVED2;
  volatile uint32_t MACVHTR;
  uint32_t RESERVED3;
  volatile uint32_t MACVIR;
  volatile uint32_t MACIVIR;
  uint32_t RESERVED4[2];
  volatile uint32_t MACTFCR;
  uint32_t RESERVED5[7];
  volatile uint32_t MACRFCR;
  uint32_t RESERVED6[7];
  volatile uint32_t MACISR;
  volatile uint32_t MACIER;
  volatile uint32_t MACRXTXSR;
  uint32_t RESERVED7;
  volatile uint32_t MACPCSR;
  volatile uint32_t MACRWKPFR;
  uint32_t RESERVED8[2];
  volatile uint32_t MACLCSR;
  volatile uint32_t MACLTCR;
  volatile uint32_t MACLETR;
  volatile uint32_t MAC1USTCR;
  uint32_t RESERVED9[12];
  volatile uint32_t MACVR;
  volatile uint32_t MACDR;
  uint32_t RESERVED10;
  volatile uint32_t MACHWF0R;
  volatile uint32_t MACHWF1R;
  volatile uint32_t MACHWF2R;
  uint32_t RESERVED11[54];
  volatile uint32_t MACMDIOAR;
  volatile uint32_t MACMDIODR;
  uint32_t RESERVED12[2];
  volatile uint32_t MACARPAR;
  uint32_t RESERVED13[59];
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;
  uint32_t RESERVED14[248];
  volatile uint32_t MMCCR;
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;
  uint32_t RESERVED15[14];
  volatile uint32_t MMCTSCGPR;
  volatile uint32_t MMCTMCGPR;
  uint32_t RESERVED16[5];
  volatile uint32_t MMCTPCGR;
  uint32_t RESERVED17[10];
  volatile uint32_t MMCRCRCEPR;
  volatile uint32_t MMCRAEPR;
  uint32_t RESERVED18[10];
  volatile uint32_t MMCRUPGR;
  uint32_t RESERVED19[9];
  volatile uint32_t MMCTLPIMSTR;
  volatile uint32_t MMCTLPITCR;
  volatile uint32_t MMCRLPIMSTR;
  volatile uint32_t MMCRLPITCR;
  uint32_t RESERVED20[65];
  volatile uint32_t MACL3L4C0R;
  volatile uint32_t MACL4A0R;
  uint32_t RESERVED21[2];
  volatile uint32_t MACL3A0R0R;
  volatile uint32_t MACL3A1R0R;
  volatile uint32_t MACL3A2R0R;
  volatile uint32_t MACL3A3R0R;
  uint32_t RESERVED22[4];
  volatile uint32_t MACL3L4C1R;
  volatile uint32_t MACL4A1R;
  uint32_t RESERVED23[2];
  volatile uint32_t MACL3A0R1R;
  volatile uint32_t MACL3A1R1R;
  volatile uint32_t MACL3A2R1R;
  volatile uint32_t MACL3A3R1R;
  uint32_t RESERVED24[108];
  volatile uint32_t MACTSCR;
  volatile uint32_t MACSSIR;
  volatile uint32_t MACSTSR;
  volatile uint32_t MACSTNR;
  volatile uint32_t MACSTSUR;
  volatile uint32_t MACSTNUR;
  volatile uint32_t MACTSAR;
  uint32_t RESERVED25;
  volatile uint32_t MACTSSR;
  uint32_t RESERVED26[3];
  volatile uint32_t MACTTSSNR;
  volatile uint32_t MACTTSSSR;
  uint32_t RESERVED27[2];
  volatile uint32_t MACACR;
  uint32_t RESERVED28;
  volatile uint32_t MACATSNR;
  volatile uint32_t MACATSSR;
  volatile uint32_t MACTSIACR;
  volatile uint32_t MACTSEACR;
  volatile uint32_t MACTSICNR;
  volatile uint32_t MACTSECNR;
  uint32_t RESERVED29[4];
  volatile uint32_t MACPPSCR;
  uint32_t RESERVED30[3];
  volatile uint32_t MACPPSTTSR;
  volatile uint32_t MACPPSTTNR;
  volatile uint32_t MACPPSIR;
  volatile uint32_t MACPPSWR;
  uint32_t RESERVED31[12];
  volatile uint32_t MACPOCR;
  volatile uint32_t MACSPI0R;
  volatile uint32_t MACSPI1R;
  volatile uint32_t MACSPI2R;
  volatile uint32_t MACLMIR;
  uint32_t RESERVED32[11];
  volatile uint32_t MTLOMR;
  uint32_t RESERVED33[7];
  volatile uint32_t MTLISR;
  uint32_t RESERVED34[55];
  volatile uint32_t MTLTQOMR;
  volatile uint32_t MTLTQUR;
  volatile uint32_t MTLTQDR;
  uint32_t RESERVED35[8];
  volatile uint32_t MTLQICSR;
  volatile uint32_t MTLRQOMR;
  volatile uint32_t MTLRQMPOCR;
  volatile uint32_t MTLRQDR;
  uint32_t RESERVED36[177];
  volatile uint32_t DMAMR;
  volatile uint32_t DMASBMR;
  volatile uint32_t DMAISR;
  volatile uint32_t DMADSR;
  uint32_t RESERVED37[60];
  volatile uint32_t DMACCR;
  volatile uint32_t DMACTCR;
  volatile uint32_t DMACRCR;
  uint32_t RESERVED38[2];
  volatile uint32_t DMACTDLAR;
  uint32_t RESERVED39;
  volatile uint32_t DMACRDLAR;
  volatile uint32_t DMACTDTPR;
  uint32_t RESERVED40;
  volatile uint32_t DMACRDTPR;
  volatile uint32_t DMACTDRLR;
  volatile uint32_t DMACRDRLR;
  volatile uint32_t DMACIER;
  volatile uint32_t DMACRIWTR;
volatile uint32_t DMACSFCSR;
  uint32_t RESERVED41;
  volatile uint32_t DMACCATDR;
  uint32_t RESERVED42;
  volatile uint32_t DMACCARDR;
  uint32_t RESERVED43;
  volatile uint32_t DMACCATBR;
  uint32_t RESERVED44;
  volatile uint32_t DMACCARBR;
  volatile uint32_t DMACSR;
uint32_t RESERVED45[2];
volatile uint32_t DMACMFCR;
}ETH_TypeDef;




typedef struct
{
volatile uint32_t RTSR1;
volatile uint32_t FTSR1;
volatile uint32_t SWIER1;
volatile uint32_t D3PMR1;
volatile uint32_t D3PCR1L;
volatile uint32_t D3PCR1H;
uint32_t RESERVED1[2];
volatile uint32_t RTSR2;
volatile uint32_t FTSR2;
volatile uint32_t SWIER2;
volatile uint32_t D3PMR2;
volatile uint32_t D3PCR2L;
volatile uint32_t D3PCR2H;
uint32_t RESERVED2[2];
volatile uint32_t RTSR3;
volatile uint32_t FTSR3;
volatile uint32_t SWIER3;
volatile uint32_t D3PMR3;
volatile uint32_t D3PCR3L;
volatile uint32_t D3PCR3H;
uint32_t RESERVED3[10];
volatile uint32_t IMR1;
volatile uint32_t EMR1;
volatile uint32_t PR1;
uint32_t RESERVED4;
volatile uint32_t IMR2;
volatile uint32_t EMR2;
volatile uint32_t PR2;
uint32_t RESERVED5;
volatile uint32_t IMR3;
volatile uint32_t EMR3;
volatile uint32_t PR3;
}EXTI_TypeDef;
# 894 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h"
typedef struct
{
volatile uint32_t IMR1;
volatile uint32_t EMR1;
volatile uint32_t PR1;
uint32_t RESERVED1;
volatile uint32_t IMR2;
volatile uint32_t EMR2;
volatile uint32_t PR2;
uint32_t RESERVED2;
volatile uint32_t IMR3;
volatile uint32_t EMR3;
volatile uint32_t PR3;
}EXTI_Core_TypeDef;






typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR1;
  volatile uint32_t OPTKEYR;
  volatile uint32_t CR1;
  volatile uint32_t SR1;
  volatile uint32_t CCR1;
  volatile uint32_t OPTCR;
  volatile uint32_t OPTSR_CUR;
  volatile uint32_t OPTSR_PRG;
  volatile uint32_t OPTCCR;
  volatile uint32_t PRAR_CUR1;
  volatile uint32_t PRAR_PRG1;
  volatile uint32_t SCAR_CUR1;
  volatile uint32_t SCAR_PRG1;
  volatile uint32_t WPSN_CUR1;
  volatile uint32_t WPSN_PRG1;
  volatile uint32_t BOOT_CUR;
  volatile uint32_t BOOT_PRG;
  uint32_t RESERVED0[2];
  volatile uint32_t CRCCR1;
  volatile uint32_t CRCSADD1;
  volatile uint32_t CRCEADD1;
  volatile uint32_t CRCDATA;
  volatile uint32_t ECC_FA1;
  uint32_t RESERVED1[40];
  volatile uint32_t KEYR2;
  uint32_t RESERVED2;
  volatile uint32_t CR2;
  volatile uint32_t SR2;
  volatile uint32_t CCR2;
  uint32_t RESERVED3[4];
  volatile uint32_t PRAR_CUR2;
  volatile uint32_t PRAR_PRG2;
  volatile uint32_t SCAR_CUR2;
  volatile uint32_t SCAR_PRG2;
  volatile uint32_t WPSN_CUR2;
  volatile uint32_t WPSN_PRG2;
  uint32_t RESERVED4[4];
  volatile uint32_t CRCCR2;
  volatile uint32_t CRCSADD2;
  volatile uint32_t CRCEADD2;
  volatile uint32_t CRCDATA2;
  volatile uint32_t ECC_FA2;
} FLASH_TypeDef;





typedef struct
{
  volatile uint32_t BTCR[8];
} FMC_Bank1_TypeDef;





typedef struct
{
  volatile uint32_t BWTR[7];
} FMC_Bank1E_TypeDef;





typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t RESERVED0;
  volatile uint32_t ECCR2;
} FMC_Bank2_TypeDef;





typedef struct
{
  volatile uint32_t PCR;
  volatile uint32_t SR;
  volatile uint32_t PMEM;
  volatile uint32_t PATT;
  uint32_t RESERVED;
  volatile uint32_t ECCR;
} FMC_Bank3_TypeDef;






typedef struct
{
  volatile uint32_t SDCR[2];
  volatile uint32_t SDTR[2];
  volatile uint32_t SDCMR;
  volatile uint32_t SDRTR;
  volatile uint32_t SDSR;
} FMC_Bank5_6_TypeDef;





typedef struct
{
  volatile uint32_t MODER;
  volatile uint32_t OTYPER;
  volatile uint32_t OSPEEDR;
  volatile uint32_t PUPDR;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t LCKR;
  volatile uint32_t AFR[2];
} GPIO_TypeDef;





typedef struct
{
  volatile uint32_t CSR;
  volatile uint32_t OTR;
  volatile uint32_t HSOTR;
} OPAMP_TypeDef;





typedef struct
{
 uint32_t RESERVED1;
 volatile uint32_t PMCR;
 volatile uint32_t EXTICR[4];
 volatile uint32_t CFGR;
 uint32_t RESERVED2;
 volatile uint32_t CCCSR;
 volatile uint32_t CCVR;
 volatile uint32_t CCCR;
 volatile uint32_t PWRCR;
  uint32_t RESERVED3[61];
  volatile uint32_t PKGR;
  uint32_t RESERVED4[118];
 volatile uint32_t UR0;
 volatile uint32_t UR1;
 volatile uint32_t UR2;
 volatile uint32_t UR3;
 volatile uint32_t UR4;
 volatile uint32_t UR5;
 volatile uint32_t UR6;
 volatile uint32_t UR7;
 volatile uint32_t UR8;
 volatile uint32_t UR9;
 volatile uint32_t UR10;
 volatile uint32_t UR11;
 volatile uint32_t UR12;
 volatile uint32_t UR13;
 volatile uint32_t UR14;
 volatile uint32_t UR15;
 volatile uint32_t UR16;
 volatile uint32_t UR17;

} SYSCFG_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t OAR1;
  volatile uint32_t OAR2;
  volatile uint32_t TIMINGR;
  volatile uint32_t TIMEOUTR;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t PECR;
  volatile uint32_t RXDR;
  volatile uint32_t TXDR;
} I2C_TypeDef;





typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
  volatile uint32_t WINR;
} IWDG_TypeDef;





typedef struct
{
  volatile uint32_t CONFR0;
  volatile uint32_t CONFR1;
  volatile uint32_t CONFR2;
  volatile uint32_t CONFR3;
  volatile uint32_t CONFR4;
  volatile uint32_t CONFR5;
  volatile uint32_t CONFR6;
  volatile uint32_t CONFR7;
  uint32_t Reserved20[4];
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t CFR;
  uint32_t Reserved3c;
  volatile uint32_t DIR;
  volatile uint32_t DOR;
  uint32_t Reserved48[2];
  volatile uint32_t QMEM0[16];
  volatile uint32_t QMEM1[16];
  volatile uint32_t QMEM2[16];
  volatile uint32_t QMEM3[16];
  volatile uint32_t HUFFMIN[16];
  volatile uint32_t HUFFBASE[32];
  volatile uint32_t HUFFSYMB[84];
  volatile uint32_t DHTMEM[103];
  uint32_t Reserved4FC;
  volatile uint32_t HUFFENC_AC0[88];
  volatile uint32_t HUFFENC_AC1[88];
  volatile uint32_t HUFFENC_DC0[8];
  volatile uint32_t HUFFENC_DC1[8];

} JPEG_TypeDef;





typedef struct
{
  uint32_t RESERVED0[2];
  volatile uint32_t SSCR;
  volatile uint32_t BPCR;
  volatile uint32_t AWCR;
  volatile uint32_t TWCR;
  volatile uint32_t GCR;
  uint32_t RESERVED1[2];
  volatile uint32_t SRCR;
  uint32_t RESERVED2[1];
  volatile uint32_t BCCR;
  uint32_t RESERVED3[1];
  volatile uint32_t IER;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t LIPCR;
  volatile uint32_t CPSR;
  volatile uint32_t CDSR;
} LTDC_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t WHPCR;
  volatile uint32_t WVPCR;
  volatile uint32_t CKCR;
  volatile uint32_t PFCR;
  volatile uint32_t CACR;
  volatile uint32_t DCCR;
  volatile uint32_t BFCR;
  uint32_t RESERVED0[2];
  volatile uint32_t CFBAR;
  volatile uint32_t CFBLR;
  volatile uint32_t CFBLNR;
  uint32_t RESERVED1[3];
  volatile uint32_t CLUTWR;

} LTDC_Layer_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CSR1;
  volatile uint32_t CR2;
  volatile uint32_t CR3;
  volatile uint32_t CPUCR;
       uint32_t RESERVED0;
  volatile uint32_t D3CR;
       uint32_t RESERVED1;
  volatile uint32_t WKUPCR;
  volatile uint32_t WKUPFR;
  volatile uint32_t WKUPEPR;
} PWR_TypeDef;





typedef struct
{
 volatile uint32_t CR;
 volatile uint32_t HSICFGR;
 volatile uint32_t CRRCR;
 volatile uint32_t CSICFGR;
 volatile uint32_t CFGR;
 uint32_t RESERVED1;
 volatile uint32_t D1CFGR;
 volatile uint32_t D2CFGR;
 volatile uint32_t D3CFGR;
 uint32_t RESERVED2;
 volatile uint32_t PLLCKSELR;
 volatile uint32_t PLLCFGR;
 volatile uint32_t PLL1DIVR;
 volatile uint32_t PLL1FRACR;
 volatile uint32_t PLL2DIVR;
 volatile uint32_t PLL2FRACR;
 volatile uint32_t PLL3DIVR;
 volatile uint32_t PLL3FRACR;
 uint32_t RESERVED3;
 volatile uint32_t D1CCIPR;
 volatile uint32_t D2CCIP1R;
 volatile uint32_t D2CCIP2R;
 volatile uint32_t D3CCIPR;
 uint32_t RESERVED4;
 volatile uint32_t CIER;
 volatile uint32_t CIFR;
 volatile uint32_t CICR;
 uint32_t RESERVED5;
 volatile uint32_t BDCR;
 volatile uint32_t CSR;
 uint32_t RESERVED6;
 volatile uint32_t AHB3RSTR;
 volatile uint32_t AHB1RSTR;
 volatile uint32_t AHB2RSTR;
 volatile uint32_t AHB4RSTR;
 volatile uint32_t APB3RSTR;
 volatile uint32_t APB1LRSTR;
 volatile uint32_t APB1HRSTR;
 volatile uint32_t APB2RSTR;
 volatile uint32_t APB4RSTR;
 volatile uint32_t GCR;
 uint32_t RESERVED8;
 volatile uint32_t D3AMR;
 uint32_t RESERVED11[9];
 volatile uint32_t RSR;
 volatile uint32_t AHB3ENR;
 volatile uint32_t AHB1ENR;
 volatile uint32_t AHB2ENR;
 volatile uint32_t AHB4ENR;
 volatile uint32_t APB3ENR;
 volatile uint32_t APB1LENR;
 volatile uint32_t APB1HENR;
 volatile uint32_t APB2ENR;
 volatile uint32_t APB4ENR;
 uint32_t RESERVED12;
 volatile uint32_t AHB3LPENR;
 volatile uint32_t AHB1LPENR;
 volatile uint32_t AHB2LPENR;
 volatile uint32_t AHB4LPENR;
 volatile uint32_t APB3LPENR;
 volatile uint32_t APB1LLPENR;
 volatile uint32_t APB1HLPENR;
 volatile uint32_t APB2LPENR;
 volatile uint32_t APB4LPENR;
 uint32_t RESERVED13[4];

} RCC_TypeDef;





typedef struct
{
  volatile uint32_t TR;
  volatile uint32_t DR;
  volatile uint32_t CR;
  volatile uint32_t ISR;
  volatile uint32_t PRER;
  volatile uint32_t WUTR;
       uint32_t RESERVED;
  volatile uint32_t ALRMAR;
  volatile uint32_t ALRMBR;
  volatile uint32_t WPR;
  volatile uint32_t SSR;
  volatile uint32_t SHIFTR;
  volatile uint32_t TSTR;
  volatile uint32_t TSDR;
  volatile uint32_t TSSSR;
  volatile uint32_t CALR;
  volatile uint32_t TAMPCR;
  volatile uint32_t ALRMASSR;
  volatile uint32_t ALRMBSSR;
  volatile uint32_t OR;
  volatile uint32_t BKP0R;
  volatile uint32_t BKP1R;
  volatile uint32_t BKP2R;
  volatile uint32_t BKP3R;
  volatile uint32_t BKP4R;
  volatile uint32_t BKP5R;
  volatile uint32_t BKP6R;
  volatile uint32_t BKP7R;
  volatile uint32_t BKP8R;
  volatile uint32_t BKP9R;
  volatile uint32_t BKP10R;
  volatile uint32_t BKP11R;
  volatile uint32_t BKP12R;
  volatile uint32_t BKP13R;
  volatile uint32_t BKP14R;
  volatile uint32_t BKP15R;
  volatile uint32_t BKP16R;
  volatile uint32_t BKP17R;
  volatile uint32_t BKP18R;
  volatile uint32_t BKP19R;
  volatile uint32_t BKP20R;
  volatile uint32_t BKP21R;
  volatile uint32_t BKP22R;
  volatile uint32_t BKP23R;
  volatile uint32_t BKP24R;
  volatile uint32_t BKP25R;
  volatile uint32_t BKP26R;
  volatile uint32_t BKP27R;
  volatile uint32_t BKP28R;
  volatile uint32_t BKP29R;
  volatile uint32_t BKP30R;
  volatile uint32_t BKP31R;
} RTC_TypeDef;





typedef struct
{
  volatile uint32_t GCR;
  uint32_t RESERVED0[16];
  volatile uint32_t PDMCR;
  volatile uint32_t PDMDLY;
} SAI_TypeDef;

typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t FRCR;
  volatile uint32_t SLOTR;
  volatile uint32_t IMR;
  volatile uint32_t SR;
  volatile uint32_t CLRFR;
  volatile uint32_t DR;
} SAI_Block_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t IMR;
  volatile uint32_t SR;
  volatile uint32_t IFCR;
  volatile uint32_t DR;
  volatile uint32_t CSR;
  volatile uint32_t DIR;
  uint32_t RESERVED2;
} SPDIFRX_TypeDef;






typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  volatile uint32_t ACKTIME;
  uint32_t RESERVED0[3];
  volatile uint32_t IDMACTRL;
  volatile uint32_t IDMABSIZE;
  volatile uint32_t IDMABASE0;
  volatile uint32_t IDMABASE1;
  uint32_t RESERVED1[8];
  volatile uint32_t FIFO;
  uint32_t RESERVED2[222];
  volatile uint32_t IPVR;
} SDMMC_TypeDef;






typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
} DLYB_TypeDef;





typedef struct
{
  volatile uint32_t R[32];
  volatile uint32_t RLR[32];
  volatile uint32_t C1IER;
  volatile uint32_t C1ICR;
  volatile uint32_t C1ISR;
  volatile uint32_t C1MISR;
  uint32_t Reserved[12];
  volatile uint32_t CR;
  volatile uint32_t KEYR;

} HSEM_TypeDef;

typedef struct
{
  volatile uint32_t IER;
  volatile uint32_t ICR;
  volatile uint32_t ISR;
  volatile uint32_t MISR;
} HSEM_Common_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t CFG1;
  volatile uint32_t CFG2;
  volatile uint32_t IER;
  volatile uint32_t SR;
  volatile uint32_t IFCR;
  uint32_t RESERVED0;
  volatile uint32_t TXDR;
  uint32_t RESERVED1[3];
  volatile uint32_t RXDR;
  uint32_t RESERVED2[3];
  volatile uint32_t CRCPOLY;
  volatile uint32_t TXCRC;
  volatile uint32_t RXCRC;
  volatile uint32_t UDRDR;
  volatile uint32_t I2SCFGR;

} SPI_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t DCR;
  volatile uint32_t SR;
  volatile uint32_t FCR;
  volatile uint32_t DLR;
  volatile uint32_t CCR;
  volatile uint32_t AR;
  volatile uint32_t ABR;
  volatile uint32_t DR;
  volatile uint32_t PSMKR;
  volatile uint32_t PSMAR;
  volatile uint32_t PIR;
  volatile uint32_t LPTR;
} QUADSPI_TypeDef;





typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMCR;
  volatile uint32_t DIER;
  volatile uint32_t SR;
  volatile uint32_t EGR;
  volatile uint32_t CCMR1;
  volatile uint32_t CCMR2;
  volatile uint32_t CCER;
  volatile uint32_t CNT;
  volatile uint32_t PSC;
  volatile uint32_t ARR;
  volatile uint32_t RCR;
  volatile uint32_t CCR1;
  volatile uint32_t CCR2;
  volatile uint32_t CCR3;
  volatile uint32_t CCR4;
  volatile uint32_t BDTR;
  volatile uint32_t DCR;
  volatile uint32_t DMAR;
  uint32_t RESERVED1;
  volatile uint32_t CCMR3;
  volatile uint32_t CCR5;
  volatile uint32_t CCR6;
  volatile uint32_t AF1;
  volatile uint32_t AF2;
  volatile uint32_t TISEL;
} TIM_TypeDef;




typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t IER;
  volatile uint32_t CFGR;
  volatile uint32_t CR;
  volatile uint32_t CMP;
  volatile uint32_t ARR;
  volatile uint32_t CNT;
  uint32_t RESERVED1;
  volatile uint32_t CFGR2;
} LPTIM_TypeDef;




typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t ICFR;
  volatile uint32_t OR;
} COMPOPT_TypeDef;

typedef struct
{
  volatile uint32_t CFGR;
} COMP_TypeDef;

typedef struct
{
  volatile uint32_t CFGR;
} COMP_Common_TypeDef;




typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t CR3;
  volatile uint32_t BRR;
  volatile uint32_t GTPR;
  volatile uint32_t RTOR;
  volatile uint32_t RQR;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t RDR;
  volatile uint32_t TDR;
  volatile uint32_t PRESC;
} USART_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t BRR;
    uint32_t RESERVED1;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t IER;
  volatile uint32_t RFL;
  volatile uint32_t TDR;
  volatile uint32_t RDR;
  volatile uint32_t OR;
} SWPMI_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t FAR;
  volatile uint32_t FDRL;
  volatile uint32_t FDRH;
  volatile uint32_t FECR;
} RAMECC_MonitorTypeDef;

typedef struct
{
  volatile uint32_t IER;
} RAMECC_TypeDef;
# 1664 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h"
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MISR;
  volatile uint32_t MICR;
  volatile uint32_t MDIER;
  volatile uint32_t MCNTR;
  volatile uint32_t MPER;
  volatile uint32_t MREP;
  volatile uint32_t MCMP1R;
  uint32_t RESERVED0;
  volatile uint32_t MCMP2R;
  volatile uint32_t MCMP3R;
  volatile uint32_t MCMP4R;
  uint32_t RESERVED1[20];
}HRTIM_Master_TypeDef;


typedef struct
{
  volatile uint32_t TIMxCR;
  volatile uint32_t TIMxISR;
  volatile uint32_t TIMxICR;
  volatile uint32_t TIMxDIER;
  volatile uint32_t CNTxR;
  volatile uint32_t PERxR;
  volatile uint32_t REPxR;
  volatile uint32_t CMP1xR;
  volatile uint32_t CMP1CxR;
  volatile uint32_t CMP2xR;
  volatile uint32_t CMP3xR;
  volatile uint32_t CMP4xR;
  volatile uint32_t CPT1xR;
  volatile uint32_t CPT2xR;
  volatile uint32_t DTxR;
  volatile uint32_t SETx1R;
  volatile uint32_t RSTx1R;
  volatile uint32_t SETx2R;
  volatile uint32_t RSTx2R;
  volatile uint32_t EEFxR1;
  volatile uint32_t EEFxR2;
  volatile uint32_t RSTxR;
  volatile uint32_t CHPxR;
  volatile uint32_t CPT1xCR;
  volatile uint32_t CPT2xCR;
  volatile uint32_t OUTxR;
  volatile uint32_t FLTxR;
  uint32_t RESERVED0[5];
}HRTIM_Timerx_TypeDef;


typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t ISR;
  volatile uint32_t ICR;
  volatile uint32_t IER;
  volatile uint32_t OENR;
  volatile uint32_t ODISR;
  volatile uint32_t ODSR;
  volatile uint32_t BMCR;
  volatile uint32_t BMTRGR;
  volatile uint32_t BMCMPR;
  volatile uint32_t BMPER;
  volatile uint32_t EECR1;
  volatile uint32_t EECR2;
  volatile uint32_t EECR3;
  volatile uint32_t ADC1R;
  volatile uint32_t ADC2R;
  volatile uint32_t ADC3R;
  volatile uint32_t ADC4R;
  volatile uint32_t RESERVED0;
  volatile uint32_t FLTINR1;
  volatile uint32_t FLTINR2;
  volatile uint32_t BDMUPR;
  volatile uint32_t BDTAUPR;
  volatile uint32_t BDTBUPR;
  volatile uint32_t BDTCUPR;
  volatile uint32_t BDTDUPR;
  volatile uint32_t BDTEUPR;
  volatile uint32_t BDMADR;
}HRTIM_Common_TypeDef;


typedef struct {
  HRTIM_Master_TypeDef sMasterRegs;
  HRTIM_Timerx_TypeDef sTimerxRegs[5];
  uint32_t RESERVED0[32];
  HRTIM_Common_TypeDef sCommonRegs;
}HRTIM_TypeDef;




typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t DR;
} RNG_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t WRFR;
  volatile uint32_t CWRFR;
  volatile uint32_t RDFR;
  volatile uint32_t CRDFR;
  volatile uint32_t SR;
  volatile uint32_t CLRFR;
  uint32_t RESERVED[57];
  volatile uint32_t DINR0;
  volatile uint32_t DINR1;
  volatile uint32_t DINR2;
  volatile uint32_t DINR3;
  volatile uint32_t DINR4;
  volatile uint32_t DINR5;
  volatile uint32_t DINR6;
  volatile uint32_t DINR7;
  volatile uint32_t DINR8;
  volatile uint32_t DINR9;
  volatile uint32_t DINR10;
  volatile uint32_t DINR11;
  volatile uint32_t DINR12;
  volatile uint32_t DINR13;
  volatile uint32_t DINR14;
  volatile uint32_t DINR15;
  volatile uint32_t DINR16;
  volatile uint32_t DINR17;
  volatile uint32_t DINR18;
  volatile uint32_t DINR19;
  volatile uint32_t DINR20;
  volatile uint32_t DINR21;
  volatile uint32_t DINR22;
  volatile uint32_t DINR23;
  volatile uint32_t DINR24;
  volatile uint32_t DINR25;
  volatile uint32_t DINR26;
  volatile uint32_t DINR27;
  volatile uint32_t DINR28;
  volatile uint32_t DINR29;
  volatile uint32_t DINR30;
  volatile uint32_t DINR31;
  volatile uint32_t DOUTR0;
  volatile uint32_t DOUTR1;
  volatile uint32_t DOUTR2;
  volatile uint32_t DOUTR3;
  volatile uint32_t DOUTR4;
  volatile uint32_t DOUTR5;
  volatile uint32_t DOUTR6;
  volatile uint32_t DOUTR7;
  volatile uint32_t DOUTR8;
  volatile uint32_t DOUTR9;
  volatile uint32_t DOUTR10;
  volatile uint32_t DOUTR11;
  volatile uint32_t DOUTR12;
  volatile uint32_t DOUTR13;
  volatile uint32_t DOUTR14;
  volatile uint32_t DOUTR15;
  volatile uint32_t DOUTR16;
  volatile uint32_t DOUTR17;
  volatile uint32_t DOUTR18;
  volatile uint32_t DOUTR19;
  volatile uint32_t DOUTR20;
  volatile uint32_t DOUTR21;
  volatile uint32_t DOUTR22;
  volatile uint32_t DOUTR23;
  volatile uint32_t DOUTR24;
  volatile uint32_t DOUTR25;
  volatile uint32_t DOUTR26;
  volatile uint32_t DOUTR27;
  volatile uint32_t DOUTR28;
  volatile uint32_t DOUTR29;
  volatile uint32_t DOUTR30;
  volatile uint32_t DOUTR31;
} MDIOS_TypeDef;





typedef struct
{
 volatile uint32_t GOTGCTL;
  volatile uint32_t GOTGINT;
  volatile uint32_t GAHBCFG;
  volatile uint32_t GUSBCFG;
  volatile uint32_t GRSTCTL;
  volatile uint32_t GINTSTS;
  volatile uint32_t GINTMSK;
  volatile uint32_t GRXSTSR;
  volatile uint32_t GRXSTSP;
  volatile uint32_t GRXFSIZ;
  volatile uint32_t DIEPTXF0_HNPTXFSIZ;
  volatile uint32_t HNPTXSTS;
  uint32_t Reserved30[2];
  volatile uint32_t GCCFG;
  volatile uint32_t CID;
  volatile uint32_t GSNPSID;
  volatile uint32_t GHWCFG1;
  volatile uint32_t GHWCFG2;
  volatile uint32_t GHWCFG3;
  uint32_t Reserved6;
  volatile uint32_t GLPMCFG;
  volatile uint32_t GPWRDN;
  volatile uint32_t GDFIFOCFG;
   volatile uint32_t GADPCTL;
    uint32_t Reserved43[39];
  volatile uint32_t HPTXFSIZ;
  volatile uint32_t DIEPTXF[0x0F];
} USB_OTG_GlobalTypeDef;





typedef struct
{
  volatile uint32_t DCFG;
  volatile uint32_t DCTL;
  volatile uint32_t DSTS;
  uint32_t Reserved0C;
  volatile uint32_t DIEPMSK;
  volatile uint32_t DOEPMSK;
  volatile uint32_t DAINT;
  volatile uint32_t DAINTMSK;
  uint32_t Reserved20;
  uint32_t Reserved9;
  volatile uint32_t DVBUSDIS;
  volatile uint32_t DVBUSPULSE;
  volatile uint32_t DTHRCTL;
  volatile uint32_t DIEPEMPMSK;
  volatile uint32_t DEACHINT;
  volatile uint32_t DEACHMSK;
  uint32_t Reserved40;
  volatile uint32_t DINEP1MSK;
  uint32_t Reserved44[15];
  volatile uint32_t DOUTEP1MSK;
} USB_OTG_DeviceTypeDef;





typedef struct
{
  volatile uint32_t DIEPCTL;
  uint32_t Reserved04;
  volatile uint32_t DIEPINT;
  uint32_t Reserved0C;
  volatile uint32_t DIEPTSIZ;
  volatile uint32_t DIEPDMA;
  volatile uint32_t DTXFSTS;
  uint32_t Reserved18;
} USB_OTG_INEndpointTypeDef;





typedef struct
{
  volatile uint32_t DOEPCTL;
  uint32_t Reserved04;
  volatile uint32_t DOEPINT;
  uint32_t Reserved0C;
  volatile uint32_t DOEPTSIZ;
  volatile uint32_t DOEPDMA;
  uint32_t Reserved18[2];
} USB_OTG_OUTEndpointTypeDef;





typedef struct
{
  volatile uint32_t HCFG;
  volatile uint32_t HFIR;
  volatile uint32_t HFNUM;
  uint32_t Reserved40C;
  volatile uint32_t HPTXSTS;
  volatile uint32_t HAINT;
  volatile uint32_t HAINTMSK;
} USB_OTG_HostTypeDef;




typedef struct
{
  volatile uint32_t HCCHAR;
  volatile uint32_t HCSPLT;
  volatile uint32_t HCINT;
  volatile uint32_t HCINTMSK;
  volatile uint32_t HCTSIZ;
  volatile uint32_t HCDMA;
  uint32_t Reserved[2];
} USB_OTG_HostChannelTypeDef;
# 1977 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h"
typedef struct
{
  uint32_t RESERVED0[2036];
  volatile uint32_t AXI_PERIPH_ID_4;
  uint32_t AXI_PERIPH_ID_5;
  uint32_t AXI_PERIPH_ID_6;
  uint32_t AXI_PERIPH_ID_7;
  volatile uint32_t AXI_PERIPH_ID_0;
  volatile uint32_t AXI_PERIPH_ID_1;
  volatile uint32_t AXI_PERIPH_ID_2;
  volatile uint32_t AXI_PERIPH_ID_3;
  volatile uint32_t AXI_COMP_ID_0;
  volatile uint32_t AXI_COMP_ID_1;
  volatile uint32_t AXI_COMP_ID_2;
  volatile uint32_t AXI_COMP_ID_3;
  uint32_t RESERVED1[2];
  volatile uint32_t AXI_TARG1_FN_MOD_ISS_BM;
  uint32_t RESERVED2[6];
  volatile uint32_t AXI_TARG1_FN_MOD2;
  uint32_t RESERVED3;
  volatile uint32_t AXI_TARG1_FN_MOD_LB;
  uint32_t RESERVED4[54];
  volatile uint32_t AXI_TARG1_FN_MOD;
  uint32_t RESERVED5[959];
  volatile uint32_t AXI_TARG2_FN_MOD_ISS_BM;
  uint32_t RESERVED6[6];
  volatile uint32_t AXI_TARG2_FN_MOD2;
  uint32_t RESERVED7;
  volatile uint32_t AXI_TARG2_FN_MOD_LB;
  uint32_t RESERVED8[54];
  volatile uint32_t AXI_TARG2_FN_MOD;
  uint32_t RESERVED9[959];
  volatile uint32_t AXI_TARG3_FN_MOD_ISS_BM;
  uint32_t RESERVED10[1023];
  volatile uint32_t AXI_TARG4_FN_MOD_ISS_BM;
  uint32_t RESERVED11[1023];
  volatile uint32_t AXI_TARG5_FN_MOD_ISS_BM;
  uint32_t RESERVED12[1023];
  volatile uint32_t AXI_TARG6_FN_MOD_ISS_BM;
  uint32_t RESERVED13[1023];
  volatile uint32_t AXI_TARG7_FN_MOD_ISS_BM;
  uint32_t RESERVED14[6];
  volatile uint32_t AXI_TARG7_FN_MOD2;
  uint32_t RESERVED15;
  volatile uint32_t AXI_TARG7_FN_MOD_LB;
  uint32_t RESERVED16[54];
  volatile uint32_t AXI_TARG7_FN_MOD;
  uint32_t RESERVED17[59334];
  volatile uint32_t AXI_INI1_FN_MOD2;
  volatile uint32_t AXI_INI1_FN_MOD_AHB;
  uint32_t RESERVED18[53];
  volatile uint32_t AXI_INI1_READ_QOS;
  volatile uint32_t AXI_INI1_WRITE_QOS;
  volatile uint32_t AXI_INI1_FN_MOD;
  uint32_t RESERVED19[1021];
  volatile uint32_t AXI_INI2_READ_QOS;
  volatile uint32_t AXI_INI2_WRITE_QOS;
  volatile uint32_t AXI_INI2_FN_MOD;
  uint32_t RESERVED20[966];
  volatile uint32_t AXI_INI3_FN_MOD2;
  volatile uint32_t AXI_INI3_FN_MOD_AHB;
  uint32_t RESERVED21[53];
  volatile uint32_t AXI_INI3_READ_QOS;
  volatile uint32_t AXI_INI3_WRITE_QOS;
  volatile uint32_t AXI_INI3_FN_MOD;
  uint32_t RESERVED22[1021];
  volatile uint32_t AXI_INI4_READ_QOS;
  volatile uint32_t AXI_INI4_WRITE_QOS;
  volatile uint32_t AXI_INI4_FN_MOD;
  uint32_t RESERVED23[1021];
  volatile uint32_t AXI_INI5_READ_QOS;
  volatile uint32_t AXI_INI5_WRITE_QOS;
  volatile uint32_t AXI_INI5_FN_MOD;
  uint32_t RESERVED24[1021];
  volatile uint32_t AXI_INI6_READ_QOS;
  volatile uint32_t AXI_INI6_WRITE_QOS;
  volatile uint32_t AXI_INI6_FN_MOD;

} GPV_TypeDef;
# 127 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h" 2
# 180 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h"
typedef enum
{
  RESET = 0,
  SET = !RESET
} FlagStatus, ITStatus;

typedef enum
{
  DISABLE = 0,
  ENABLE = !DISABLE
} FunctionalState;


typedef enum
{
  SUCCESS = 0,
  ERROR = !SUCCESS
} ErrorStatus;
# 283 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h" 1
# 284 "../Drivers/CMSIS/Device/ST/STM32H7xx/Include\\stm32h7xx.h" 2
# 30 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h" 2
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h" 1
# 31 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h" 2
# 1 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 1 3
# 38 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 3
  typedef signed int ptrdiff_t;
# 71 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 3
      typedef unsigned short wchar_t;
# 32 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_def.h" 2







typedef enum
{
  HAL_OK = 0x00,
  HAL_ERROR = 0x01,
  HAL_BUSY = 0x02,
  HAL_TIMEOUT = 0x03
} HAL_StatusTypeDef;




typedef enum
{
  HAL_UNLOCKED = 0x00,
  HAL_LOCKED = 0x01
} HAL_LockTypeDef;
# 28 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h" 2
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
typedef struct
{
  uint32_t PLLState;


  uint32_t PLLSource;


  uint32_t PLLM;


  uint32_t PLLN;




  uint32_t PLLP;



  uint32_t PLLQ;


  uint32_t PLLR;

  uint32_t PLLRGE;

  uint32_t PLLVCOSEL;


  uint32_t PLLFRACN;


} RCC_PLLInitTypeDef;




typedef struct
{
  uint32_t OscillatorType;


  uint32_t HSEState;


  uint32_t LSEState;


  uint32_t HSIState;


  uint32_t HSICalibrationValue;



  uint32_t LSIState;


  uint32_t HSI48State;


  uint32_t CSIState;


  uint32_t CSICalibrationValue;



  RCC_PLLInitTypeDef PLL;

} RCC_OscInitTypeDef;




typedef struct
{
  uint32_t ClockType;


  uint32_t SYSCLKSource;


  uint32_t SYSCLKDivider;


  uint32_t AHBCLKDivider;


  uint32_t APB3CLKDivider;


  uint32_t APB1CLKDivider;

  uint32_t APB2CLKDivider;

  uint32_t APB4CLKDivider;

} RCC_ClkInitTypeDef;
# 7958 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h" 1
# 45 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
typedef struct
{

  uint32_t PLL2M;


  uint32_t PLL2N;




  uint32_t PLL2P;



  uint32_t PLL2Q;


  uint32_t PLL2R;

  uint32_t PLL2RGE;

  uint32_t PLL2VCOSEL;


  uint32_t PLL2FRACN;

} RCC_PLL2InitTypeDef;




typedef struct
{

  uint32_t PLL3M;


  uint32_t PLL3N;




  uint32_t PLL3P;



  uint32_t PLL3Q;


  uint32_t PLL3R;

  uint32_t PLL3RGE;

  uint32_t PLL3VCOSEL;


  uint32_t PLL3FRACN;

} RCC_PLL3InitTypeDef;




typedef struct
{
  uint32_t PLL1_P_Frequency;
  uint32_t PLL1_Q_Frequency;
  uint32_t PLL1_R_Frequency;
} PLL1_ClocksTypeDef;




typedef struct
{
  uint32_t PLL2_P_Frequency;
  uint32_t PLL2_Q_Frequency;
  uint32_t PLL2_R_Frequency;
} PLL2_ClocksTypeDef;




typedef struct
{
  uint32_t PLL3_P_Frequency;
  uint32_t PLL3_Q_Frequency;
  uint32_t PLL3_R_Frequency;
} PLL3_ClocksTypeDef;





typedef struct
{
  uint64_t PeriphClockSelection;


  RCC_PLL2InitTypeDef PLL2;


  RCC_PLL3InitTypeDef PLL3;


  uint32_t FmcClockSelection;



  uint32_t QspiClockSelection;
# 170 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
  uint32_t SdmmcClockSelection;


  uint32_t CkperClockSelection;


  uint32_t Sai1ClockSelection;



  uint32_t Sai23ClockSelection;
# 194 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
  uint32_t Spi123ClockSelection;


  uint32_t Spi45ClockSelection;


  uint32_t SpdifrxClockSelection;


  uint32_t Dfsdm1ClockSelection;
# 212 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
  uint32_t FdcanClockSelection;



  uint32_t Swpmi1ClockSelection;


  uint32_t Usart234578ClockSelection;


  uint32_t Usart16ClockSelection;


  uint32_t RngClockSelection;






  uint32_t I2c123ClockSelection;



  uint32_t UsbClockSelection;


  uint32_t CecClockSelection;


  uint32_t Lptim1ClockSelection;


  uint32_t Lpuart1ClockSelection;


  uint32_t I2c4ClockSelection;


  uint32_t Lptim2ClockSelection;


  uint32_t Lptim345ClockSelection;


  uint32_t AdcClockSelection;


  uint32_t Sai4AClockSelection;


  uint32_t Sai4BClockSelection;



  uint32_t Spi6ClockSelection;


  uint32_t RTCClockSelection;



  uint32_t Hrtim1ClockSelection;



  uint32_t TIMPresSelection;

} RCC_PeriphCLKInitTypeDef;
# 293 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
typedef struct
{
  uint32_t Prescaler;


  uint32_t Source;


  uint32_t Polarity;


  uint32_t ReloadValue;



  uint32_t ErrorLimitValue;


  uint32_t HSI48CalibrationValue;


} RCC_CRSInitTypeDef;




typedef struct
{
  uint32_t ReloadValue;


  uint32_t HSI48CalibrationValue;


  uint32_t FreqErrorCapture;



  uint32_t FreqErrorDirection;




} RCC_CRSSynchroInfoTypeDef;
# 3901 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef *PeriphClkInit);
void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef *PeriphClkInit);
uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint64_t PeriphClk);
uint32_t HAL_RCCEx_GetD1PCLK1Freq(void);
uint32_t HAL_RCCEx_GetD3PCLK1Freq(void);
uint32_t HAL_RCCEx_GetD1SysClockFreq(void);
void HAL_RCCEx_GetPLL1ClockFreq(PLL1_ClocksTypeDef *PLL1_Clocks);
void HAL_RCCEx_GetPLL2ClockFreq(PLL2_ClocksTypeDef *PLL2_Clocks);
void HAL_RCCEx_GetPLL3ClockFreq(PLL3_ClocksTypeDef *PLL3_Clocks);







void HAL_RCCEx_WakeUpStopCLKConfig(uint32_t WakeUpClk);
void HAL_RCCEx_KerWakeUpStopCLKConfig(uint32_t WakeUpClk);
void HAL_RCCEx_EnableLSECSS(void);
void HAL_RCCEx_DisableLSECSS(void);
void HAL_RCCEx_EnableLSECSS_IT(void);
void HAL_RCCEx_LSECSS_IRQHandler(void);
void HAL_RCCEx_LSECSS_Callback(void);




void HAL_RCCEx_WWDGxSysResetConfig(uint32_t RCC_WWDGx);
# 3939 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_rcc_ex.h"
void HAL_RCCEx_CRSConfig(const RCC_CRSInitTypeDef *pInit);
void HAL_RCCEx_CRSSoftwareSynchronizationGenerate(void);
void HAL_RCCEx_CRSGetSynchronizationInfo(RCC_CRSSynchroInfoTypeDef *pSynchroInfo);
uint32_t HAL_RCCEx_CRSWaitSynchronization(uint32_t Timeout);
void HAL_RCCEx_CRS_IRQHandler(void);
void HAL_RCCEx_CRS_SyncOkCallback(void);
void HAL_RCCEx_CRS_SyncWarnCallback(void);
void HAL_RCCEx_CRS_ExpectedSyncCallback(void);
void HAL_RCCEx_CRS_ErrorCallback(uint32_t Error);
# 7959 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h" 2
# 7969 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
HAL_StatusTypeDef HAL_RCC_DeInit(void);
HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
HAL_StatusTypeDef HAL_RCC_ClockConfig(const RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t FLatency);
# 7981 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_rcc.h"
void HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv);
void HAL_RCC_EnableCSS(void);
void HAL_RCC_DisableCSS(void);
uint32_t HAL_RCC_GetSysClockFreq(void);
uint32_t HAL_RCC_GetHCLKFreq(void);
uint32_t HAL_RCC_GetPCLK1Freq(void);
uint32_t HAL_RCC_GetPCLK2Freq(void);
void HAL_RCC_GetOscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
void HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t *pFLatency);

void HAL_RCC_NMI_IRQHandler(void);

void HAL_RCC_CSSCallback(void);
# 246 "../Core/Inc\\stm32h7xx_hal_conf.h" 2




# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h" 1
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h"
typedef struct
{
  uint32_t Pin;


  uint32_t Mode;


  uint32_t Pull;


  uint32_t Speed;


  uint32_t Alternate;

} GPIO_InitTypeDef;




typedef enum
{
  GPIO_PIN_RESET = 0U,
  GPIO_PIN_SET
} GPIO_PinState;
# 244 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_gpio_ex.h" 1
# 245 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h" 2
# 255 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h"
void HAL_GPIO_Init(GPIO_TypeDef *GPIOx, const GPIO_InitTypeDef *GPIO_Init);
void HAL_GPIO_DeInit(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin);
# 265 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_gpio.h"
GPIO_PinState HAL_GPIO_ReadPin(const GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_WritePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState);
void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin);
# 250 "../Core/Inc\\stm32h7xx_hal_conf.h" 2




# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h" 1
# 48 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
typedef struct
{
  uint32_t Request;


  uint32_t Direction;



  uint32_t PeriphInc;


  uint32_t MemInc;


  uint32_t PeriphDataAlignment;


  uint32_t MemDataAlignment;


  uint32_t Mode;




  uint32_t Priority;


  uint32_t FIFOMode;




  uint32_t FIFOThreshold;


  uint32_t MemBurst;





  uint32_t PeriphBurst;




}DMA_InitTypeDef;




typedef enum
{
  HAL_DMA_STATE_RESET = 0x00U,
  HAL_DMA_STATE_READY = 0x01U,
  HAL_DMA_STATE_BUSY = 0x02U,
  HAL_DMA_STATE_ERROR = 0x03U,
  HAL_DMA_STATE_ABORT = 0x04U,
}HAL_DMA_StateTypeDef;




typedef enum
{
  HAL_DMA_FULL_TRANSFER = 0x00U,
  HAL_DMA_HALF_TRANSFER = 0x01U,
}HAL_DMA_LevelCompleteTypeDef;




typedef enum
{
  HAL_DMA_XFER_CPLT_CB_ID = 0x00U,
  HAL_DMA_XFER_HALFCPLT_CB_ID = 0x01U,
  HAL_DMA_XFER_M1CPLT_CB_ID = 0x02U,
  HAL_DMA_XFER_M1HALFCPLT_CB_ID = 0x03U,
  HAL_DMA_XFER_ERROR_CB_ID = 0x04U,
  HAL_DMA_XFER_ABORT_CB_ID = 0x05U,
  HAL_DMA_XFER_ALL_CB_ID = 0x06U
}HAL_DMA_CallbackIDTypeDef;




typedef struct __DMA_HandleTypeDef
{
  void *Instance;

  DMA_InitTypeDef Init;

  HAL_LockTypeDef Lock;

  volatile HAL_DMA_StateTypeDef State;

  void *Parent;

  void (* XferCpltCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferHalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferM1CpltCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferM1HalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferErrorCallback)( struct __DMA_HandleTypeDef * hdma);

  void (* XferAbortCallback)( struct __DMA_HandleTypeDef * hdma);

 volatile uint32_t ErrorCode;

 uint32_t StreamBaseAddress;

 uint32_t StreamIndex;

 DMAMUX_Channel_TypeDef *DMAmuxChannel;

 DMAMUX_ChannelStatus_TypeDef *DMAmuxChannelStatus;

 uint32_t DMAmuxChannelStatusMask;


 DMAMUX_RequestGen_TypeDef *DMAmuxRequestGen;

 DMAMUX_RequestGenStatus_TypeDef *DMAmuxRequestGenStatus;

 uint32_t DMAmuxRequestGenStatusMask;

}DMA_HandleTypeDef;
# 1174 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_dma_ex.h" 1
# 47 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_dma_ex.h"
typedef enum
{
  MEMORY0 = 0x00U,
  MEMORY1 = 0x01U,

}HAL_DMA_MemoryTypeDef;




typedef struct
{
  uint32_t SyncSignalID;


  uint32_t SyncPolarity;


  FunctionalState SyncEnable;



  FunctionalState EventEnable;


  uint32_t RequestNumber;


}HAL_DMA_MuxSyncConfigTypeDef;





typedef struct
{
 uint32_t SignalID;


  uint32_t Polarity;


  uint32_t RequestNumber;


}HAL_DMA_MuxRequestGeneratorConfigTypeDef;
# 237 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_dma_ex.h"
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_ChangeMemory(DMA_HandleTypeDef *hdma, uint32_t Address, HAL_DMA_MemoryTypeDef memory);
HAL_StatusTypeDef HAL_DMAEx_ConfigMuxSync(DMA_HandleTypeDef *hdma, HAL_DMA_MuxSyncConfigTypeDef *pSyncConfig);
HAL_StatusTypeDef HAL_DMAEx_ConfigMuxRequestGenerator (DMA_HandleTypeDef *hdma, HAL_DMA_MuxRequestGeneratorConfigTypeDef *pRequestGeneratorConfig);
HAL_StatusTypeDef HAL_DMAEx_EnableMuxRequestGenerator (DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMAEx_DisableMuxRequestGenerator (DMA_HandleTypeDef *hdma);

void HAL_DMAEx_MUX_IRQHandler(DMA_HandleTypeDef *hdma);
# 1175 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h" 2
# 1187 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_DeInit(DMA_HandleTypeDef *hdma);
# 1197 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
HAL_StatusTypeDef HAL_DMA_Start (DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, HAL_DMA_LevelCompleteTypeDef CompleteLevel, uint32_t Timeout);
void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID, void (* pCallback)(DMA_HandleTypeDef *_hdma));
HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID);
# 1214 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_dma.h"
HAL_DMA_StateTypeDef HAL_DMA_GetState(const DMA_HandleTypeDef *hdma);
uint32_t HAL_DMA_GetError(const DMA_HandleTypeDef *hdma);
# 254 "../Core/Inc\\stm32h7xx_hal_conf.h" 2




# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h" 1
# 48 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
typedef struct
{

  uint32_t Request;


  uint32_t TransferTriggerMode;



  uint32_t Priority;


  uint32_t Endianness;


  uint32_t SourceInc;


  uint32_t DestinationInc;


  uint32_t SourceDataSize;


  uint32_t DestDataSize;



  uint32_t DataAlignment;


  uint32_t BufferTransferLength;


  uint32_t SourceBurst;







  uint32_t DestBurst;







  int32_t SourceBlockAddressOffset;






  int32_t DestBlockAddressOffset;





}MDMA_InitTypeDef;
# 121 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
typedef struct
{
  volatile uint32_t CTCR;
  volatile uint32_t CBNDTR;
  volatile uint32_t CSAR;
  volatile uint32_t CDAR;
  volatile uint32_t CBRUR;
  volatile uint32_t CLAR;
  volatile uint32_t CTBR;
  volatile uint32_t Reserved;
  volatile uint32_t CMAR;
  volatile uint32_t CMDR;

}MDMA_LinkNodeTypeDef;





typedef struct
{
  MDMA_InitTypeDef Init;
  uint32_t SrcAddress;
  uint32_t DstAddress;
  uint32_t BlockDataLength;
  uint32_t BlockCount;

  uint32_t PostRequestMaskAddress;


  uint32_t PostRequestMaskData;



}MDMA_LinkNodeConfTypeDef;





typedef enum
{
  HAL_MDMA_STATE_RESET = 0x00U,
  HAL_MDMA_STATE_READY = 0x01U,
  HAL_MDMA_STATE_BUSY = 0x02U,
  HAL_MDMA_STATE_ERROR = 0x03U,
  HAL_MDMA_STATE_ABORT = 0x04U,

}HAL_MDMA_StateTypeDef;




typedef enum
{
  HAL_MDMA_FULL_TRANSFER = 0x00U,
  HAL_MDMA_BUFFER_TRANSFER = 0x01U,
  HAL_MDMA_BLOCK_TRANSFER = 0x02U,
  HAL_MDMA_REPEAT_BLOCK_TRANSFER = 0x03U

}HAL_MDMA_LevelCompleteTypeDef;




typedef enum
{
  HAL_MDMA_XFER_CPLT_CB_ID = 0x00U,
  HAL_MDMA_XFER_BUFFERCPLT_CB_ID = 0x01U,
  HAL_MDMA_XFER_BLOCKCPLT_CB_ID = 0x02U,
  HAL_MDMA_XFER_REPBLOCKCPLT_CB_ID = 0x03U,
  HAL_MDMA_XFER_ERROR_CB_ID = 0x04U,
  HAL_MDMA_XFER_ABORT_CB_ID = 0x05U,
  HAL_MDMA_XFER_ALL_CB_ID = 0x06U

}HAL_MDMA_CallbackIDTypeDef;





typedef struct __MDMA_HandleTypeDef
{
  MDMA_Channel_TypeDef *Instance;

  MDMA_InitTypeDef Init;

  HAL_LockTypeDef Lock;

  volatile HAL_MDMA_StateTypeDef State;

  void *Parent;

  void (* XferCpltCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferBufferCpltCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferBlockCpltCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferRepeatBlockCpltCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferErrorCallback)( struct __MDMA_HandleTypeDef * hmdma);

  void (* XferAbortCallback)( struct __MDMA_HandleTypeDef * hmdma);


  MDMA_LinkNodeTypeDef *FirstLinkedListNodeAddress;





  MDMA_LinkNodeTypeDef *LastLinkedListNodeAddress;



  uint32_t LinkedListNodeCounter;

  volatile uint32_t ErrorCode;

} MDMA_HandleTypeDef;
# 640 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
HAL_StatusTypeDef HAL_MDMA_Init(MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_DeInit (MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_ConfigPostRequestMask(MDMA_HandleTypeDef *hmdma, uint32_t MaskAddress, uint32_t MaskData);

HAL_StatusTypeDef HAL_MDMA_RegisterCallback(MDMA_HandleTypeDef *hmdma, HAL_MDMA_CallbackIDTypeDef CallbackID, void (* pCallback)(MDMA_HandleTypeDef *_hmdma));
HAL_StatusTypeDef HAL_MDMA_UnRegisterCallback(MDMA_HandleTypeDef *hmdma, HAL_MDMA_CallbackIDTypeDef CallbackID);
# 657 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
HAL_StatusTypeDef HAL_MDMA_LinkedList_CreateNode(MDMA_LinkNodeTypeDef *pNode, MDMA_LinkNodeConfTypeDef *pNodeConfig);
HAL_StatusTypeDef HAL_MDMA_LinkedList_AddNode(MDMA_HandleTypeDef *hmdma, MDMA_LinkNodeTypeDef *pNewNode, const MDMA_LinkNodeTypeDef *pPrevNode);
HAL_StatusTypeDef HAL_MDMA_LinkedList_RemoveNode(MDMA_HandleTypeDef *hmdma, MDMA_LinkNodeTypeDef *pNode);
HAL_StatusTypeDef HAL_MDMA_LinkedList_EnableCircularMode(MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_LinkedList_DisableCircularMode(MDMA_HandleTypeDef *hmdma);
# 673 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
HAL_StatusTypeDef HAL_MDMA_Start (MDMA_HandleTypeDef *hmdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t BlockDataLength, uint32_t BlockCount);
HAL_StatusTypeDef HAL_MDMA_Start_IT(MDMA_HandleTypeDef *hmdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t BlockDataLength, uint32_t BlockCount);
HAL_StatusTypeDef HAL_MDMA_Abort(MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_Abort_IT(MDMA_HandleTypeDef *hmdma);
HAL_StatusTypeDef HAL_MDMA_PollForTransfer(MDMA_HandleTypeDef *hmdma, HAL_MDMA_LevelCompleteTypeDef CompleteLevel, uint32_t Timeout);
HAL_StatusTypeDef HAL_MDMA_GenerateSWRequest(MDMA_HandleTypeDef *hmdma);
void HAL_MDMA_IRQHandler(MDMA_HandleTypeDef *hmdma);
# 690 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_mdma.h"
HAL_MDMA_StateTypeDef HAL_MDMA_GetState(const MDMA_HandleTypeDef *hmdma);
uint32_t HAL_MDMA_GetError(const MDMA_HandleTypeDef *hmdma);
# 258 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 294 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_exti.h" 1
# 44 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_exti.h"
typedef enum
{
  HAL_EXTI_COMMON_CB_ID = 0x00U,
} EXTI_CallbackIDTypeDef;





typedef struct
{
  uint32_t Line;
  void (* PendingCallback)(void);
} EXTI_HandleTypeDef;




typedef struct
{
  uint32_t Line;

  uint32_t Mode;

  uint32_t Trigger;

  uint32_t GPIOSel;



  uint32_t PendClearSource;



} EXTI_ConfigTypeDef;
# 497 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_exti.h"
HAL_StatusTypeDef HAL_EXTI_SetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_GetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_ClearConfigLine(const EXTI_HandleTypeDef *hexti);
HAL_StatusTypeDef HAL_EXTI_RegisterCallback(EXTI_HandleTypeDef *hexti, EXTI_CallbackIDTypeDef CallbackID, void (*pPendingCbfn)(void));
HAL_StatusTypeDef HAL_EXTI_GetHandle(EXTI_HandleTypeDef *hexti, uint32_t ExtiLine);
# 511 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_exti.h"
void HAL_EXTI_IRQHandler(const EXTI_HandleTypeDef *hexti);
uint32_t HAL_EXTI_GetPending(const EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_ClearPending(const EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_GenerateSWI(const EXTI_HandleTypeDef *hexti);
# 294 "../Core/Inc\\stm32h7xx_hal_conf.h" 2




# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_cortex.h" 1
# 47 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_cortex.h"
typedef struct
{
  uint8_t Enable;

  uint8_t Number;

  uint32_t BaseAddress;
  uint8_t Size;

  uint8_t SubRegionDisable;

  uint8_t TypeExtField;

  uint8_t AccessPermission;

  uint8_t DisableExec;

  uint8_t IsShareable;

  uint8_t IsCacheable;

  uint8_t IsBufferable;

}MPU_Region_InitTypeDef;
# 293 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_cortex.h"
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup);
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn);
void HAL_NVIC_DisableIRQ(IRQn_Type IRQn);
void HAL_NVIC_SystemReset(void);
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb);
# 308 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_cortex.h"
void HAL_MPU_Enable(uint32_t MPU_Control);
void HAL_MPU_Disable(void);
void HAL_MPU_EnableRegion(uint32_t RegionNumber);
void HAL_MPU_DisableRegion(uint32_t RegionNumber);
void HAL_MPU_ConfigRegion(const MPU_Region_InitTypeDef *MPU_Init);

uint32_t HAL_NVIC_GetPriorityGrouping(void);
void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority);
uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn);
uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn);
void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource);
void HAL_SYSTICK_IRQHandler(void);
void HAL_SYSTICK_Callback(void);
uint32_t HAL_GetCurrentCPUID(void);
# 298 "../Core/Inc\\stm32h7xx_hal_conf.h" 2




# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h" 1
# 31 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h" 1
# 2603 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_DMA_GetRegAddr(const ADC_TypeDef *ADCx, uint32_t Register)
{
  uint32_t data_reg_addr;

  if (Register == (0x00000000UL))
  {

    data_reg_addr = (uint32_t) & (ADCx->DR);
  }
  else
  {

    data_reg_addr = (uint32_t) & ((((((ADCx) == ((ADC_TypeDef *) (((0x40000000UL) + 0x00020000UL) + 0x2000UL))) || ((ADCx) == ((ADC_TypeDef *) (((0x40000000UL) + 0x00020000UL) + 0x2100UL)))) ? ( (((ADC_Common_TypeDef *) (((0x40000000UL) + 0x00020000UL) + 0x2300UL))) ) : ( (((ADC_Common_TypeDef *) (((0x40000000UL) + 0x18020000UL) + 0x6300UL))) ) ))->CDR);
  }

  return data_reg_addr;
}
# 2663 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetCommonClock(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t CommonClock)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0x3UL << (16U)) | (0xFUL << (18U))))) | (CommonClock))));
}
# 2691 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetCommonClock(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0x3UL << (16U)) | (0xFUL << (18U)))));
}
# 2731 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetCommonPathInternalCh(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t PathInternal)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0x1UL << (22U)) | (0x1UL << (23U)) | (0x1UL << (24U))))) | (PathInternal))));
}
# 2753 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetCommonPathInternalCh(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0x1UL << (22U)) | (0x1UL << (23U)) | (0x1UL << (24U)))));
}
# 2788 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetCommonPathInternalChAdd(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t PathInternal)
{
  ((ADCxy_COMMON->CCR) |= (PathInternal));
}
# 2812 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetCommonPathInternalChRem(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t PathInternal)
{
  ((ADCxy_COMMON->CCR) &= ~(PathInternal));
}
# 2859 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetCalibrationOffsetFactor(ADC_TypeDef *ADCx, uint32_t SingleDiff, uint32_t CalibrationFactor)
{





  (((ADCx->CALFACT)) = ((((((ADCx->CALFACT))) & (~(SingleDiff & ((0x7FFUL << (16U)) | (0x7FFUL << (0U)))))) | (CalibrationFactor << (((SingleDiff & (0x00010000UL)) >> ((16UL) - 4UL)) & ~(SingleDiff & (0x7FFUL << (0U))))))));



}
# 2890 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetCalibrationOffsetFactor(const ADC_TypeDef *ADCx, uint32_t SingleDiff)
{







  return (uint32_t)(((ADCx->CALFACT) & ((SingleDiff & ((0x7FFUL << (16U)) | (0x7FFUL << (0U)))))) >> ((SingleDiff & (0x00010000UL)) >> ((16UL) - 4UL)));

}
# 2925 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetCalibrationLinearFactor(ADC_TypeDef *ADCx, uint32_t LinearityWord, uint32_t CalibrationFactor)
{
# 2939 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
  uint32_t timeout_cpu_cycles = (524400UL);
  (((ADCx->CALFACT2)) = ((((((ADCx->CALFACT2))) & (~((0x3FFFFFFFUL << (0U))))) | (CalibrationFactor))));
  (((ADCx->CR)) = ((((((ADCx->CR))) & (~((0x1UL << (16U))))) | (LinearityWord))));
  while ((((ADCx->CR) & (LinearityWord)) == 0UL) && (timeout_cpu_cycles > 0UL))
  {
    timeout_cpu_cycles--;
  }

}
# 2965 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetCalibrationLinearFactor(ADC_TypeDef *ADCx, uint32_t LinearityWord)
{
  uint32_t timeout_cpu_cycles = (524400UL);
  ((ADCx->CR) &= ~(LinearityWord));
  while ((((ADCx->CR) & (LinearityWord)) != 0UL) && (timeout_cpu_cycles > 0UL))
  {
    timeout_cpu_cycles--;
  }



  return (uint32_t)(((ADCx->CALFACT2) & ((0x3FFFFFFFUL << (0U)))));

}
# 2997 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetResolution(ADC_TypeDef *ADCx, uint32_t Resolution)
{
# 3027 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
  if ((((DBGMCU_TypeDef *) (0x5C001000UL))->IDCODE & 0x30000000UL) == 0x10000000UL)
  {
    (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x7UL << (2U))))) | (Resolution))));
  }
  else
  {
    if (((0x4UL << (2U)) ) == Resolution)
    {
      (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x7UL << (2U))))) | (Resolution | 0x0000000CUL))));
    }
    else
    {
      (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x7UL << (2U))))) | (Resolution))));
    }
  }


}
# 3062 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetResolution(const ADC_TypeDef *ADCx)
{
# 3086 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
  if ((((DBGMCU_TypeDef *) (0x5C001000UL))->IDCODE & 0x30000000UL) == 0x10000000UL)
  {
    return (uint32_t)(((ADCx->CFGR) & ((0x7UL << (2U)))));
  }
  else
  {
    if ((uint32_t)(((ADCx->CFGR) & ((0x7UL << (2U))))) == 0x0000001CUL)
    {
      return (((0x4UL << (2U)) ));
    }
    else
    {
      return (uint32_t)(((ADCx->CFGR) & ((0x7UL << (2U)))));
    }
  }


}
# 3156 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetLowPowerMode(ADC_TypeDef *ADCx, uint32_t LowPowerMode)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x1UL << (14U))))) | (LowPowerMode))));
}
# 3207 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetLowPowerMode(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR) & ((0x1UL << (14U)))));
}
# 3243 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetChannelPreselection(ADC_TypeDef *ADCx, uint32_t Channel)
{
# 3253 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
    ADCx->PCSEL |= (1UL << (((((Channel) & ((0xFFFFFUL << (0U)))) == 0UL) ? ( ((Channel) & ((0x1FUL << (26U)))) >> (26UL) ) : ( (uint32_t)(__CLZ(__builtin_arm_rbit((Channel)))) ) ) & 0x1FUL));

}
# 3288 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetChannelPreselection(const ADC_TypeDef *ADCx, uint32_t Channel)
{
# 3302 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
    return (uint32_t)(((ADCx->PCSEL) & (1UL << (((((Channel) & ((0xFFFFFUL << (0U)))) == 0UL) ? ( ((Channel) & ((0x1FUL << (26U)))) >> (26UL) ) : ( (uint32_t)(__CLZ(__builtin_arm_rbit((Channel)))) ) ) & 0x1FUL))));

}
# 3379 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetOffset(ADC_TypeDef *ADCx, uint32_t Offsety, uint32_t Channel, uint32_t OffsetLevel)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->OFR1)) + ((Offsety) << 2UL))));
# 3391 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
  {
    (((*preg)) = ((((((*preg))) & (~((0x1FUL << (26U)) | (0x3FFFFFFUL << (0U))))) | ((Channel & ((0x1FUL << (26U)))) | OffsetLevel))));


  }
}
# 3461 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetOffsetChannel(const ADC_TypeDef *ADCx, uint32_t Offsety)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->OFR1)) + ((Offsety) << 2UL))));

  return (uint32_t) ((*preg) & ((0x1FUL << (26U))));
}
# 3487 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetOffsetLevel(const ADC_TypeDef *ADCx, uint32_t Offsety)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->OFR1)) + ((Offsety) << 2UL))));

  return (uint32_t) ((*preg) & ((0x3FFFFFFUL << (0U))));
}
# 3510 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetDataRightShift(ADC_TypeDef *ADCx, uint32_t Offsety, uint32_t RigthShift)
{
  (((ADCx->CFGR2)) = ((((((ADCx->CFGR2))) & (~(((0x1UL << (11U)) | (0x1UL << (12U)) | (0x1UL << (13U)) | (0x1UL << (14U)))))) | (RigthShift << (Offsety & 0x1FUL)))));
}
# 3529 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetDataRightShift(const ADC_TypeDef *ADCx, uint32_t Offsety)
{
  return (uint32_t)((((ADCx->CFGR2) & (((0x1UL << (11U)) << (Offsety & 0x1FUL))))) >> (Offsety & 0x1FUL));
}
# 3552 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetOffsetSignedSaturation(ADC_TypeDef *ADCx, uint32_t Offsety, uint32_t OffsetSignedSaturation)
{







  {
    volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->OFR1)) + ((Offsety) << 2UL))));
    (((*preg)) = ((((((*preg))) & (~((0x1UL << (31U))))) | (OffsetSignedSaturation))));
  }
}
# 3584 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetOffsetSignedSaturation(const ADC_TypeDef *ADCx, uint32_t Offsety)
{
# 3594 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
  {
    const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->OFR1)) + ((Offsety) << 2UL))));
    return (uint32_t) ((*preg) & ((0x1UL << (31U))));
  }
}
# 3857 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_SetTriggerSource(ADC_TypeDef *ADCx, uint32_t TriggerSource)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x3UL << (10U)) | (0x1FUL << (5U))))) | (TriggerSource))));
}
# 3901 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_GetTriggerSource(const ADC_TypeDef *ADCx)
{
  volatile uint32_t TriggerSource = ((ADCx->CFGR) & ((0x1FUL << (5U)) | (0x3UL << (10U))));



  uint32_t ShiftExten = ((TriggerSource & (0x3UL << (10U))) >> ((10UL) - 2UL));



  return ((TriggerSource
           & (((((0x00000000UL) & (0x1FUL << (5U))) << (4U * 0UL)) | (((0x1FUL << (5U))) << (4U * 1UL)) | (((0x1FUL << (5U))) << (4U * 2UL)) | (((0x1FUL << (5U))) << (4U * 3UL)) ) >> ShiftExten) & (0x1FUL << (5U)))
          | ((((((0x00000000UL) & (0x3UL << (10U))) << (4U * 0UL)) | ((((0x1UL << (10U)))) << (4U * 1UL)) | ((((0x1UL << (10U)))) << (4U * 2UL)) | ((((0x1UL << (10U)))) << (4U * 3UL)) ) >> ShiftExten) & (0x3UL << (10U)))
         );
}
# 3928 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_IsTriggerSourceSWStart(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CFGR) & ((0x3UL << (10U)))) == ((0x00000000UL) & (0x3UL << (10U)))) ? 1UL : 0UL);
}
# 3948 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_SetTriggerEdge(ADC_TypeDef *ADCx, uint32_t ExternalTriggerEdge)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x3UL << (10U))))) | (ExternalTriggerEdge))));
}
# 3963 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_GetTriggerEdge(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR) & ((0x3UL << (10U)))));
}
# 4054 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_SetSequencerLength(ADC_TypeDef *ADCx, uint32_t SequencerNbRanks)
{
  (((ADCx->SQR1)) = ((((((ADCx->SQR1))) & (~((0xFUL << (0U))))) | (SequencerNbRanks))));
}
# 4108 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_GetSequencerLength(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->SQR1) & ((0xFUL << (0U)))));
}
# 4140 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_SetSequencerDiscont(ADC_TypeDef *ADCx, uint32_t SeqDiscont)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x1UL << (16U)) | (0x7UL << (17U))))) | (SeqDiscont))));
}
# 4163 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_GetSequencerDiscont(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR) & ((0x1UL << (16U)) | (0x7UL << (17U)))));
}
# 4255 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_SetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank, uint32_t Channel)
{




  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->SQR1)) + ((((Rank & ((0x00000000UL) | (0x00000100UL) | (0x00000200UL) | (0x00000300UL))) >> (8UL))) << 2UL))));

  (((*preg)) = ((((((*preg))) & (~(((0x1FUL << (0U))) << (Rank & (((0x1FUL << (0U)))))))) | (((Channel & ((0x1FUL << (26U)))) >> (26UL)) << (Rank & (((0x1FUL << (0U)))))))));


}
# 4357 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_GetSequencerRanks(const ADC_TypeDef *ADCx, uint32_t Rank)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->SQR1)) + ((((Rank & ((0x00000000UL) | (0x00000100UL) | (0x00000200UL) | (0x00000300UL))) >> (8UL))) << 2UL))));

  return (uint32_t)((((*preg) & (((0x1FUL << (0U))) << (Rank & (((0x1FUL << (0U)))))))

                     >> (Rank & (((0x1FUL << (0U)))))) << (26UL)
                   );
}
# 4386 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_SetContinuousMode(ADC_TypeDef *ADCx, uint32_t Continuous)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x1UL << (13U))))) | (Continuous))));
}
# 4403 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_GetContinuousMode(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR) & ((0x1UL << (13U)))));
}
# 4419 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_SetDataTransferMode(ADC_TypeDef *ADCx, uint32_t DataTransferMode)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x3UL << (0U))))) | (DataTransferMode))));
}
# 4547 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_GetDataTransferMode(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR) & ((0x3UL << (0U)))));
}
# 4573 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_SetOverrun(ADC_TypeDef *ADCx, uint32_t Overrun)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x1UL << (12U))))) | (Overrun))));
}
# 4587 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_GetOverrun(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR) & ((0x1UL << (12U)))));
}
# 4644 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_SetTriggerSource(ADC_TypeDef *ADCx, uint32_t TriggerSource)
{
  (((ADCx->JSQR)) = ((((((ADCx->JSQR))) & (~((0x1FUL << (2U)) | (0x3UL << (7U))))) | (TriggerSource))));
}
# 4688 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_INJ_GetTriggerSource(const ADC_TypeDef *ADCx)
{
  volatile uint32_t TriggerSource = ((ADCx->JSQR) & ((0x1FUL << (2U)) | (0x3UL << (7U))));



  uint32_t ShiftJexten = ((TriggerSource & (0x3UL << (7U))) >> (( 6UL) - 2UL));



  return ((TriggerSource
           & (((((0x00000000UL) & (0x1FUL << (2U))) << (4U * 0UL)) | (((0x1FUL << (2U))) << (4U * 1UL)) | (((0x1FUL << (2U))) << (4U * 2UL)) | (((0x1FUL << (2U))) << (4U * 3UL)) ) >> ShiftJexten) & (0x1FUL << (2U)))
          | ((((((0x00000000UL) & (0x3UL << (7U))) << (4U * 0UL)) | ((((0x1UL << (7U)))) << (4U * 1UL)) | ((((0x1UL << (7U)))) << (4U * 2UL)) | ((((0x1UL << (7U)))) << (4U * 3UL)) ) >> ShiftJexten) & (0x3UL << (7U)))
         );
}
# 4715 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_INJ_IsTriggerSourceSWStart(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->JSQR) & ((0x3UL << (7U)))) == ((0x00000000UL) & (0x3UL << (7U)))) ? 1UL : 0UL);
}
# 4735 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_SetTriggerEdge(ADC_TypeDef *ADCx, uint32_t ExternalTriggerEdge)
{
  (((ADCx->JSQR)) = ((((((ADCx->JSQR))) & (~((0x3UL << (7U))))) | (ExternalTriggerEdge))));
}
# 4750 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_INJ_GetTriggerEdge(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->JSQR) & ((0x3UL << (7U)))));
}
# 4776 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_SetSequencerLength(ADC_TypeDef *ADCx, uint32_t SequencerNbRanks)
{
  (((ADCx->JSQR)) = ((((((ADCx->JSQR))) & (~((0x3UL << (0U))))) | (SequencerNbRanks))));
}
# 4797 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_INJ_GetSequencerLength(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->JSQR) & ((0x3UL << (0U)))));
}
# 4815 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_SetSequencerDiscont(ADC_TypeDef *ADCx, uint32_t SeqDiscont)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x1UL << (20U))))) | (SeqDiscont))));
}
# 4830 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_INJ_GetSequencerDiscont(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR) & ((0x1UL << (20U)))));
}
# 4893 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_SetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank, uint32_t Channel)
{




  (((ADCx->JSQR)) = ((((((ADCx->JSQR))) & (~((((0x1FUL << (26U))) >> (26UL)) << (Rank & (((0x1FUL << (0U)))))))) | (((Channel & ((0x1FUL << (26U)))) >> (26UL)) << (Rank & (((0x1FUL << (0U)))))))));


}
# 4965 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_INJ_GetSequencerRanks(const ADC_TypeDef *ADCx, uint32_t Rank)
{
  return (uint32_t)((((ADCx->JSQR) & ((((0x1FUL << (26U))) >> (26UL)) << (Rank & (((0x1FUL << (0U)))))))

                    >> (Rank & (((0x1FUL << (0U)))))) << (26UL)
                   );
}
# 5003 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_SetTrigAuto(ADC_TypeDef *ADCx, uint32_t TrigAuto)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x1UL << (25U))))) | (TrigAuto))));
}
# 5017 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_INJ_GetTrigAuto(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR) & ((0x1UL << (25U)))));
}
# 5063 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_SetQueueMode(ADC_TypeDef *ADCx, uint32_t QueueMode)
{
  (((ADCx->CFGR)) = ((((((ADCx->CFGR))) & (~((0x1UL << (21U)) | (0x1UL << (31U))))) | (QueueMode))));
}
# 5078 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_INJ_GetQueueMode(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR) & ((0x1UL << (21U)) | (0x1UL << (31U)))));
}
# 5279 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_ConfigQueueContext(ADC_TypeDef *ADCx,
                                                   uint32_t TriggerSource,
                                                   uint32_t ExternalTriggerEdge,
                                                   uint32_t SequencerNbRanks,
                                                   uint32_t Rank1_Channel,
                                                   uint32_t Rank2_Channel,
                                                   uint32_t Rank3_Channel,
                                                   uint32_t Rank4_Channel)
{






  uint32_t is_trigger_not_sw = (uint32_t)((TriggerSource != (0x00000000UL)) ? 1UL : 0UL);
  (((ADCx->JSQR)) = ((((((ADCx->JSQR))) & (~((0x1FUL << (2U)) | (0x3UL << (7U)) | (0x1FUL << (27U)) | (0x1FUL << (21U)) | (0x1FUL << (15U)) | (0x1FUL << (9U)) | (0x3UL << (0U))))) | ((TriggerSource & (0x1FUL << (2U))) | (ExternalTriggerEdge * (is_trigger_not_sw)) | (((Rank4_Channel & ((0x1FUL << (26U)))) >> (26UL)) << (((0x00000300UL) | ((27U))) & (((0x1FUL << (0U)))))) | (((Rank3_Channel & ((0x1FUL << (26U)))) >> (26UL)) << (((0x00000200UL) | ((21U))) & (((0x1FUL << (0U)))))) | (((Rank2_Channel & ((0x1FUL << (26U)))) >> (26UL)) << (((0x00000100UL) | ((15U))) & (((0x1FUL << (0U)))))) | (((Rank1_Channel & ((0x1FUL << (26U)))) >> (26UL)) << (((0x00000000UL) | ((9U))) & (((0x1FUL << (0U)))))) | SequencerNbRanks))));
# 5311 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
}
# 5409 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetChannelSamplingTime(ADC_TypeDef *ADCx, uint32_t Channel, uint32_t SamplingTime)
{




  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->SMPR1)) + ((((Channel & ((0x00000000UL) | (0x02000000UL))) >> (25UL))) << 2UL))));

  (((*preg)) = ((((((*preg))) & (~((0x7UL << (0U)) << ((Channel & (0x01F00000UL)) >> (20UL))))) | (SamplingTime << ((Channel & (0x01F00000UL)) >> (20UL))))));


}
# 5494 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetChannelSamplingTime(const ADC_TypeDef *ADCx, uint32_t Channel)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->SMPR1)) + ((((Channel & ((0x00000000UL) | (0x02000000UL))) >> (25UL))) << 2UL))));

  return (uint32_t)(((*preg) & ((0x7UL << (0U)) << ((Channel & (0x01F00000UL)) >> (20UL))))

                    >> ((Channel & (0x01F00000UL)) >> (20UL))
                   );
}
# 5555 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetChannelSingleDiff(ADC_TypeDef *ADCx, uint32_t Channel, uint32_t SingleDiff)
{
# 5577 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
  (((ADCx->DIFSEL)) = ((((((ADCx->DIFSEL))) & (~(Channel & (((0xFFFFFUL << (0U))))))) | ((Channel & (((0xFFFFFUL << (0U))))) & ((0xFFFFFUL << (0U)) >> (SingleDiff & ((0x010UL << (0U)) | (0x008UL << (0U)))))))));



}
# 5626 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetChannelSingleDiff(const ADC_TypeDef *ADCx, uint32_t Channel)
{



  return (uint32_t)(((ADCx->DIFSEL) & ((Channel & (((0xFFFFFUL << (0U))))))));

}
# 5774 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetAnalogWDMonitChannels(ADC_TypeDef *ADCx, uint32_t AWDy, uint32_t AWDChannelGroup)
{




  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->CFGR)) + ((((AWDy & ((0x00000000UL) | (0x00100000UL) | (0x00200000UL))) >> (20UL)) + ((AWDy & ((0x00001UL << (0U)))) * (0x00000024UL))) << 2UL))));


  (((*preg)) = ((((((*preg))) & (~((AWDy & (((0x1FUL << (26U)) | (0x1UL << (24U)) | (0x1UL << (23U)) | (0x1UL << (22U))) | ((0xFFFFFUL << (0U)))))))) | (AWDChannelGroup & AWDy))));


}
# 5913 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetAnalogWDMonitChannels(const ADC_TypeDef *ADCx, uint32_t AWDy)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->CFGR)) + ((((AWDy & ((0x00000000UL) | (0x00100000UL) | (0x00200000UL))) >> (20UL)) + ((AWDy & ((0x00001UL << (0U)))) * (0x00000024UL))) << 2UL))));


  uint32_t AnalogWDMonitChannels = (((*preg) & (AWDy)) & AWDy & (((0x1FUL << (26U)) | (0x1UL << (24U)) | (0x1UL << (23U)) | (0x1UL << (22U))) | ((0xFFFFFUL << (0U)))));





  if (AnalogWDMonitChannels != 0UL)
  {
    if (AWDy == (((0x1FUL << (26U)) | (0x1UL << (24U)) | (0x1UL << (23U)) | (0x1UL << (22U))) | (0x00000000UL)))
    {
      if ((AnalogWDMonitChannels & (0x1UL << (22U))) == 0UL)
      {

        AnalogWDMonitChannels = ((AnalogWDMonitChannels
                                  | (((0xFFFFFUL << (0U))))
                                 )
                                 & (~((0x1FUL << (26U))))
                                );
      }
      else
      {

        AnalogWDMonitChannels = (AnalogWDMonitChannels
                                 | ((0x00001UL << (0U)) << (AnalogWDMonitChannels >> (26U)))
                                );
      }
    }
    else
    {
      if ((AnalogWDMonitChannels & ((0xFFFFFUL << (0U)))) == ((0xFFFFFUL << (0U))))
      {

        AnalogWDMonitChannels = (((0xFFFFFUL << (0U)))
                                 | (((0x1UL << (24U)) | (0x1UL << (23U))))
                                );
      }
      else
      {


        AnalogWDMonitChannels = (AnalogWDMonitChannels
                                 | ((0x1UL << (24U)) | (0x1UL << (23U)) | (0x1UL << (22U)))
                                 | (((((AnalogWDMonitChannels) & ((0xFFFFFUL << (0U)))) == 0UL) ? ( ((AnalogWDMonitChannels) & ((0x1FUL << (26U)))) >> (26UL) ) : ( (uint32_t)(__CLZ(__builtin_arm_rbit((AnalogWDMonitChannels)))) ) ) << (26U))
                                );
      }
    }
  }

  return AnalogWDMonitChannels;
}
# 6022 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetAnalogWDThresholds(ADC_TypeDef *ADCx, uint32_t AWDy, uint32_t AWDThresholdsHighLow, uint32_t AWDThresholdValue)
{
# 6057 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->LTR1)) + (((((AWDy & (((0x00000000UL)) | ((0x00100000UL)) | ((0x00200000UL)))) >> ((20UL))) * 2UL) + ((AWDy & ((0x00001UL << (0U)))) * (0x00000022UL)) + (AWDThresholdsHighLow)) << 2UL))));



  (((*preg)) = ((((((*preg))) & (~((0x3FFFFFFUL << (0U))))) | (AWDThresholdValue))));

}
# 6088 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetAnalogWDThresholds(const ADC_TypeDef *ADCx, uint32_t AWDy, uint32_t AWDThresholdsHighLow)
{
# 6110 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
   const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->LTR1)) + (((((AWDy & (((0x00000000UL)) | ((0x00100000UL)) | ((0x00200000UL)))) >> ((20UL))) * 2UL) + ((AWDy & ((0x00001UL << (0U)))) * (0x00000022UL)) + (AWDThresholdsHighLow)) << 2UL))));



  return (uint32_t)(((*preg) & ((0x3FFFFFFUL << (0U)))));

}
# 6296 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetOverSamplingScope(ADC_TypeDef *ADCx, uint32_t OvsScope)
{
  (((ADCx->CFGR2)) = ((((((ADCx->CFGR2))) & (~((0x1UL << (0U)) | (0x1UL << (1U)) | (0x1UL << (10U))))) | (OvsScope))));
}
# 6321 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetOverSamplingScope(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR2) & ((0x1UL << (0U)) | (0x1UL << (1U)) | (0x1UL << (10U)))));
}
# 6348 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetOverSamplingDiscont(ADC_TypeDef *ADCx, uint32_t OverSamplingDiscont)
{
  (((ADCx->CFGR2)) = ((((((ADCx->CFGR2))) & (~((0x1UL << (9U))))) | (OverSamplingDiscont))));
}
# 6367 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetOverSamplingDiscont(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR2) & ((0x1UL << (9U)))));
}
# 6410 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_ConfigOverSamplingRatioShift(ADC_TypeDef *ADCx, uint32_t Ratio, uint32_t Shift)
{
# 6423 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
  (((ADCx->CFGR2)) = ((((((ADCx->CFGR2))) & (~(((0xFUL << (5U)) | (0x3FFUL << (16U)))))) | ((Shift | (((Ratio - 1UL) << (16U))))))));


}
# 6444 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetOverSamplingRatio(const ADC_TypeDef *ADCx)
{
# 6457 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
  return (((uint32_t)(((ADCx->CFGR2) & ((0x3FFUL << (16U))))) + (1UL << (16U))) >> (16U));


}
# 6481 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetOverSamplingShift(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CFGR2) & ((0xFUL << (5U)))));
}
# 6509 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetBoostMode(ADC_TypeDef *ADCx, uint32_t BoostMode)
{






  if ((((DBGMCU_TypeDef *) (0x5C001000UL))->IDCODE & 0x30000000UL) == 0x10000000UL)
  {
    (((ADCx->CR)) = ((((((ADCx->CR))) & (~((0x1UL << (8U))))) | ((BoostMode >> 2UL)))));
  }
  else
  {
    (((ADCx->CR)) = ((((((ADCx->CR))) & (~((0x3UL << (8U))))) | ((BoostMode & (0x3UL << (8U)))))));
  }

}
# 6539 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetBoostMode(const ADC_TypeDef *ADCx)
{
  if ((((DBGMCU_TypeDef *) (0x5C001000UL))->IDCODE & 0x30000000UL) == 0x10000000UL)
  {
    return (uint32_t)((ADCx->CR) & ((0x1UL << (8U))));
  }
  else
  {
    return ((((ADCx->CR) & ((0x3UL << (8U)))) == ((0x3UL << (8U)))) ? 1UL : 0UL);
  }
}
# 6577 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetMultimode(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t Multimode)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0x1FUL << (0U))))) | (Multimode))));
}
# 6601 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetMultimode(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0x1FUL << (0U)))));
}
# 6649 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetMultiDMATransfer(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t MultiDMATransfer)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0x3UL << (14U))))) | (MultiDMATransfer))));
}
# 6692 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetMultiDMATransfer(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0x3UL << (14U)))));
}
# 6737 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_SetMultiTwoSamplingDelay(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t MultiTwoSamplingDelay)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0xFUL << (8U))))) | (MultiTwoSamplingDelay))));
}
# 6770 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_GetMultiTwoSamplingDelay(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0xFUL << (8U)))));
}
# 6795 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_EnableDeepPowerDown(ADC_TypeDef *ADCx)
{



  (((ADCx->CR)) = ((((((ADCx->CR))) & (~(((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U)))))) | ((0x1UL << (29U))))));


}
# 6818 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_DisableDeepPowerDown(ADC_TypeDef *ADCx)
{



  ((ADCx->CR) &= ~(((0x1UL << (29U)) | ((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U))))));
}







static __inline uint32_t LL_ADC_IsDeepPowerDownEnabled(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CR) & ((0x1UL << (29U)))) == ((0x1UL << (29U)))) ? 1UL : 0UL);
}
# 6851 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_EnableInternalRegulator(ADC_TypeDef *ADCx)
{



  (((ADCx->CR)) = ((((((ADCx->CR))) & (~(((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U)))))) | ((0x1UL << (28U))))));


}
# 6870 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_DisableInternalRegulator(ADC_TypeDef *ADCx)
{
  ((ADCx->CR) &= ~(((0x1UL << (28U)) | ((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U))))));
}







static __inline uint32_t LL_ADC_IsInternalRegulatorEnabled(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CR) & ((0x1UL << (28U)))) == ((0x1UL << (28U)))) ? 1UL : 0UL);
}
# 6902 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_Enable(ADC_TypeDef *ADCx)
{



  (((ADCx->CR)) = ((((((ADCx->CR))) & (~(((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U)))))) | ((0x1UL << (0U))))));


}
# 6922 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_Disable(ADC_TypeDef *ADCx)
{



  (((ADCx->CR)) = ((((((ADCx->CR))) & (~(((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U)))))) | ((0x1UL << (1U))))));


}
# 6941 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabled(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CR) & ((0x1UL << (0U)))) == ((0x1UL << (0U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsDisableOngoing(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CR) & ((0x1UL << (1U)))) == ((0x1UL << (1U)))) ? 1UL : 0UL);
}
# 6990 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_StartCalibration(ADC_TypeDef *ADCx, uint32_t CalibrationMode, uint32_t SingleDiff)
{



  (((ADCx->CR)) = ((((((ADCx->CR))) & (~((0x1UL << (16U)) | (0x1UL << (30U)) | ((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U)))))) | ((0x1UL << (31U)) | (CalibrationMode & ((0x1UL << (16U)))) | (SingleDiff & ((0x1UL << (30U))))))));


}







static __inline uint32_t LL_ADC_IsCalibrationOnGoing(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CR) & ((0x1UL << (31U)))) == ((0x1UL << (31U)))) ? 1UL : 0UL);
}
# 7037 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_StartConversion(ADC_TypeDef *ADCx)
{



  (((ADCx->CR)) = ((((((ADCx->CR))) & (~(((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U)))))) | ((0x1UL << (2U))))));


}
# 7057 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_REG_StopConversion(ADC_TypeDef *ADCx)
{



  (((ADCx->CR)) = ((((((ADCx->CR))) & (~(((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U)))))) | ((0x1UL << (4U))))));


}







static __inline uint32_t LL_ADC_REG_IsConversionOngoing(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CR) & ((0x1UL << (2U)))) == ((0x1UL << (2U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_REG_IsStopConversionOngoing(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CR) & ((0x1UL << (4U)))) == ((0x1UL << (4U)))) ? 1UL : 0UL);
}
# 7098 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_ReadConversionData32(const ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->DR) & ((0xFFFFFFFFUL << (0U)))));
}
# 7113 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint16_t LL_ADC_REG_ReadConversionData16(const ADC_TypeDef *ADCx)
{
  return (uint16_t)(((ADCx->DR) & ((0xFFFFFFFFUL << (0U)))));
}
# 7128 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint16_t LL_ADC_REG_ReadConversionData14(const ADC_TypeDef *ADCx)
{
  return (uint16_t)(((ADCx->DR) & ((0xFFFFFFFFUL << (0U)))));
}
# 7143 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint16_t LL_ADC_REG_ReadConversionData12(const ADC_TypeDef *ADCx)
{
  return (uint16_t)(((ADCx->DR) & ((0xFFFFFFFFUL << (0U)))));
}
# 7158 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint16_t LL_ADC_REG_ReadConversionData10(const ADC_TypeDef *ADCx)
{
  return (uint16_t)(((ADCx->DR) & ((0xFFFFFFFFUL << (0U)))));
}
# 7173 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint8_t LL_ADC_REG_ReadConversionData8(const ADC_TypeDef *ADCx)
{
  return (uint8_t)(((ADCx->DR) & ((0xFFFFFFFFUL << (0U)))));
}
# 7198 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_REG_ReadMultiConversionData32(const ADC_Common_TypeDef *ADCxy_COMMON, uint32_t ConversionData)
{
  return (uint32_t)(((ADCxy_COMMON->CDR) & (ConversionData))

                    >> ((__CLZ(__builtin_arm_rbit(ConversionData))) & 0x1FUL)
                   );
}
# 7232 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_StartConversion(ADC_TypeDef *ADCx)
{



  (((ADCx->CR)) = ((((((ADCx->CR))) & (~(((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U)))))) | ((0x1UL << (3U))))));


}
# 7252 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_INJ_StopConversion(ADC_TypeDef *ADCx)
{



  (((ADCx->CR)) = ((((((ADCx->CR))) & (~(((0x1UL << (31U)) | (0x1UL << (5U)) | (0x1UL << (4U)) | (0x1UL << (3U)) | (0x1UL << (2U)) | (0x1UL << (1U)) | (0x1UL << (0U)))))) | ((0x1UL << (5U))))));


}







static __inline uint32_t LL_ADC_INJ_IsConversionOngoing(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CR) & ((0x1UL << (3U)))) == ((0x1UL << (3U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_INJ_IsStopConversionOngoing(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->CR) & ((0x1UL << (5U)))) == ((0x1UL << (5U)))) ? 1UL : 0UL);
}
# 7301 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_INJ_ReadConversionData32(const ADC_TypeDef *ADCx, uint32_t Rank)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + ((((Rank & ((0x00000000UL) | (0x00000100UL) | (0x00000200UL) | (0x00000300UL))) >> (8UL))) << 2UL))));

  return (uint32_t)(((*preg) & ((0xFFFFFFFFUL << (0U))))

                   );
}
# 7328 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint16_t LL_ADC_INJ_ReadConversionData16(const ADC_TypeDef *ADCx, uint32_t Rank)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + ((((Rank & ((0x00000000UL) | (0x00000100UL) | (0x00000200UL) | (0x00000300UL))) >> (8UL))) << 2UL))));

  return (uint16_t)(((*preg) & ((0xFFFFFFFFUL << (0U))))

                   );
}
# 7355 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint16_t LL_ADC_INJ_ReadConversionData14(const ADC_TypeDef *ADCx, uint32_t Rank)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + ((((Rank & ((0x00000000UL) | (0x00000100UL) | (0x00000200UL) | (0x00000300UL))) >> (8UL))) << 2UL))));

  return (uint16_t)(((*preg) & ((0xFFFFFFFFUL << (0U))))

                   );
}
# 7382 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint16_t LL_ADC_INJ_ReadConversionData12(const ADC_TypeDef *ADCx, uint32_t Rank)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + ((((Rank & ((0x00000000UL) | (0x00000100UL) | (0x00000200UL) | (0x00000300UL))) >> (8UL))) << 2UL))));

  return (uint16_t)(((*preg) & ((0xFFFFFFFFUL << (0U))))

                   );
}
# 7409 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint16_t LL_ADC_INJ_ReadConversionData10(const ADC_TypeDef *ADCx, uint32_t Rank)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + ((((Rank & ((0x00000000UL) | (0x00000100UL) | (0x00000200UL) | (0x00000300UL))) >> (8UL))) << 2UL))));

  return (uint16_t)(((*preg) & ((0xFFFFFFFFUL << (0U))))

                   );
}
# 7436 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint8_t LL_ADC_INJ_ReadConversionData8(const ADC_TypeDef *ADCx, uint32_t Rank)
{
  const volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + ((((Rank & ((0x00000000UL) | (0x00000100UL) | (0x00000200UL) | (0x00000300UL))) >> (8UL))) << 2UL))));

  return (uint8_t)(((*preg) & ((0xFFFFFFFFUL << (0U))))

                  );
}
# 7462 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_ADRDY(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (0U)))) == ((0x1UL << (0U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_EOC(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (2U)))) == ((0x1UL << (2U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_EOS(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (3U)))) == ((0x1UL << (3U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_OVR(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (4U)))) == ((0x1UL << (4U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_EOSMP(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (1U)))) == ((0x1UL << (1U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_JEOC(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (5U)))) == ((0x1UL << (5U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_JEOS(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (6U)))) == ((0x1UL << (6U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_JQOVF(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (10U)))) == ((0x1UL << (10U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_LDORDY(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (12U)))) == ((0x1UL << (12U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_AWD1(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (7U)))) == ((0x1UL << (7U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_AWD2(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (8U)))) == ((0x1UL << (8U)))) ? 1UL : 0UL);
}







static __inline uint32_t LL_ADC_IsActiveFlag_AWD3(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->ISR) & ((0x1UL << (9U)))) == ((0x1UL << (9U)))) ? 1UL : 0UL);
}
# 7597 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_ClearFlag_ADRDY(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (0U))));
}







static __inline void LL_ADC_ClearFlag_EOC(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (2U))));
}







static __inline void LL_ADC_ClearFlag_EOS(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (3U))));
}







static __inline void LL_ADC_ClearFlag_OVR(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (4U))));
}







static __inline void LL_ADC_ClearFlag_EOSMP(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (1U))));
}







static __inline void LL_ADC_ClearFlag_JEOC(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (5U))));
}







static __inline void LL_ADC_ClearFlag_JEOS(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (6U))));
}







static __inline void LL_ADC_ClearFlag_JQOVF(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (10U))));
}







static __inline void LL_ADC_ClearFlag_AWD1(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (7U))));
}







static __inline void LL_ADC_ClearFlag_AWD2(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (8U))));
}







static __inline void LL_ADC_ClearFlag_AWD3(ADC_TypeDef *ADCx)
{
  ((ADCx->ISR) = ((0x1UL << (9U))));
}
# 7719 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_ADRDY(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (0U)))) == ((0x1UL << (0U)))) ? 1UL : 0UL);
}
# 7731 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_ADRDY(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (16U)))) == ((0x1UL << (16U)))) ? 1UL : 0UL);
}
# 7743 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_EOC(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (18U)))) == ((0x1UL << (18U)))) ? 1UL : 0UL);
}
# 7755 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_EOC(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (18U)))) == ((0x1UL << (18U)))) ? 1UL : 0UL);
}
# 7767 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_EOS(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (3U)))) == ((0x1UL << (3U)))) ? 1UL : 0UL);
}
# 7779 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_EOS(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (19U)))) == ((0x1UL << (19U)))) ? 1UL : 0UL);
}
# 7791 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_OVR(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (4U)))) == ((0x1UL << (4U)))) ? 1UL : 0UL);
}
# 7803 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_OVR(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (20U)))) == ((0x1UL << (20U)))) ? 1UL : 0UL);
}
# 7815 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_EOSMP(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (1U)))) == ((0x1UL << (1U)))) ? 1UL : 0UL);
}
# 7827 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_EOSMP(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (17U)))) == ((0x1UL << (17U)))) ? 1UL : 0UL);
}
# 7839 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_JEOC(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (5U)))) == ((0x1UL << (5U)))) ? 1UL : 0UL);
}
# 7851 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_JEOC(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (21U)))) == ((0x1UL << (21U)))) ? 1UL : 0UL);
}
# 7863 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_JEOS(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (6U)))) == ((0x1UL << (6U)))) ? 1UL : 0UL);
}
# 7875 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_JEOS(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (22U)))) == ((0x1UL << (22U)))) ? 1UL : 0UL);
}
# 7887 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_JQOVF(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (10U)))) == ((0x1UL << (10U)))) ? 1UL : 0UL);
}
# 7899 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_JQOVF(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (26U)))) == ((0x1UL << (26U)))) ? 1UL : 0UL);
}
# 7911 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_AWD1(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (7U)))) == ((0x1UL << (7U)))) ? 1UL : 0UL);
}
# 7923 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_AWD1(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (23U)))) == ((0x1UL << (23U)))) ? 1UL : 0UL);
}
# 7935 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_AWD2(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (8U)))) == ((0x1UL << (8U)))) ? 1UL : 0UL);
}
# 7947 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_AWD2(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (24U)))) == ((0x1UL << (24U)))) ? 1UL : 0UL);
}
# 7959 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_MST_AWD3(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (9U)))) == ((0x1UL << (9U)))) ? 1UL : 0UL);
}
# 7971 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsActiveFlag_SLV_AWD3(const ADC_Common_TypeDef *ADCxy_COMMON)
{
  return ((((ADCxy_COMMON->CSR) & ((0x1UL << (25U)))) == ((0x1UL << (25U)))) ? 1UL : 0UL);
}
# 7990 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline void LL_ADC_EnableIT_ADRDY(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (0U))));
}







static __inline void LL_ADC_EnableIT_EOC(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (2U))));
}







static __inline void LL_ADC_EnableIT_EOS(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (3U))));
}







static __inline void LL_ADC_EnableIT_OVR(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (4U))));
}







static __inline void LL_ADC_EnableIT_EOSMP(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (1U))));
}







static __inline void LL_ADC_EnableIT_JEOC(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (5U))));
}







static __inline void LL_ADC_EnableIT_JEOS(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (6U))));
}







static __inline void LL_ADC_EnableIT_JQOVF(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (10U))));
}







static __inline void LL_ADC_EnableIT_AWD1(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (7U))));
}







static __inline void LL_ADC_EnableIT_AWD2(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (8U))));
}







static __inline void LL_ADC_EnableIT_AWD3(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) |= ((0x1UL << (9U))));
}







static __inline void LL_ADC_DisableIT_ADRDY(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (0U))));
}







static __inline void LL_ADC_DisableIT_EOC(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (2U))));
}







static __inline void LL_ADC_DisableIT_EOS(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (3U))));
}







static __inline void LL_ADC_DisableIT_OVR(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (4U))));
}







static __inline void LL_ADC_DisableIT_EOSMP(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (1U))));
}







static __inline void LL_ADC_DisableIT_JEOC(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (5U))));
}







static __inline void LL_ADC_DisableIT_JEOS(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (6U))));
}







static __inline void LL_ADC_DisableIT_JQOVF(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (10U))));
}







static __inline void LL_ADC_DisableIT_AWD1(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (7U))));
}







static __inline void LL_ADC_DisableIT_AWD2(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (8U))));
}







static __inline void LL_ADC_DisableIT_AWD3(ADC_TypeDef *ADCx)
{
  ((ADCx->IER) &= ~((0x1UL << (9U))));
}
# 8233 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_ADRDY(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (0U)))) == ((0x1UL << (0U)))) ? 1UL : 0UL);
}
# 8245 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_EOC(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (2U)))) == ((0x1UL << (2U)))) ? 1UL : 0UL);
}
# 8257 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_EOS(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (3U)))) == ((0x1UL << (3U)))) ? 1UL : 0UL);
}
# 8269 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_OVR(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (4U)))) == ((0x1UL << (4U)))) ? 1UL : 0UL);
}
# 8281 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_EOSMP(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (1U)))) == ((0x1UL << (1U)))) ? 1UL : 0UL);
}
# 8293 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_JEOC(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (5U)))) == ((0x1UL << (5U)))) ? 1UL : 0UL);
}
# 8305 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_JEOS(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (6U)))) == ((0x1UL << (6U)))) ? 1UL : 0UL);
}
# 8317 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_JQOVF(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (10U)))) == ((0x1UL << (10U)))) ? 1UL : 0UL);
}
# 8329 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_AWD1(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (7U)))) == ((0x1UL << (7U)))) ? 1UL : 0UL);
}
# 8341 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_AWD2(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (8U)))) == ((0x1UL << (8U)))) ? 1UL : 0UL);
}
# 8353 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_ll_adc.h"
static __inline uint32_t LL_ADC_IsEnabledIT_AWD3(const ADC_TypeDef *ADCx)
{
  return ((((ADCx->IER) & ((0x1UL << (9U)))) == ((0x1UL << (9U)))) ? 1UL : 0UL);
}
# 32 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h" 2
# 49 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
typedef struct
{
  uint32_t Ratio;






  uint32_t RightBitShift;


  uint32_t TriggeredMode;


  uint32_t OversamplingStopReset;







} ADC_OversamplingTypeDef;
# 90 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
typedef struct
{
  uint32_t ClockPrescaler;
# 103 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
  uint32_t Resolution;
# 113 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
  uint32_t ScanConvMode;







  uint32_t EOCSelection;


  FunctionalState LowPowerAutoWait;
# 136 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
  FunctionalState ContinuousConvMode;



  uint32_t NbrOfConversion;





  FunctionalState DiscontinuousConvMode;





  uint32_t NbrOfDiscConversion;



  uint32_t ExternalTrigConv;




  uint32_t ExternalTrigConvEdge;



  uint32_t ConversionDataManagement;
# 186 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
  uint32_t Overrun;
# 197 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
  uint32_t LeftBitShift;

  FunctionalState OversamplingMode;



  ADC_OversamplingTypeDef Oversampling;


} ADC_InitTypeDef;
# 219 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
typedef struct
{
  uint32_t Channel;



  uint32_t Rank;




  uint32_t SamplingTime;
# 241 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
  uint32_t SingleDiff;
# 253 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
  uint32_t OffsetNumber;



  uint32_t Offset;






  FunctionalState OffsetRightShift;
# 281 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
  FunctionalState OffsetSignedSaturation;



} ADC_ChannelConfTypeDef;







typedef struct
{
  uint32_t WatchdogNumber;




  uint32_t WatchdogMode;




  uint32_t Channel;




  FunctionalState ITMode;


  uint32_t HighThreshold;
# 323 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
  uint32_t LowThreshold;
# 339 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
} ADC_AnalogWDGConfTypeDef;





typedef struct
{
  uint32_t ContextQueue;



  uint32_t ChannelCount;
} ADC_InjectionConfigTypeDef;
# 408 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
typedef struct

{
  ADC_TypeDef *Instance;
  ADC_InitTypeDef Init;
  DMA_HandleTypeDef *DMA_Handle;
  HAL_LockTypeDef Lock;
  volatile uint32_t State;
  volatile uint32_t ErrorCode;
  ADC_InjectionConfigTypeDef InjectionConfig ;
# 431 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
} ADC_HandleTypeDef;
# 1917 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h" 1
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
typedef struct
{
  uint32_t Ratio;






  uint32_t RightBitShift;

} ADC_InjOversamplingTypeDef;
# 75 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
typedef struct
{
  uint32_t InjectedChannel;



  uint32_t InjectedRank;




  uint32_t InjectedSamplingTime;
# 97 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
  uint32_t InjectedSingleDiff;
# 109 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
  uint32_t InjectedOffsetNumber;



  uint32_t InjectedOffset;






  uint32_t InjectedOffsetRightShift;
# 137 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
  FunctionalState InjectedOffsetSignedSaturation;



  uint32_t InjectedNbrOfConversion;





  FunctionalState InjectedDiscontinuousConvMode;
# 157 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
  FunctionalState AutoInjectedConv;
# 166 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
  FunctionalState QueueInjectedContext;
# 177 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
  uint32_t ExternalTrigInjecConv;





  uint32_t ExternalTrigInjecConvEdge;





  FunctionalState InjecOversamplingMode;



  ADC_InjOversamplingTypeDef InjecOversampling;


} ADC_InjectionConfTypeDef;






typedef struct
{
  uint32_t Mode;


  uint32_t DualModeData;


  uint32_t TwoSamplingDelay;







} ADC_MultiModeTypeDef;
# 1387 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
HAL_StatusTypeDef HAL_ADCEx_Calibration_Start(ADC_HandleTypeDef *hadc, uint32_t CalibrationMode, uint32_t SingleDiff);
uint32_t HAL_ADCEx_Calibration_GetValue(const ADC_HandleTypeDef *hadc, uint32_t SingleDiff);
HAL_StatusTypeDef HAL_ADCEx_LinearCalibration_GetValue(ADC_HandleTypeDef *hadc, uint32_t *LinearCalib_Buffer);
HAL_StatusTypeDef HAL_ADCEx_Calibration_SetValue(ADC_HandleTypeDef *hadc, uint32_t SingleDiff, uint32_t CalibrationFactor);
HAL_StatusTypeDef HAL_ADCEx_LinearCalibration_SetValue(ADC_HandleTypeDef *hadc, uint32_t *LinearCalib_Buffer);
HAL_StatusTypeDef HAL_ADCEx_LinearCalibration_FactorLoad(ADC_HandleTypeDef *hadc);



HAL_StatusTypeDef HAL_ADCEx_InjectedStart(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADCEx_InjectedStop(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADCEx_InjectedPollForConversion(ADC_HandleTypeDef *hadc, uint32_t Timeout);


HAL_StatusTypeDef HAL_ADCEx_InjectedStart_IT(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADCEx_InjectedStop_IT(ADC_HandleTypeDef *hadc);


HAL_StatusTypeDef HAL_ADCEx_MultiModeStart_DMA(ADC_HandleTypeDef *hadc, const uint32_t *pData, uint32_t Length);
HAL_StatusTypeDef HAL_ADCEx_MultiModeStop_DMA(ADC_HandleTypeDef *hadc);
uint32_t HAL_ADCEx_MultiModeGetValue(const ADC_HandleTypeDef *hadc);


uint32_t HAL_ADCEx_InjectedGetValue(const ADC_HandleTypeDef *hadc, uint32_t InjectedRank);


void HAL_ADCEx_InjectedConvCpltCallback(ADC_HandleTypeDef *hadc);
void HAL_ADCEx_InjectedQueueOverflowCallback(ADC_HandleTypeDef *hadc);
void HAL_ADCEx_LevelOutOfWindow2Callback(ADC_HandleTypeDef *hadc);
void HAL_ADCEx_LevelOutOfWindow3Callback(ADC_HandleTypeDef *hadc);
void HAL_ADCEx_EndOfSamplingCallback(ADC_HandleTypeDef *hadc);


HAL_StatusTypeDef HAL_ADCEx_RegularStop(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADCEx_RegularStop_IT(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADCEx_RegularStop_DMA(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADCEx_RegularMultiModeStop_DMA(ADC_HandleTypeDef *hadc);
# 1433 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_adc_ex.h"
HAL_StatusTypeDef HAL_ADCEx_InjectedConfigChannel(ADC_HandleTypeDef *hadc, ADC_InjectionConfTypeDef *sConfigInjected);
HAL_StatusTypeDef HAL_ADCEx_MultiModeConfigChannel(ADC_HandleTypeDef *hadc, ADC_MultiModeTypeDef *multimode);
HAL_StatusTypeDef HAL_ADCEx_EnableInjectedQueue(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADCEx_DisableInjectedQueue(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADCEx_DisableVoltageRegulator(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADCEx_EnterADCDeepPowerDownMode(ADC_HandleTypeDef *hadc);
# 1918 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h" 2
# 1929 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
HAL_StatusTypeDef HAL_ADC_Init(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADC_DeInit(ADC_HandleTypeDef *hadc);
void HAL_ADC_MspInit(ADC_HandleTypeDef *hadc);
void HAL_ADC_MspDeInit(ADC_HandleTypeDef *hadc);
# 1951 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
HAL_StatusTypeDef HAL_ADC_Start(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADC_Stop(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADC_PollForConversion(ADC_HandleTypeDef *hadc, uint32_t Timeout);
HAL_StatusTypeDef HAL_ADC_PollForEvent(ADC_HandleTypeDef *hadc, uint32_t EventType, uint32_t Timeout);


HAL_StatusTypeDef HAL_ADC_Start_IT(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef HAL_ADC_Stop_IT(ADC_HandleTypeDef *hadc);


HAL_StatusTypeDef HAL_ADC_Start_DMA(ADC_HandleTypeDef *hadc, uint32_t *pData, uint32_t Length);
HAL_StatusTypeDef HAL_ADC_Stop_DMA(ADC_HandleTypeDef *hadc);


uint32_t HAL_ADC_GetValue(const ADC_HandleTypeDef *hadc);


void HAL_ADC_IRQHandler(ADC_HandleTypeDef *hadc);
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *hadc);
void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef *hadc);
void HAL_ADC_LevelOutOfWindowCallback(ADC_HandleTypeDef *hadc);
void HAL_ADC_ErrorCallback(ADC_HandleTypeDef *hadc);
# 1982 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
HAL_StatusTypeDef HAL_ADC_ConfigChannel(ADC_HandleTypeDef *hadc, ADC_ChannelConfTypeDef *sConfig);
HAL_StatusTypeDef HAL_ADC_AnalogWDGConfig(ADC_HandleTypeDef *hadc, ADC_AnalogWDGConfTypeDef *AnalogWDGConfig);
# 1993 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
uint32_t HAL_ADC_GetState(const ADC_HandleTypeDef *hadc);
uint32_t HAL_ADC_GetError(const ADC_HandleTypeDef *hadc);
# 2008 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_adc.h"
HAL_StatusTypeDef ADC_ConversionStop(ADC_HandleTypeDef *hadc, uint32_t ConversionGroup);
HAL_StatusTypeDef ADC_Enable(ADC_HandleTypeDef *hadc);
HAL_StatusTypeDef ADC_Disable(ADC_HandleTypeDef *hadc);
void ADC_DMAConvCplt(DMA_HandleTypeDef *hdma);
void ADC_DMAHalfConvCplt(DMA_HandleTypeDef *hdma);
void ADC_DMAError(DMA_HandleTypeDef *hdma);
void ADC_ConfigureBoostMode(ADC_HandleTypeDef *hadc);
# 302 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 334 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h" 1
# 45 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
typedef enum
{
  FLASH_PROC_NONE = 0U,
  FLASH_PROC_SECTERASE_BANK1,
  FLASH_PROC_MASSERASE_BANK1,
  FLASH_PROC_PROGRAM_BANK1,
  FLASH_PROC_SECTERASE_BANK2,
  FLASH_PROC_MASSERASE_BANK2,
  FLASH_PROC_PROGRAM_BANK2,
  FLASH_PROC_ALLBANK_MASSERASE
} FLASH_ProcedureTypeDef;





typedef struct
{
  volatile FLASH_ProcedureTypeDef ProcedureOnGoing;

  volatile uint32_t NbSectorsToErase;

  volatile uint32_t VoltageForErase;

  volatile uint32_t Sector;

  volatile uint32_t Address;

  HAL_LockTypeDef Lock;

  volatile uint32_t ErrorCode;

}FLASH_ProcessTypeDef;
# 707 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h" 1
# 45 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
typedef struct
{
  uint32_t TypeErase;


  uint32_t Banks;


  uint32_t Sector;


  uint32_t NbSectors;


  uint32_t VoltageRange;


} FLASH_EraseInitTypeDef;





typedef struct
{
  uint32_t OptionType;


  uint32_t WRPState;


  uint32_t WRPSector;


  uint32_t RDPLevel;


  uint32_t BORLevel;


  uint32_t USERType;


  uint32_t USERConfig;


  uint32_t Banks;


  uint32_t PCROPConfig;



  uint32_t PCROPStartAddr;


  uint32_t PCROPEndAddr;


  uint32_t BootConfig;


  uint32_t BootAddr0;


  uint32_t BootAddr1;
# 124 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
  uint32_t SecureAreaConfig;



  uint32_t SecureAreaStartAddr;


  uint32_t SecureAreaEndAddr;
# 149 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
} FLASH_OBProgramInitTypeDef;




typedef struct
{
  uint32_t TypeCRC;


  uint32_t BurstSize;


  uint32_t Bank;


  uint32_t Sector;


  uint32_t NbSectors;


  uint32_t CRCStartAddr;


  uint32_t CRCEndAddr;


} FLASH_CRCInitTypeDef;
# 848 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *SectorError);
HAL_StatusTypeDef HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit);
HAL_StatusTypeDef HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit);
void HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit);

HAL_StatusTypeDef HAL_FLASHEx_Unlock_Bank1(void);
HAL_StatusTypeDef HAL_FLASHEx_Lock_Bank1(void);

HAL_StatusTypeDef HAL_FLASHEx_Unlock_Bank2(void);
HAL_StatusTypeDef HAL_FLASHEx_Lock_Bank2(void);


HAL_StatusTypeDef HAL_FLASHEx_ComputeCRC(FLASH_CRCInitTypeDef *pCRCInit, uint32_t *CRC_Result);
# 1053 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_flash_ex.h"
void FLASH_Erase_Sector(uint32_t Sector, uint32_t Banks, uint32_t VoltageRange);
# 708 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h" 2
# 717 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t FlashAddress, uint32_t DataAddress);
HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t FlashAddress, uint32_t DataAddress);

void HAL_FLASH_IRQHandler(void);

void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue);
void HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue);
# 732 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
HAL_StatusTypeDef HAL_FLASH_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_Lock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Lock(void);

HAL_StatusTypeDef HAL_FLASH_OB_Launch(void);
# 746 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
uint32_t HAL_FLASH_GetError(void);
# 759 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
extern FLASH_ProcessTypeDef pFlash;
# 841 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_flash.h"
HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout, uint32_t Bank);
HAL_StatusTypeDef FLASH_OB_WaitForLastOperation(uint32_t Timeout);
HAL_StatusTypeDef FLASH_CRC_WaitForLastOperation(uint32_t Timeout, uint32_t Bank);
# 334 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 350 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_hsem.h" 1
# 129 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_hsem.h"
HAL_StatusTypeDef HAL_HSEM_Take(uint32_t SemID, uint32_t ProcessID);

HAL_StatusTypeDef HAL_HSEM_FastTake(uint32_t SemID);

void HAL_HSEM_Release(uint32_t SemID, uint32_t ProcessID);

void HAL_HSEM_ReleaseAll(uint32_t Key, uint32_t CoreID);

uint32_t HAL_HSEM_IsSemTaken(uint32_t SemID);
# 148 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_hsem.h"
void HAL_HSEM_SetClearKey(uint32_t Key);

uint32_t HAL_HSEM_GetClearKey(void);
# 160 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_hsem.h"
void HAL_HSEM_ActivateNotification(uint32_t SemMask);

void HAL_HSEM_DeactivateNotification(uint32_t SemMask);

void HAL_HSEM_FreeCallback(uint32_t SemMask);

void HAL_HSEM_IRQHandler(void);
# 350 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 366 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h" 1
# 47 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
typedef struct
{
  uint32_t Timing;



  uint32_t OwnAddress1;


  uint32_t AddressingMode;


  uint32_t DualAddressMode;


  uint32_t OwnAddress2;


  uint32_t OwnAddress2Masks;



  uint32_t GeneralCallMode;


  uint32_t NoStretchMode;


} I2C_InitTypeDef;
# 108 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
typedef enum
{
  HAL_I2C_STATE_RESET = 0x00U,
  HAL_I2C_STATE_READY = 0x20U,
  HAL_I2C_STATE_BUSY = 0x24U,
  HAL_I2C_STATE_BUSY_TX = 0x21U,
  HAL_I2C_STATE_BUSY_RX = 0x22U,
  HAL_I2C_STATE_LISTEN = 0x28U,
  HAL_I2C_STATE_BUSY_TX_LISTEN = 0x29U,

  HAL_I2C_STATE_BUSY_RX_LISTEN = 0x2AU,

  HAL_I2C_STATE_ABORT = 0x60U,

} HAL_I2C_StateTypeDef;
# 146 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
typedef enum
{
  HAL_I2C_MODE_NONE = 0x00U,
  HAL_I2C_MODE_MASTER = 0x10U,
  HAL_I2C_MODE_SLAVE = 0x20U,
  HAL_I2C_MODE_MEM = 0x40U

} HAL_I2C_ModeTypeDef;
# 184 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
typedef struct __I2C_HandleTypeDef
{
  I2C_TypeDef *Instance;

  I2C_InitTypeDef Init;

  uint8_t *pBuffPtr;

  uint16_t XferSize;

  volatile uint16_t XferCount;

  volatile uint32_t XferOptions;


  volatile uint32_t PreviousState;

  HAL_StatusTypeDef(*XferISR)(struct __I2C_HandleTypeDef *hi2c, uint32_t ITFlags, uint32_t ITSources);


  DMA_HandleTypeDef *hdmatx;

  DMA_HandleTypeDef *hdmarx;


  HAL_LockTypeDef Lock;

  volatile HAL_I2C_StateTypeDef State;

  volatile HAL_I2C_ModeTypeDef Mode;

  volatile uint32_t ErrorCode;

  volatile uint32_t AddrEventCount;

  volatile uint32_t Devaddress;

  volatile uint32_t Memaddress;
# 252 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
} I2C_HandleTypeDef;
# 590 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_i2c_ex.h" 1
# 96 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_i2c_ex.h"
HAL_StatusTypeDef HAL_I2CEx_ConfigAnalogFilter(I2C_HandleTypeDef *hi2c, uint32_t AnalogFilter);
HAL_StatusTypeDef HAL_I2CEx_ConfigDigitalFilter(I2C_HandleTypeDef *hi2c, uint32_t DigitalFilter);







HAL_StatusTypeDef HAL_I2CEx_EnableWakeUp(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2CEx_DisableWakeUp(I2C_HandleTypeDef *hi2c);







void HAL_I2CEx_EnableFastModePlus(uint32_t ConfigFastModePlus);
void HAL_I2CEx_DisableFastModePlus(uint32_t ConfigFastModePlus);
# 591 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h" 2
# 601 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
HAL_StatusTypeDef HAL_I2C_Init(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DeInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspDeInit(I2C_HandleTypeDef *hi2c);
# 624 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
HAL_StatusTypeDef HAL_I2C_Master_Transmit(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                          uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Master_Receive(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                         uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                         uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Receive(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                        uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Write(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                    uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Read(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                   uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_IsDeviceReady(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Trials,
                                        uint32_t Timeout);


HAL_StatusTypeDef HAL_I2C_Master_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                             uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                            uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                       uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                      uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                 uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                                uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                               uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_EnableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DisableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_Master_Abort_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress);


HAL_StatusTypeDef HAL_I2C_Master_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                              uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                             uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                        uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress,
                                       uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                  uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData,
                                                 uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                                 uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size,
                                                uint32_t XferOptions);
# 691 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
void HAL_I2C_EV_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ER_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode);
void HAL_I2C_ListenCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AbortCpltCallback(I2C_HandleTypeDef *hi2c);
# 711 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_i2c.h"
HAL_I2C_StateTypeDef HAL_I2C_GetState(const I2C_HandleTypeDef *hi2c);
HAL_I2C_ModeTypeDef HAL_I2C_GetMode(const I2C_HandleTypeDef *hi2c);
uint32_t HAL_I2C_GetError(const I2C_HandleTypeDef *hi2c);
# 366 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 414 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h" 1
# 47 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h"
typedef struct
{
  uint32_t PVDLevel;




  uint32_t Mode;



}PWR_PVDTypeDef;
# 672 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h" 1
# 45 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
typedef struct
{
  uint32_t AVDLevel;




  uint32_t Mode;



}PWREx_AVDTypeDef;




typedef struct
{
  uint32_t WakeUpPin;




  uint32_t PinPolarity;




  uint32_t PinPull;



}PWREx_WakeupPinTypeDef;
# 509 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
HAL_StatusTypeDef HAL_PWREx_ConfigSupply (uint32_t SupplySource);
uint32_t HAL_PWREx_GetSupplyConfig (void);
HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling (uint32_t VoltageScaling);
uint32_t HAL_PWREx_GetVoltageRange (void);
HAL_StatusTypeDef HAL_PWREx_ControlStopModeVoltageScaling (uint32_t VoltageScaling);
uint32_t HAL_PWREx_GetStopModeVoltageRange (void);
# 526 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
void HAL_PWREx_EnterSTOPMode (uint32_t Regulator, uint8_t STOPEntry, uint32_t Domain);
void HAL_PWREx_EnterSTANDBYMode (uint32_t Domain);
void HAL_PWREx_ConfigD3Domain (uint32_t D3State);

void HAL_PWREx_ClearPendingEvent (void);
# 539 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
void HAL_PWREx_EnableFlashPowerDown (void);
void HAL_PWREx_DisableFlashPowerDown (void);






void HAL_PWREx_EnableWakeUpPin (const PWREx_WakeupPinTypeDef *sPinParams);
void HAL_PWREx_DisableWakeUpPin (uint32_t WakeUpPin);
uint32_t HAL_PWREx_GetWakeupFlag (uint32_t WakeUpFlag);
HAL_StatusTypeDef HAL_PWREx_ClearWakeupFlag (uint32_t WakeUpFlag);

void HAL_PWREx_WAKEUP_PIN_IRQHandler (void);
void HAL_PWREx_WKUP1_Callback (void);
void HAL_PWREx_WKUP2_Callback (void);

void HAL_PWREx_WKUP3_Callback (void);

void HAL_PWREx_WKUP4_Callback (void);

void HAL_PWREx_WKUP5_Callback (void);

void HAL_PWREx_WKUP6_Callback (void);
# 571 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
HAL_StatusTypeDef HAL_PWREx_EnableBkUpReg (void);
HAL_StatusTypeDef HAL_PWREx_DisableBkUpReg (void);

HAL_StatusTypeDef HAL_PWREx_EnableUSBReg (void);
HAL_StatusTypeDef HAL_PWREx_DisableUSBReg (void);
void HAL_PWREx_EnableUSBVoltageDetector (void);
void HAL_PWREx_DisableUSBVoltageDetector (void);

void HAL_PWREx_EnableBatteryCharging (uint32_t ResistorValue);
void HAL_PWREx_DisableBatteryCharging (void);
# 594 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_pwr_ex.h"
void HAL_PWREx_EnableMonitoring (void);
void HAL_PWREx_DisableMonitoring (void);
uint32_t HAL_PWREx_GetTemperatureLevel (void);
uint32_t HAL_PWREx_GetVBATLevel (void);




void HAL_PWREx_ConfigAVD (const PWREx_AVDTypeDef *sConfigAVD);
void HAL_PWREx_EnableAVD (void);
void HAL_PWREx_DisableAVD (void);

void HAL_PWREx_PVD_AVD_IRQHandler (void);
void HAL_PWREx_AVDCallback (void);
# 673 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h" 2
# 683 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h"
void HAL_PWR_DeInit (void);
void HAL_PWR_EnableBkUpAccess (void);
void HAL_PWR_DisableBkUpAccess (void);
# 695 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_pwr.h"
void HAL_PWR_ConfigPVD (const PWR_PVDTypeDef *sConfigPVD);
void HAL_PWR_EnablePVD (void);
void HAL_PWR_DisablePVD (void);


void HAL_PWR_EnableWakeUpPin (uint32_t WakeUpPinPolarity);
void HAL_PWR_DisableWakeUpPin (uint32_t WakeUpPinx);


void HAL_PWR_EnterSTOPMode (uint32_t Regulator, uint8_t STOPEntry);
void HAL_PWR_EnterSLEEPMode (uint32_t Regulator, uint8_t SLEEPEntry);
void HAL_PWR_EnterSTANDBYMode (void);


void HAL_PWR_PVD_IRQHandler (void);
void HAL_PWR_PVDCallback (void);


void HAL_PWR_EnableSleepOnExit (void);
void HAL_PWR_DisableSleepOnExit (void);
void HAL_PWR_EnableSEVOnPend (void);
void HAL_PWR_DisableSEVOnPend (void);
# 414 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 458 "../Core/Inc\\stm32h7xx_hal_conf.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h" 1
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
typedef struct
{
  uint32_t Prescaler;


  uint32_t CounterMode;


  uint32_t Period;



  uint32_t ClockDivision;


  uint32_t RepetitionCounter;
# 72 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
  uint32_t AutoReloadPreload;

} TIM_Base_InitTypeDef;




typedef struct
{
  uint32_t OCMode;


  uint32_t Pulse;


  uint32_t OCPolarity;


  uint32_t OCNPolarity;



  uint32_t OCFastMode;




  uint32_t OCIdleState;



  uint32_t OCNIdleState;


} TIM_OC_InitTypeDef;




typedef struct
{
  uint32_t OCMode;


  uint32_t Pulse;


  uint32_t OCPolarity;


  uint32_t OCNPolarity;



  uint32_t OCIdleState;



  uint32_t OCNIdleState;



  uint32_t ICPolarity;


  uint32_t ICSelection;


  uint32_t ICFilter;

} TIM_OnePulse_InitTypeDef;




typedef struct
{
  uint32_t ICPolarity;


  uint32_t ICSelection;


  uint32_t ICPrescaler;


  uint32_t ICFilter;

} TIM_IC_InitTypeDef;




typedef struct
{
  uint32_t EncoderMode;


  uint32_t IC1Polarity;


  uint32_t IC1Selection;


  uint32_t IC1Prescaler;


  uint32_t IC1Filter;


  uint32_t IC2Polarity;


  uint32_t IC2Selection;


  uint32_t IC2Prescaler;


  uint32_t IC2Filter;

} TIM_Encoder_InitTypeDef;




typedef struct
{
  uint32_t ClockSource;

  uint32_t ClockPolarity;

  uint32_t ClockPrescaler;

  uint32_t ClockFilter;

} TIM_ClockConfigTypeDef;




typedef struct
{
  uint32_t ClearInputState;

  uint32_t ClearInputSource;

  uint32_t ClearInputPolarity;

  uint32_t ClearInputPrescaler;


  uint32_t ClearInputFilter;

} TIM_ClearInputConfigTypeDef;






typedef struct
{
  uint32_t MasterOutputTrigger;

  uint32_t MasterOutputTrigger2;

  uint32_t MasterSlaveMode;






} TIM_MasterConfigTypeDef;




typedef struct
{
  uint32_t SlaveMode;

  uint32_t InputTrigger;

  uint32_t TriggerPolarity;

  uint32_t TriggerPrescaler;

  uint32_t TriggerFilter;


} TIM_SlaveConfigTypeDef;






typedef struct
{
  uint32_t OffStateRunMode;

  uint32_t OffStateIDLEMode;

  uint32_t LockLevel;

  uint32_t DeadTime;

  uint32_t BreakState;

  uint32_t BreakPolarity;

  uint32_t BreakFilter;





  uint32_t Break2State;

  uint32_t Break2Polarity;

  uint32_t Break2Filter;





  uint32_t AutomaticOutput;

} TIM_BreakDeadTimeConfigTypeDef;




typedef enum
{
  HAL_TIM_STATE_RESET = 0x00U,
  HAL_TIM_STATE_READY = 0x01U,
  HAL_TIM_STATE_BUSY = 0x02U,
  HAL_TIM_STATE_TIMEOUT = 0x03U,
  HAL_TIM_STATE_ERROR = 0x04U
} HAL_TIM_StateTypeDef;




typedef enum
{
  HAL_TIM_CHANNEL_STATE_RESET = 0x00U,
  HAL_TIM_CHANNEL_STATE_READY = 0x01U,
  HAL_TIM_CHANNEL_STATE_BUSY = 0x02U,
} HAL_TIM_ChannelStateTypeDef;




typedef enum
{
  HAL_DMA_BURST_STATE_RESET = 0x00U,
  HAL_DMA_BURST_STATE_READY = 0x01U,
  HAL_DMA_BURST_STATE_BUSY = 0x02U,
} HAL_TIM_DMABurstStateTypeDef;




typedef enum
{
  HAL_TIM_ACTIVE_CHANNEL_1 = 0x01U,
  HAL_TIM_ACTIVE_CHANNEL_2 = 0x02U,
  HAL_TIM_ACTIVE_CHANNEL_3 = 0x04U,
  HAL_TIM_ACTIVE_CHANNEL_4 = 0x08U,
  HAL_TIM_ACTIVE_CHANNEL_5 = 0x10U,
  HAL_TIM_ACTIVE_CHANNEL_6 = 0x20U,
  HAL_TIM_ACTIVE_CHANNEL_CLEARED = 0x00U
} HAL_TIM_ActiveChannel;







typedef struct

{
  TIM_TypeDef *Instance;
  TIM_Base_InitTypeDef Init;
  HAL_TIM_ActiveChannel Channel;
  DMA_HandleTypeDef *hdma[7];

  HAL_LockTypeDef Lock;
  volatile HAL_TIM_StateTypeDef State;
  volatile HAL_TIM_ChannelStateTypeDef ChannelState[6];
  volatile HAL_TIM_ChannelStateTypeDef ChannelNState[4];
  volatile HAL_TIM_DMABurstStateTypeDef DMABurstState;
# 401 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
} TIM_HandleTypeDef;
# 2189 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h" 1
# 47 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h"
typedef struct
{
  uint32_t IC1Polarity;


  uint32_t IC1Prescaler;


  uint32_t IC1Filter;


  uint32_t Commutation_Delay;

} TIM_HallSensor_InitTypeDef;





typedef struct
{
  uint32_t Source;

  uint32_t Enable;

  uint32_t Polarity;


} TIMEx_BreakInputConfigTypeDef;
# 373 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h"
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Init(TIM_HandleTypeDef *htim, const TIM_HallSensor_InitTypeDef *sConfig);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_DeInit(TIM_HandleTypeDef *htim);

void HAL_TIMEx_HallSensor_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIMEx_HallSensor_MspDeInit(TIM_HandleTypeDef *htim);


HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_IT(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_IT(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_DMA(TIM_HandleTypeDef *htim);
# 398 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h"
HAL_StatusTypeDef HAL_TIMEx_OCN_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);


HAL_StatusTypeDef HAL_TIMEx_OCN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);


HAL_StatusTypeDef HAL_TIMEx_OCN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, const uint32_t *pData,
                                          uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);
# 419 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h"
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);


HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);

HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, const uint32_t *pData,
                                           uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);
# 439 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h"
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel);


HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
# 454 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h"
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent(TIM_HandleTypeDef *htim, uint32_t InputTrigger,
                                              uint32_t CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_IT(TIM_HandleTypeDef *htim, uint32_t InputTrigger,
                                                 uint32_t CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_DMA(TIM_HandleTypeDef *htim, uint32_t InputTrigger,
                                                  uint32_t CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_MasterConfigSynchronization(TIM_HandleTypeDef *htim,
                                                        const TIM_MasterConfigTypeDef *sMasterConfig);
HAL_StatusTypeDef HAL_TIMEx_ConfigBreakDeadTime(TIM_HandleTypeDef *htim,
                                                const TIM_BreakDeadTimeConfigTypeDef *sBreakDeadTimeConfig);

HAL_StatusTypeDef HAL_TIMEx_ConfigBreakInput(TIM_HandleTypeDef *htim, uint32_t BreakInput,
                                             const TIMEx_BreakInputConfigTypeDef *sBreakInputConfig);

HAL_StatusTypeDef HAL_TIMEx_GroupChannel5(TIM_HandleTypeDef *htim, uint32_t Channels);
HAL_StatusTypeDef HAL_TIMEx_RemapConfig(TIM_HandleTypeDef *htim, uint32_t Remap);
HAL_StatusTypeDef HAL_TIMEx_TISelection(TIM_HandleTypeDef *htim, uint32_t TISelection, uint32_t Channel);
# 485 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h"
void HAL_TIMEx_CommutCallback(TIM_HandleTypeDef *htim);
void HAL_TIMEx_CommutHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim);
void HAL_TIMEx_Break2Callback(TIM_HandleTypeDef *htim);
# 498 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h"
HAL_TIM_StateTypeDef HAL_TIMEx_HallSensor_GetState(const TIM_HandleTypeDef *htim);
HAL_TIM_ChannelStateTypeDef HAL_TIMEx_GetChannelNState(const TIM_HandleTypeDef *htim, uint32_t ChannelN);
# 513 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_tim_ex.h"
void TIMEx_DMACommutationCplt(DMA_HandleTypeDef *hdma);
void TIMEx_DMACommutationHalfCplt(DMA_HandleTypeDef *hdma);
# 2190 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h" 2
# 2201 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
HAL_StatusTypeDef HAL_TIM_Base_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Base_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIM_Base_Start(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_Stop(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIM_Base_Start_IT(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_Stop_IT(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIM_Base_Start_DMA(TIM_HandleTypeDef *htim, const uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_Base_Stop_DMA(TIM_HandleTypeDef *htim);
# 2223 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
HAL_StatusTypeDef HAL_TIM_OC_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_OC_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_MspDeInit(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIM_OC_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

HAL_StatusTypeDef HAL_TIM_OC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);

HAL_StatusTypeDef HAL_TIM_OC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, const uint32_t *pData,
                                       uint16_t Length);
HAL_StatusTypeDef HAL_TIM_OC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);
# 2246 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
HAL_StatusTypeDef HAL_TIM_PWM_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_PWM_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_MspDeInit(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIM_PWM_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

HAL_StatusTypeDef HAL_TIM_PWM_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);

HAL_StatusTypeDef HAL_TIM_PWM_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, const uint32_t *pData,
                                        uint16_t Length);
HAL_StatusTypeDef HAL_TIM_PWM_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);
# 2269 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
HAL_StatusTypeDef HAL_TIM_IC_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_IC_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_MspDeInit(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIM_IC_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

HAL_StatusTypeDef HAL_TIM_IC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);

HAL_StatusTypeDef HAL_TIM_IC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_IC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);
# 2291 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
HAL_StatusTypeDef HAL_TIM_OnePulse_Init(TIM_HandleTypeDef *htim, uint32_t OnePulseMode);
HAL_StatusTypeDef HAL_TIM_OnePulse_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OnePulse_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OnePulse_MspDeInit(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIM_OnePulse_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIM_OnePulse_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel);

HAL_StatusTypeDef HAL_TIM_OnePulse_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIM_OnePulse_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
# 2310 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
HAL_StatusTypeDef HAL_TIM_Encoder_Init(TIM_HandleTypeDef *htim, const TIM_Encoder_InitTypeDef *sConfig);
HAL_StatusTypeDef HAL_TIM_Encoder_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Encoder_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Encoder_MspDeInit(TIM_HandleTypeDef *htim);

HAL_StatusTypeDef HAL_TIM_Encoder_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

HAL_StatusTypeDef HAL_TIM_Encoder_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);

HAL_StatusTypeDef HAL_TIM_Encoder_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData1,
                                            uint32_t *pData2, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);
# 2333 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
void HAL_TIM_IRQHandler(TIM_HandleTypeDef *htim);
# 2343 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
HAL_StatusTypeDef HAL_TIM_OC_ConfigChannel(TIM_HandleTypeDef *htim, const TIM_OC_InitTypeDef *sConfig,
                                           uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_ConfigChannel(TIM_HandleTypeDef *htim, const TIM_OC_InitTypeDef *sConfig,
                                            uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_ConfigChannel(TIM_HandleTypeDef *htim, const TIM_IC_InitTypeDef *sConfig,
                                           uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OnePulse_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OnePulse_InitTypeDef *sConfig,
                                                 uint32_t OutputChannel, uint32_t InputChannel);
HAL_StatusTypeDef HAL_TIM_ConfigOCrefClear(TIM_HandleTypeDef *htim,
                                           const TIM_ClearInputConfigTypeDef *sClearInputConfig,
                                           uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_ConfigClockSource(TIM_HandleTypeDef *htim, const TIM_ClockConfigTypeDef *sClockSourceConfig);
HAL_StatusTypeDef HAL_TIM_ConfigTI1Input(TIM_HandleTypeDef *htim, uint32_t TI1_Selection);
HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro(TIM_HandleTypeDef *htim, const TIM_SlaveConfigTypeDef *sSlaveConfig);
HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro_IT(TIM_HandleTypeDef *htim, const TIM_SlaveConfigTypeDef *sSlaveConfig);
HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
                                              uint32_t BurstRequestSrc, const uint32_t *BurstBuffer,
                                              uint32_t BurstLength);
HAL_StatusTypeDef HAL_TIM_DMABurst_MultiWriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
                                                   uint32_t BurstRequestSrc, const uint32_t *BurstBuffer,
                                                   uint32_t BurstLength, uint32_t DataLength);
HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc);
HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
                                             uint32_t BurstRequestSrc, uint32_t *BurstBuffer, uint32_t BurstLength);
HAL_StatusTypeDef HAL_TIM_DMABurst_MultiReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
                                                  uint32_t BurstRequestSrc, uint32_t *BurstBuffer,
                                                  uint32_t BurstLength, uint32_t DataLength);
HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc);
HAL_StatusTypeDef HAL_TIM_GenerateEvent(TIM_HandleTypeDef *htim, uint32_t EventSource);
uint32_t HAL_TIM_ReadCapturedValue(const TIM_HandleTypeDef *htim, uint32_t Channel);
# 2382 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PeriodElapsedHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_DelayElapsedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_CaptureHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_PulseFinishedHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_TriggerCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_TriggerHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_ErrorCallback(TIM_HandleTypeDef *htim);
# 2409 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
HAL_TIM_StateTypeDef HAL_TIM_Base_GetState(const TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_OC_GetState(const TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_PWM_GetState(const TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_IC_GetState(const TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_OnePulse_GetState(const TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_Encoder_GetState(const TIM_HandleTypeDef *htim);


HAL_TIM_ActiveChannel HAL_TIM_GetActiveChannel(const TIM_HandleTypeDef *htim);
HAL_TIM_ChannelStateTypeDef HAL_TIM_GetChannelState(const TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_TIM_DMABurstStateTypeDef HAL_TIM_DMABurstState(const TIM_HandleTypeDef *htim);
# 2433 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_tim.h"
void TIM_Base_SetConfig(TIM_TypeDef *TIMx, const TIM_Base_InitTypeDef *Structure);
void TIM_TI1_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection, uint32_t TIM_ICFilter);
void TIM_OC2_SetConfig(TIM_TypeDef *TIMx, const TIM_OC_InitTypeDef *OC_Config);
void TIM_ETR_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ExtTRGPrescaler,
                       uint32_t TIM_ExtTRGPolarity, uint32_t ExtTRGFilter);

void TIM_DMADelayPulseHalfCplt(DMA_HandleTypeDef *hdma);
void TIM_DMAError(DMA_HandleTypeDef *hdma);
void TIM_DMACaptureCplt(DMA_HandleTypeDef *hdma);
void TIM_DMACaptureHalfCplt(DMA_HandleTypeDef *hdma);
void TIM_CCxChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelState);
# 458 "../Core/Inc\\stm32h7xx_hal_conf.h" 2




# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h" 1
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
typedef struct
{
  uint32_t BaudRate;
# 66 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
  uint32_t WordLength;


  uint32_t StopBits;


  uint32_t Parity;






  uint32_t Mode;


  uint32_t HwFlowCtl;



  uint32_t OverSampling;



  uint32_t OneBitSampling;



  uint32_t ClockPrescaler;


} UART_InitTypeDef;




typedef struct
{
  uint32_t AdvFeatureInit;




  uint32_t TxPinLevelInvert;


  uint32_t RxPinLevelInvert;


  uint32_t DataInvert;



  uint32_t Swap;


  uint32_t OverrunDisable;


  uint32_t DMADisableonRxError;


  uint32_t AutoBaudRateEnable;


  uint32_t AutoBaudRateMode;



  uint32_t MSBFirst;

} UART_AdvFeatureInitTypeDef;
# 179 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
typedef uint32_t HAL_UART_StateTypeDef;




typedef enum
{
  UART_CLOCKSOURCE_D2PCLK1 = 0x00U,
  UART_CLOCKSOURCE_D2PCLK2 = 0x01U,
  UART_CLOCKSOURCE_D3PCLK1 = 0x02U,
  UART_CLOCKSOURCE_PLL2 = 0x04U,
  UART_CLOCKSOURCE_PLL3 = 0x08U,
  UART_CLOCKSOURCE_HSI = 0x10U,
  UART_CLOCKSOURCE_CSI = 0x20U,
  UART_CLOCKSOURCE_LSE = 0x40U,
  UART_CLOCKSOURCE_UNDEFINED = 0x80U
} UART_ClockSourceTypeDef;
# 206 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
typedef uint32_t HAL_UART_RxTypeTypeDef;
# 217 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
typedef uint32_t HAL_UART_RxEventTypeTypeDef;




typedef struct __UART_HandleTypeDef
{
  USART_TypeDef *Instance;

  UART_InitTypeDef Init;

  UART_AdvFeatureInitTypeDef AdvancedInit;

  const uint8_t *pTxBuffPtr;

  uint16_t TxXferSize;

  volatile uint16_t TxXferCount;

  uint8_t *pRxBuffPtr;

  uint16_t RxXferSize;

  volatile uint16_t RxXferCount;

  uint16_t Mask;

  uint32_t FifoMode;


  uint16_t NbRxDataToProcess;

  uint16_t NbTxDataToProcess;

  volatile HAL_UART_RxTypeTypeDef ReceptionType;

  volatile HAL_UART_RxEventTypeTypeDef RxEventType;

  void (*RxISR)(struct __UART_HandleTypeDef *huart);

  void (*TxISR)(struct __UART_HandleTypeDef *huart);

  DMA_HandleTypeDef *hdmatx;

  DMA_HandleTypeDef *hdmarx;

  HAL_LockTypeDef Lock;

  volatile HAL_UART_StateTypeDef gState;



  volatile HAL_UART_StateTypeDef RxState;


  volatile uint32_t ErrorCode;
# 292 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
} UART_HandleTypeDef;
# 1597 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
# 1 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h" 1
# 46 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h"
typedef struct
{
  uint32_t WakeUpEvent;




  uint16_t AddressLength;


  uint8_t Address;
} UART_WakeUpTypeDef;
# 140 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h"
HAL_StatusTypeDef HAL_RS485Ex_Init(UART_HandleTypeDef *huart, uint32_t Polarity, uint32_t AssertionTime,
                                   uint32_t DeassertionTime);
# 151 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h"
void HAL_UARTEx_WakeupCallback(UART_HandleTypeDef *huart);

void HAL_UARTEx_RxFifoFullCallback(UART_HandleTypeDef *huart);
void HAL_UARTEx_TxFifoEmptyCallback(UART_HandleTypeDef *huart);
# 165 "../Drivers/STM32H7xx_HAL_Driver/Inc/stm32h7xx_hal_uart_ex.h"
HAL_StatusTypeDef HAL_UARTEx_StopModeWakeUpSourceConfig(UART_HandleTypeDef *huart, UART_WakeUpTypeDef WakeUpSelection);
HAL_StatusTypeDef HAL_UARTEx_EnableStopMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UARTEx_DisableStopMode(UART_HandleTypeDef *huart);

HAL_StatusTypeDef HAL_MultiProcessorEx_AddressLength_Set(UART_HandleTypeDef *huart, uint32_t AddressLength);

HAL_StatusTypeDef HAL_UARTEx_EnableFifoMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UARTEx_DisableFifoMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UARTEx_SetTxFifoThreshold(UART_HandleTypeDef *huart, uint32_t Threshold);
HAL_StatusTypeDef HAL_UARTEx_SetRxFifoThreshold(UART_HandleTypeDef *huart, uint32_t Threshold);

HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint16_t *RxLen,
                                           uint32_t Timeout);
HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);

HAL_UART_RxEventTypeTypeDef HAL_UARTEx_GetRxEventType(const UART_HandleTypeDef *huart);
# 1598 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h" 2
# 1609 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_LIN_Init(UART_HandleTypeDef *huart, uint32_t BreakDetectLength);
HAL_StatusTypeDef HAL_MultiProcessor_Init(UART_HandleTypeDef *huart, uint8_t Address, uint32_t WakeUpMethod);
HAL_StatusTypeDef HAL_UART_DeInit(UART_HandleTypeDef *huart);
void HAL_UART_MspInit(UART_HandleTypeDef *huart);
void HAL_UART_MspDeInit(UART_HandleTypeDef *huart);
# 1636 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Transmit_IT(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Transmit_DMA(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_DMAPause(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAResume(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAStop(UART_HandleTypeDef *huart);

HAL_StatusTypeDef HAL_UART_Abort(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_Abort_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive_IT(UART_HandleTypeDef *huart);

void HAL_UART_IRQHandler(UART_HandleTypeDef *huart);
void HAL_UART_TxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortTransmitCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortReceiveCpltCallback(UART_HandleTypeDef *huart);

void HAL_UARTEx_RxEventCallback(UART_HandleTypeDef *huart, uint16_t Size);
# 1674 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
void HAL_UART_ReceiverTimeout_Config(UART_HandleTypeDef *huart, uint32_t TimeoutValue);
HAL_StatusTypeDef HAL_UART_EnableReceiverTimeout(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DisableReceiverTimeout(UART_HandleTypeDef *huart);

HAL_StatusTypeDef HAL_LIN_SendBreak(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_EnableMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_DisableMuteMode(UART_HandleTypeDef *huart);
void HAL_MultiProcessor_EnterMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableTransmitter(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableReceiver(UART_HandleTypeDef *huart);
# 1694 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
HAL_UART_StateTypeDef HAL_UART_GetState(const UART_HandleTypeDef *huart);
uint32_t HAL_UART_GetError(const UART_HandleTypeDef *huart);
# 1712 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
HAL_StatusTypeDef UART_SetConfig(UART_HandleTypeDef *huart);
HAL_StatusTypeDef UART_CheckIdleState(UART_HandleTypeDef *huart);
HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status,
                                              uint32_t Tickstart, uint32_t Timeout);
void UART_AdvFeatureConfig(UART_HandleTypeDef *huart);
HAL_StatusTypeDef UART_Start_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef UART_Start_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
# 1730 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal_uart.h"
extern const uint16_t UARTPrescTable[12];
# 462 "../Core/Inc\\stm32h7xx_hal_conf.h" 2
# 30 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h" 2
# 43 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
typedef enum
{
  HAL_TICK_FREQ_10HZ = 100U,
  HAL_TICK_FREQ_100HZ = 10U,
  HAL_TICK_FREQ_1KHZ = 1U,
  HAL_TICK_FREQ_DEFAULT = HAL_TICK_FREQ_1KHZ
} HAL_TickFreqTypeDef;
# 1050 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
extern volatile uint32_t uwTick;
extern uint32_t uwTickPrio;
extern HAL_TickFreqTypeDef uwTickFreq;
# 1065 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
HAL_StatusTypeDef HAL_Init(void);
HAL_StatusTypeDef HAL_DeInit(void);
void HAL_MspInit(void);
void HAL_MspDeInit(void);
HAL_StatusTypeDef HAL_InitTick (uint32_t TickPriority);
# 1079 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
void HAL_IncTick(void);
void HAL_Delay(uint32_t Delay);
uint32_t HAL_GetTick(void);
uint32_t HAL_GetTickPrio(void);
HAL_StatusTypeDef HAL_SetTickFreq(HAL_TickFreqTypeDef Freq);
HAL_TickFreqTypeDef HAL_GetTickFreq(void);
void HAL_SuspendTick(void);
void HAL_ResumeTick(void);
uint32_t HAL_GetHalVersion(void);
uint32_t HAL_GetREVID(void);
uint32_t HAL_GetDEVID(void);
uint32_t HAL_GetUIDw0(void);
uint32_t HAL_GetUIDw1(void);
uint32_t HAL_GetUIDw2(void);

void HAL_SYSCFG_ETHInterfaceSelect(uint32_t SYSCFG_ETHInterface);

void HAL_SYSCFG_AnalogSwitchConfig(uint32_t SYSCFG_AnalogSwitch , uint32_t SYSCFG_SwitchState );

void HAL_SYSCFG_EnableBOOST(void);
void HAL_SYSCFG_DisableBOOST(void);



void HAL_SYSCFG_CM7BootAddConfig(uint32_t BootRegister, uint32_t BootAddress);
# 1113 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
void HAL_EnableCompensationCell(void);
void HAL_DisableCompensationCell(void);
void HAL_SYSCFG_EnableIOSpeedOptimize(void);
void HAL_SYSCFG_DisableIOSpeedOptimize(void);
void HAL_SYSCFG_CompensationCodeSelect(uint32_t SYSCFG_CompCode);
void HAL_SYSCFG_CompensationCodeConfig(uint32_t SYSCFG_PMOSCode, uint32_t SYSCFG_NMOSCode);



void HAL_DBGMCU_EnableDBGSleepMode(void);
void HAL_DBGMCU_DisableDBGSleepMode(void);
void HAL_DBGMCU_EnableDBGStopMode(void);
void HAL_DBGMCU_DisableDBGStopMode(void);
void HAL_DBGMCU_EnableDBGStandbyMode(void);
void HAL_DBGMCU_DisableDBGStandbyMode(void);
# 1144 "../Drivers/STM32H7xx_HAL_Driver/Inc\\stm32h7xx_hal.h"
void HAL_EXTI_EdgeConfig(uint32_t EXTI_Line , uint32_t EXTI_Edge );
void HAL_EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);



void HAL_EXTI_D1_ClearFlag(uint32_t EXTI_Line);
void HAL_EXTI_D1_EventInputConfig(uint32_t EXTI_Line , uint32_t EXTI_Mode, uint32_t EXTI_LineCmd);



void HAL_EXTI_D3_EventInputConfig(uint32_t EXTI_Line, uint32_t EXTI_LineCmd , uint32_t EXTI_ClearSrc);
void HAL_SetFMCMemorySwappingConfig(uint32_t BankMapConfig);
uint32_t HAL_GetFMCMemorySwappingConfig(void);
void HAL_SYSCFG_VREFBUF_VoltageScalingConfig(uint32_t VoltageScaling);
void HAL_SYSCFG_VREFBUF_HighImpedanceConfig(uint32_t Mode);
void HAL_SYSCFG_VREFBUF_TrimmingConfig(uint32_t TrimmingValue);
HAL_StatusTypeDef HAL_SYSCFG_EnableVREFBUF(void);
void HAL_SYSCFG_DisableVREFBUF(void);
# 30 "../Core/Inc\\main.h" 2
# 53 "../Core/Inc\\main.h"
void Error_Handler(void);
# 115 "../Core/Inc\\main.h"
typedef enum {
    WAVE_SINE = 0,
    WAVE_SQUARE,
    WAVE_TRIANGLE,
    WAVE_UNKNOWN
} WaveType_t;


typedef struct {
    float32_t Freq;
    float32_t Vpp;
    WaveType_t Wave_type;
} Wave_Struct;

  typedef struct {
    uint8_t Freq_flage;
    uint16_t Freq_time;
    uint8_t mode_flage;
  }Freq_Struct;
# 5 "../MyDrive\\bsp_system.h" 2





# 1 "../Drivers/CMSIS/DSP/Include\\arm_const_structs.h" 1
# 34 "../Drivers/CMSIS/DSP/Include\\arm_const_structs.h"
# 1 "../Drivers/CMSIS/DSP/Include/arm_common_tables.h" 1
# 37 "../Drivers/CMSIS/DSP/Include/arm_common_tables.h"
    extern const uint16_t armBitRevTable[1024];



    extern const float32_t twiddleCoef_16[32];



    extern const float32_t twiddleCoef_32[64];



    extern const float32_t twiddleCoef_64[128];



    extern const float32_t twiddleCoef_128[256];



    extern const float32_t twiddleCoef_256[512];



    extern const float32_t twiddleCoef_512[1024];



    extern const float32_t twiddleCoef_1024[2048];



    extern const float32_t twiddleCoef_2048[4096];



    extern const float32_t twiddleCoef_4096[8192];




    extern const q31_t twiddleCoef_16_q31[24];



    extern const q31_t twiddleCoef_32_q31[48];



    extern const q31_t twiddleCoef_64_q31[96];



    extern const q31_t twiddleCoef_128_q31[192];



    extern const q31_t twiddleCoef_256_q31[384];



    extern const q31_t twiddleCoef_512_q31[768];



    extern const q31_t twiddleCoef_1024_q31[1536];



    extern const q31_t twiddleCoef_2048_q31[3072];



    extern const q31_t twiddleCoef_4096_q31[6144];



    extern const q15_t twiddleCoef_16_q15[24];



    extern const q15_t twiddleCoef_32_q15[48];



    extern const q15_t twiddleCoef_64_q15[96];



    extern const q15_t twiddleCoef_128_q15[192];



    extern const q15_t twiddleCoef_256_q15[384];



    extern const q15_t twiddleCoef_512_q15[768];



    extern const q15_t twiddleCoef_1024_q15[1536];



    extern const q15_t twiddleCoef_2048_q15[3072];



    extern const q15_t twiddleCoef_4096_q15[6144];



    extern const float32_t twiddleCoef_rfft_32[32];



    extern const float32_t twiddleCoef_rfft_64[64];



    extern const float32_t twiddleCoef_rfft_128[128];



    extern const float32_t twiddleCoef_rfft_256[256];



    extern const float32_t twiddleCoef_rfft_512[512];



    extern const float32_t twiddleCoef_rfft_1024[1024];



    extern const float32_t twiddleCoef_rfft_2048[2048];



    extern const float32_t twiddleCoef_rfft_4096[4096];






    extern const uint16_t armBitRevIndexTable16[((uint16_t)20)];




    extern const uint16_t armBitRevIndexTable32[((uint16_t)48)];




    extern const uint16_t armBitRevIndexTable64[((uint16_t)56)];




    extern const uint16_t armBitRevIndexTable128[((uint16_t)208)];




    extern const uint16_t armBitRevIndexTable256[((uint16_t)440)];




    extern const uint16_t armBitRevIndexTable512[((uint16_t)448)];




    extern const uint16_t armBitRevIndexTable1024[((uint16_t)1800)];




    extern const uint16_t armBitRevIndexTable2048[((uint16_t)3808)];




    extern const uint16_t armBitRevIndexTable4096[((uint16_t)4032)];







    extern const uint16_t armBitRevIndexTable_fixed_16[((uint16_t)12)];




    extern const uint16_t armBitRevIndexTable_fixed_32[((uint16_t)24)];




    extern const uint16_t armBitRevIndexTable_fixed_64[((uint16_t)56)];




    extern const uint16_t armBitRevIndexTable_fixed_128[((uint16_t)112)];




    extern const uint16_t armBitRevIndexTable_fixed_256[((uint16_t)240)];




    extern const uint16_t armBitRevIndexTable_fixed_512[((uint16_t)480)];




    extern const uint16_t armBitRevIndexTable_fixed_1024[((uint16_t)992)];




    extern const uint16_t armBitRevIndexTable_fixed_2048[((uint16_t)1984)];




    extern const uint16_t armBitRevIndexTable_fixed_4096[((uint16_t)4032)];



    extern const float32_t realCoefA[8192];
    extern const float32_t realCoefB[8192];



    extern const q31_t realCoefAQ31[8192];
    extern const q31_t realCoefBQ31[8192];



    extern const q15_t realCoefAQ15[8192];
    extern const q15_t realCoefBQ15[8192];



    extern const float32_t Weights_128[256];
    extern const float32_t cos_factors_128[128];



    extern const float32_t Weights_512[1024];
    extern const float32_t cos_factors_512[512];



    extern const float32_t Weights_2048[4096];
    extern const float32_t cos_factors_2048[2048];



    extern const float32_t Weights_8192[16384];
    extern const float32_t cos_factors_8192[8192];



    extern const q15_t WeightsQ15_128[256];
    extern const q15_t cos_factorsQ15_128[128];



    extern const q15_t WeightsQ15_512[1024];
    extern const q15_t cos_factorsQ15_512[512];



    extern const q15_t WeightsQ15_2048[4096];
    extern const q15_t cos_factorsQ15_2048[2048];



    extern const q15_t WeightsQ15_8192[16384];
    extern const q15_t cos_factorsQ15_8192[8192];



    extern const q31_t WeightsQ31_128[256];
    extern const q31_t cos_factorsQ31_128[128];



    extern const q31_t WeightsQ31_512[1024];
    extern const q31_t cos_factorsQ31_512[512];



    extern const q31_t WeightsQ31_2048[4096];
    extern const q31_t cos_factorsQ31_2048[2048];



    extern const q31_t WeightsQ31_8192[16384];
    extern const q31_t cos_factorsQ31_8192[8192];







    extern const q15_t armRecipTableQ15[64];



    extern const q31_t armRecipTableQ31[64];




    extern const float32_t sinTable_f32[512 + 1];



    extern const q31_t sinTable_q31[512 + 1];



    extern const q15_t sinTable_q15[512 + 1];
# 35 "../Drivers/CMSIS/DSP/Include\\arm_const_structs.h" 2

   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len16;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len32;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len64;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len128;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len256;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len512;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len1024;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len2048;
   extern const arm_cfft_instance_f32 arm_cfft_sR_f32_len4096;

   extern const arm_cfft_instance_q31 arm_cfft_sR_q31_len16;
   extern const arm_cfft_instance_q31 arm_cfft_sR_q31_len32;
   extern const arm_cfft_instance_q31 arm_cfft_sR_q31_len64;
   extern const arm_cfft_instance_q31 arm_cfft_sR_q31_len128;
   extern const arm_cfft_instance_q31 arm_cfft_sR_q31_len256;
   extern const arm_cfft_instance_q31 arm_cfft_sR_q31_len512;
   extern const arm_cfft_instance_q31 arm_cfft_sR_q31_len1024;
   extern const arm_cfft_instance_q31 arm_cfft_sR_q31_len2048;
   extern const arm_cfft_instance_q31 arm_cfft_sR_q31_len4096;

   extern const arm_cfft_instance_q15 arm_cfft_sR_q15_len16;
   extern const arm_cfft_instance_q15 arm_cfft_sR_q15_len32;
   extern const arm_cfft_instance_q15 arm_cfft_sR_q15_len64;
   extern const arm_cfft_instance_q15 arm_cfft_sR_q15_len128;
   extern const arm_cfft_instance_q15 arm_cfft_sR_q15_len256;
   extern const arm_cfft_instance_q15 arm_cfft_sR_q15_len512;
   extern const arm_cfft_instance_q15 arm_cfft_sR_q15_len1024;
   extern const arm_cfft_instance_q15 arm_cfft_sR_q15_len2048;
   extern const arm_cfft_instance_q15 arm_cfft_sR_q15_len4096;
# 10 "../MyDrive\\bsp_system.h" 2


# 1 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdarg.h" 1 3
# 40 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdarg.h" 3
  typedef __builtin_va_list va_list;
# 12 "../MyDrive\\bsp_system.h" 2

# 1 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 1 3
# 68 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    typedef __builtin_va_list __va_list;
# 87 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
typedef struct __fpos_t_struct {
    unsigned long long int __pos;





    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
# 108 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
typedef struct __FILE FILE;
# 119 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
struct __FILE {
    union {
        long __FILE_alignment;



        char __FILE_size[84];

    } __FILE_opaque;
};
# 138 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;
# 224 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int remove(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((nothrow)) int rename(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 243 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) FILE *tmpfile(void);






extern __attribute__((nothrow)) char *tmpnam(char * );
# 265 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int fclose(FILE * ) __attribute__((__nonnull__(1)));
# 275 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int fflush(FILE * );
# 285 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) FILE *fopen(const char * __restrict ,
                           const char * __restrict ) __attribute__((__nonnull__(1,2)));
# 329 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) FILE *freopen(const char * __restrict ,
                    const char * __restrict ,
                    FILE * __restrict ) __attribute__((__nonnull__(2,3)));
# 342 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) void setbuf(FILE * __restrict ,
                    char * __restrict ) __attribute__((__nonnull__(1)));






extern __attribute__((nothrow)) int setvbuf(FILE * __restrict ,
                   char * __restrict ,
                   int , size_t ) __attribute__((__nonnull__(1)));
# 370 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((nothrow)) int fprintf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 393 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((nothrow)) int _fprintf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __printf_args
extern __attribute__((nothrow)) int printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));






#pragma __printf_args
extern __attribute__((nothrow)) int _printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __printf_args
extern __attribute__((nothrow)) int sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));








#pragma __printf_args
extern __attribute__((nothrow)) int _sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));






#pragma __printf_args
extern __attribute__((nothrow)) int __ARM_snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __attribute__((nothrow)) int snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));
# 460 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((nothrow)) int _snprintf(char * __restrict , size_t ,
                      const char * __restrict , ...) __attribute__((__nonnull__(3)));





#pragma __scanf_args
extern __attribute__((nothrow)) int fscanf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 503 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((nothrow)) int _fscanf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __scanf_args
extern __attribute__((nothrow)) int scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));








#pragma __scanf_args
extern __attribute__((nothrow)) int _scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __scanf_args
extern __attribute__((nothrow)) int sscanf(const char * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 541 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((nothrow)) int _sscanf(const char * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));







extern __attribute__((nothrow)) int vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) int vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((nothrow)) int vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((nothrow)) int _vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) int _vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((nothrow)) int _vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((nothrow)) int __ARM_vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((nothrow)) int vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));







extern __attribute__((nothrow)) int _vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));





extern __attribute__((nothrow)) int vfprintf(FILE * __restrict ,
                    const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 584 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int vsprintf(char * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 594 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int __ARM_vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));

extern __attribute__((nothrow)) int vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 609 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int _vsprintf(char * __restrict ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((nothrow)) int _vfprintf(FILE * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((nothrow)) int _vsnprintf(char * __restrict , size_t ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 635 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((nothrow)) int __ARM_asprintf(char ** , const char * __restrict , ...) __attribute__((__nonnull__(2)));
extern __attribute__((nothrow)) int __ARM_vasprintf(char ** , const char * __restrict , __va_list ) __attribute__((__nonnull__(2)));
# 649 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int fgetc(FILE * ) __attribute__((__nonnull__(1)));
# 659 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) char *fgets(char * __restrict , int ,
                    FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 673 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int fputc(int , FILE * ) __attribute__((__nonnull__(2)));
# 683 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int fputs(const char * __restrict , FILE * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((nothrow)) int getc(FILE * ) __attribute__((__nonnull__(1)));
# 704 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    extern __attribute__((nothrow)) int (getchar)(void);
# 713 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) char *gets(char * ) __attribute__((__nonnull__(1)));
# 725 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int putc(int , FILE * ) __attribute__((__nonnull__(2)));
# 737 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    extern __attribute__((nothrow)) int (putchar)(int );






extern __attribute__((nothrow)) int puts(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((nothrow)) int ungetc(int , FILE * ) __attribute__((__nonnull__(2)));
# 778 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) size_t fread(void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 794 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) size_t __fread_bytes_avail(void * __restrict ,
                    size_t , FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 810 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) size_t fwrite(const void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 822 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int fgetpos(FILE * __restrict , fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 833 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int fseek(FILE * , long int , int ) __attribute__((__nonnull__(1)));
# 850 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int fsetpos(FILE * __restrict , const fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 863 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) long int ftell(FILE * ) __attribute__((__nonnull__(1)));
# 877 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) void rewind(FILE * ) __attribute__((__nonnull__(1)));
# 886 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) void clearerr(FILE * ) __attribute__((__nonnull__(1)));







extern __attribute__((nothrow)) int feof(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((nothrow)) int ferror(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((nothrow)) void perror(const char * );
# 917 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((nothrow)) int _fisatty(FILE * ) __attribute__((__nonnull__(1)));



extern __attribute__((nothrow)) void __use_no_semihosting_swi(void);
extern __attribute__((nothrow)) void __use_no_semihosting(void);
# 13 "../MyDrive\\bsp_system.h" 2


# 1 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 1 3
# 96 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
typedef struct div_t { int quot, rem; } div_t;

typedef struct ldiv_t { long int quot, rem; } ldiv_t;


typedef struct lldiv_t { long long quot, rem; } lldiv_t;
# 139 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) int __aeabi_MB_CUR_MAX(void);
# 158 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) double atof(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((nothrow)) int atoi(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((nothrow)) long int atol(const char * ) __attribute__((__nonnull__(1)));






extern __attribute__((nothrow)) long long atoll(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((nothrow)) double strtod(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));
# 206 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) float strtof(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));
extern __attribute__((nothrow)) long double strtold(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));




extern __attribute__((nothrow)) long int strtol(const char * __restrict ,
                        char ** __restrict , int ) __attribute__((__nonnull__(1)));
# 243 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) unsigned long int strtoul(const char * __restrict ,
                                       char ** __restrict , int ) __attribute__((__nonnull__(1)));
# 275 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) long long strtoll(const char * __restrict ,
                                  char ** __restrict , int )
                          __attribute__((__nonnull__(1)));






extern __attribute__((nothrow)) unsigned long long strtoull(const char * __restrict ,
                                            char ** __restrict , int )
                                   __attribute__((__nonnull__(1)));






extern __attribute__((nothrow)) int rand(void);
# 303 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) void srand(unsigned int );
# 313 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
struct _rand_state { int __x[57]; };
extern __attribute__((nothrow)) int _rand_r(struct _rand_state *);
extern __attribute__((nothrow)) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __attribute__((nothrow)) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __attribute__((nothrow)) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);





extern __attribute__((nothrow)) void *calloc(size_t , size_t );





extern __attribute__((nothrow)) void free(void * );







extern __attribute__((nothrow)) void *malloc(size_t );





extern __attribute__((nothrow)) void *realloc(void * , size_t );
# 374 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
typedef int (*__heapprt)(void *, char const *, ...);
extern __attribute__((nothrow)) void __heapstats(int (* )(void * ,
                                           char const * , ...),
                        void * ) __attribute__((__nonnull__(1)));
# 390 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) int __heapvalid(int (* )(void * ,
                                           char const * , ...),
                       void * , int ) __attribute__((__nonnull__(1)));
# 409 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) __attribute__((noreturn)) void abort(void);
# 420 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) int atexit(void (* )(void)) __attribute__((__nonnull__(1)));
# 442 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) __attribute__((noreturn)) void exit(int );
# 458 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) __attribute__((noreturn)) void _Exit(int );
# 469 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) char *getenv(const char * ) __attribute__((__nonnull__(1)));
# 482 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) int system(const char * );
# 495 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern void *bsearch(const void * , const void * ,
              size_t , size_t ,
              int (* )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
# 530 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern void qsort(void * , size_t , size_t ,
           int (* )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
# 558 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) __attribute__((const)) int abs(int );






extern __attribute__((nothrow)) __attribute__((const)) div_t div(int , int );
# 577 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) __attribute__((const)) long int labs(long int );
# 587 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) __attribute__((const)) ldiv_t ldiv(long int , long int );
# 608 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) __attribute__((const)) long long llabs(long long );
# 618 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) __attribute__((const)) lldiv_t lldiv(long long , long long );
# 642 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
typedef struct __sdiv32by16 { long quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned long quot, rem; } __udiv32by16;

typedef struct __sdiv64by32 { long rem, quot; } __sdiv64by32;

__attribute__((value_in_regs)) extern __attribute__((nothrow)) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int ,
     short int );



__attribute__((value_in_regs)) extern __attribute__((nothrow)) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int ,
     unsigned short );



__attribute__((value_in_regs)) extern __attribute__((nothrow)) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int , unsigned int ,
     int );







extern __attribute__((nothrow)) unsigned int __fp_status(unsigned int , unsigned int );
# 703 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) int mblen(const char * , size_t );
# 718 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) int mbtowc(wchar_t * __restrict ,
                   const char * __restrict , size_t );
# 737 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) int wctomb(char * , wchar_t );
# 759 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) size_t mbstowcs(wchar_t * __restrict ,
                      const char * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 777 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) size_t wcstombs(char * __restrict ,
                      const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 796 "D:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((nothrow)) void __use_realtime_heap(void);
extern __attribute__((nothrow)) void __use_realtime_division(void);
extern __attribute__((nothrow)) void __use_two_region_memory(void);
extern __attribute__((nothrow)) void __use_no_heap(void);
extern __attribute__((nothrow)) void __use_no_heap_region(void);

extern __attribute__((nothrow)) char const *__C_library_version_string(void);
extern __attribute__((nothrow)) int __C_library_version_number(void);
# 15 "../MyDrive\\bsp_system.h" 2



# 1 "../Core/Inc\\gpio.h" 1
# 39 "../Core/Inc\\gpio.h"
void MX_GPIO_Init(void);
# 18 "../MyDrive\\bsp_system.h" 2

# 1 "../Core/Inc\\usart.h" 1
# 35 "../Core/Inc\\usart.h"
extern UART_HandleTypeDef huart3;





void MX_USART3_UART_Init(void);
# 19 "../MyDrive\\bsp_system.h" 2

# 1 "../Core/Inc\\adc.h" 1
# 35 "../Core/Inc\\adc.h"
extern ADC_HandleTypeDef hadc1;

extern ADC_HandleTypeDef hadc2;





void MX_ADC1_Init(void);
void MX_ADC2_Init(void);
# 20 "../MyDrive\\bsp_system.h" 2

# 1 "../Core/Inc\\tim.h" 1
# 35 "../Core/Inc\\tim.h"
extern TIM_HandleTypeDef htim1;

extern TIM_HandleTypeDef htim2;

extern TIM_HandleTypeDef htim3;





void MX_TIM1_Init(void);
void MX_TIM2_Init(void);
void MX_TIM3_Init(void);

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);
# 21 "../MyDrive\\bsp_system.h" 2

# 1 "../Core/Inc\\dma.h" 1
# 41 "../Core/Inc\\dma.h"
void MX_DMA_Init(void);
# 22 "../MyDrive\\bsp_system.h" 2



# 1 "../MyDrive/delay.h" 1


# 1 "../MyDrive/bsp_system.h" 1
# 3 "../MyDrive/delay.h" 2

void delay_us(uint32_t udelay);
void delay_ms(uint32_t t);
# 25 "../MyDrive/bsp_system.h" 2

# 1 "../MyDrive/AD9910.h" 1







typedef uint8_t u8;
typedef uint32_t u32;
typedef uint16_t u16;
typedef unsigned char uchar;
typedef unsigned int uint;
typedef unsigned long int ulong;




typedef enum
{
    TRIG_WAVE = 0,
    SQUARE_WAVE,
    SINC_WAVE,
} AD9910_WAVE_ENUM;
# 99 "../MyDrive/AD9910.h"
void Init_AD9910(void);
void AD9910_FreWrite(ulong Freq);
void AD9910_AmpWrite(uint16_t Amp);
void AD9910_RAM_WAVE_Set(AD9910_WAVE_ENUM wave);


void AD9910_DRG_AMP_Init(void);
void AD9910_DRG_FreInit_AutoSet(FunctionalState autoSweepEn);
void AD9910_DRG_FrePara_Set(u32 lowFre, u32 upFre, u32 posStep, u32 negStep, u16 posRate, u16 negRate);
# 26 "../MyDrive/bsp_system.h" 2

# 1 "../MyDrive/AD9959.h" 1
# 77 "../MyDrive/AD9959.h"
void delay1 (uint32_t length);
void IntReset(void);
void IO_Update(void);
void Intserve(void);
void AD9959_Init(void);
# 91 "../MyDrive/AD9959.h"
void AD9959_setsine(uint8_t Channel,uint32_t Freq,uint16_t Ampli,uint16_t Phase);



void AD9959_WriteData(uint8_t RegisterAddress, uint8_t NumberofRegisters, uint8_t *RegisterData);
void Write_CFTW0(uint32_t fre);
void Write_ACR(uint16_t Ampli);
void Write_CPOW0(uint16_t Phase);

void Write_LSRR(uint8_t rsrr,uint8_t fsrr);
void Write_RDW(uint32_t r_delta);
void Write_FDW(uint32_t f_delta);

void Write_Profile_Fre(uint8_t profile,uint32_t data);
void Write_Profile_Ampli(uint8_t profile,uint16_t data);
void Write_Profile_Phase(uint8_t profile,uint16_t data);




void AD9959_Set_Fre(uint8_t Channel,uint32_t Freq);
void AD9959_Set_Amp(uint8_t Channel, uint16_t Ampli);
void AD9959_Set_Phase(uint8_t Channel,uint16_t Phase);



void AD9959_Modulation_Init(uint8_t Channel,uint8_t Modulation,uint8_t Sweep_en,uint8_t Nlevel);
void AD9959_SetFSK(uint8_t Channel, uint32_t *data,uint16_t Phase);
void AD9959_SetASK(uint8_t Channel, uint16_t *data,uint32_t fre,uint16_t Phase);
void AD9959_SetPSK(uint8_t Channel, uint16_t *data,uint32_t Freq);

void AD9959_SetFre_Sweep(uint8_t Channel, uint32_t s_data,uint32_t e_data,uint32_t r_delta,uint32_t f_delta,uint8_t rsrr,uint8_t fsrr,uint16_t Ampli,uint16_t Phase);
void AD9959_SetAmp_Sweep(uint8_t Channel, uint32_t s_Ampli,uint16_t e_Ampli,uint32_t r_delta,uint32_t f_delta,uint8_t rsrr,uint8_t fsrr,uint32_t fre,uint16_t Phase);
void AD9959_SetPhase_Sweep(uint8_t Channel, uint16_t s_data,uint16_t e_data,uint16_t r_delta,uint16_t f_delta,uint8_t rsrr,uint8_t fsrr,uint32_t fre,uint16_t Ampli);
# 27 "../MyDrive/bsp_system.h" 2

# 1 "../MyDrive/HMI.h" 1



# 1 "../MyDrive/bsp_system.h" 1
# 4 "../MyDrive/HMI.h" 2


void HMI_send_string(char* name, char* showdata);
void HMI_send_number(char* name, int num);
void HMI_send_float(char* name, float num);
void HMI_send_wave(char* name, int ch, int val);
void HMI_Wave_fast(char* name, int ch, int count, int* show_data);
void HMI_Wave_clear(char* name, int ch);
void UART3_Printf(const char *format,...);
void HMI_Init(void);
# 28 "../MyDrive/bsp_system.h" 2

# 1 "../MyDrive/sys.h" 1
# 104 "../MyDrive/sys.h"
void STM32_Flash_Capacity(uint8_t *STMCapa);

void STM32_CPUID(uint8_t *IDbuff);

void STM_Clock_Init(uint8_t pll);

void MY_NVIC_SetVectorTable(uint32_t NVIC_VectTab,uint32_t Offset);

void MY_NVIC_PriorityGroup_Config(uint32_t NVIC_PriorityGroup);

void MY_NVIC_Init(uint8_t NVIC_PreemptionPriority,uint8_t NVIC_Subpriority,uint8_t NVIC_Channel,uint32_t NVIC_Group);


void MY_RCC_DeInit(void);

void SYS_Standby(void);

void SYS_SoftReset(void);

void STM_JTAG_Set(uint32_t mode);


uint8_t BCD_to_HEX(uint8_t BCD_Data);

uint8_t HEX_to_BCD(uint8_t HEX_Data);

uint16_t DX_to_HX(uint16_t DX_Data);

uint16_t HX_to_DX(uint16_t HX_Data);
# 29 "../MyDrive/bsp_system.h" 2

# 1 "../MyDrive/Get_Freq.h" 1



# 1 "../MyDrive/bsp_system.h" 1
# 4 "../MyDrive/Get_Freq.h" 2


typedef struct {
    uint8_t current_mode;
    uint64_t count;
    uint32_t gate_start;
    uint8_t is_measuring;
} FreqControl_t;


void FreqMeasure_Init(void);

void FreqMeasure_Process(float *pFreq);

void FreqMeasure_Count_Handler(uint16_t GPIO_Pin);
# 30 "../MyDrive/bsp_system.h" 2

# 1 "../Tasks\\Tasks.h" 1
# 31 "../MyDrive/bsp_system.h" 2

# 1 "../MyDrive/ad9220.h" 1







extern DMA_HandleTypeDef hdma_tim2_up;

void AD9220_Init(uint16_t *adc_buffer, uint32_t buffer_length);

void AD9220_Start_DMA(uint16_t *adc_buffer, uint32_t buffer_length);
void AD9220_Stop_DMA(void);

void process_data_ad9220(const uint16_t *data_ori, fftin *data_processed);
# 32 "../MyDrive/bsp_system.h" 2
# 6 "../Tasks\\Tasks.h" 2


typedef enum {
    SYS_STATE_IDLE = 0,
    SYS_STATE_SINGLE_SHOT,
    SYS_STATE_CONTINUOUS
} SystemState_t;


extern uint8_t adc_dma_finish;
extern __attribute__((section (".AXI_SRAM"))) uint16_t adc1_buffer[8192] ;

extern __attribute__((section (".AXI_SRAM"))) uint16_t adc2_buffer[256] ;

extern __attribute__((section (".AXI_SRAM"))) fftin FFTIN_Mix;

extern __attribute__((section (".AXI_SRAM"))) fftdata FFTOUT_Mix;

extern max_3_index Top3_Mix;

extern Wave_Struct Wave_origin;
extern Wave_Struct Wave_noise;
extern SystemState_t g_SystemState;

void Start_ADC_DMA(void);
void Stop_ADC_DMA(void);
void FFT_Task(Wave_Struct* Wave_ori,Wave_Struct* noise);
void Calc_Noice_Energy(Wave_Struct* P_Wave);
void Send_Wave(Wave_Struct* P_Wave);
void USART_Task(Wave_Struct* Wave_ori,Wave_Struct* noise);
# 1 "../Tasks/Tasks.c" 2


# 1 "../SignalProcess\\FlatTop_Window_8192.h" 1





const float32_t FlatTop_Window_8192[8192] = {
    -0.000421051f, -0.000421066f, -0.000421111f, -0.000421187f, -0.000421293f, -0.000421429f, -0.000421595f, -0.000421792f,
    -0.000422018f, -0.000422275f, -0.000422562f, -0.000422880f, -0.000423228f, -0.000423606f, -0.000424014f, -0.000424452f,
    -0.000424921f, -0.000425420f, -0.000425949f, -0.000426509f, -0.000427098f, -0.000427719f, -0.000428369f, -0.000429050f,
    -0.000429761f, -0.000430502f, -0.000431274f, -0.000432076f, -0.000432908f, -0.000433771f, -0.000434664f, -0.000435588f,
    -0.000436541f, -0.000437526f, -0.000438540f, -0.000439586f, -0.000440661f, -0.000441767f, -0.000442903f, -0.000444070f,
    -0.000445268f, -0.000446496f, -0.000447754f, -0.000449043f, -0.000450362f, -0.000451712f, -0.000453093f, -0.000454504f,
    -0.000455946f, -0.000457418f, -0.000458921f, -0.000460455f, -0.000462019f, -0.000463614f, -0.000465240f, -0.000466896f,
    -0.000468583f, -0.000470301f, -0.000472050f, -0.000473829f, -0.000475639f, -0.000477481f, -0.000479352f, -0.000481255f,
    -0.000483189f, -0.000485154f, -0.000487149f, -0.000489176f, -0.000491233f, -0.000493322f, -0.000495441f, -0.000497592f,
    -0.000499773f, -0.000501986f, -0.000504230f, -0.000506505f, -0.000508811f, -0.000511148f, -0.000513517f, -0.000515917f,
    -0.000518348f, -0.000520810f, -0.000523304f, -0.000525829f, -0.000528385f, -0.000530973f, -0.000533592f, -0.000536243f,
    -0.000538925f, -0.000541639f, -0.000544384f, -0.000547161f, -0.000549970f, -0.000552810f, -0.000555682f, -0.000558585f,
    -0.000561520f, -0.000564487f, -0.000567486f, -0.000570517f, -0.000573579f, -0.000576674f, -0.000579800f, -0.000582958f,
    -0.000586148f, -0.000589371f, -0.000592625f, -0.000595912f, -0.000599230f, -0.000602581f, -0.000605964f, -0.000609379f,
    -0.000612827f, -0.000616306f, -0.000619819f, -0.000623363f, -0.000626940f, -0.000630550f, -0.000634192f, -0.000637866f,
    -0.000641573f, -0.000645313f, -0.000649085f, -0.000652890f, -0.000656728f, -0.000660599f, -0.000664502f, -0.000668438f,
    -0.000672408f, -0.000676410f, -0.000680445f, -0.000684513f, -0.000688614f, -0.000692749f, -0.000696916f, -0.000701117f,
    -0.000705351f, -0.000709618f, -0.000713919f, -0.000718253f, -0.000722620f, -0.000727021f, -0.000731456f, -0.000735924f,
    -0.000740425f, -0.000744960f, -0.000749529f, -0.000754132f, -0.000758769f, -0.000763439f, -0.000768143f, -0.000772881f,
    -0.000777654f, -0.000782460f, -0.000787300f, -0.000792175f, -0.000797083f, -0.000802026f, -0.000807003f, -0.000812015f,
    -0.000817061f, -0.000822141f, -0.000827256f, -0.000832406f, -0.000837590f, -0.000842809f, -0.000848062f, -0.000853350f,
    -0.000858673f, -0.000864031f, -0.000869424f, -0.000874852f, -0.000880315f, -0.000885813f, -0.000891346f, -0.000896914f,
    -0.000902517f, -0.000908156f, -0.000913830f, -0.000919540f, -0.000925285f, -0.000931066f, -0.000936882f, -0.000942734f,
    -0.000948622f, -0.000954545f, -0.000960504f, -0.000966500f, -0.000972531f, -0.000978598f, -0.000984701f, -0.000990840f,
    -0.000997016f, -0.001003227f, -0.001009476f, -0.001015760f, -0.001022081f, -0.001028438f, -0.001034832f, -0.001041263f,
    -0.001047730f, -0.001054234f, -0.001060775f, -0.001067353f, -0.001073967f, -0.001080619f, -0.001087308f, -0.001094033f,
    -0.001100796f, -0.001107597f, -0.001114434f, -0.001121309f, -0.001128222f, -0.001135172f, -0.001142160f, -0.001149185f,
    -0.001156248f, -0.001163349f, -0.001170487f, -0.001177664f, -0.001184879f, -0.001192131f, -0.001199422f, -0.001206751f,
    -0.001214118f, -0.001221524f, -0.001228968f, -0.001236451f, -0.001243972f, -0.001251531f, -0.001259130f, -0.001266767f,
    -0.001274443f, -0.001282158f, -0.001289912f, -0.001297705f, -0.001305537f, -0.001313408f, -0.001321319f, -0.001329268f,
    -0.001337258f, -0.001345287f, -0.001353355f, -0.001361463f, -0.001369611f, -0.001377798f, -0.001386026f, -0.001394293f,
    -0.001402600f, -0.001410948f, -0.001419335f, -0.001427763f, -0.001436231f, -0.001444740f, -0.001453288f, -0.001461878f,
    -0.001470508f, -0.001479179f, -0.001487891f, -0.001496643f, -0.001505437f, -0.001514271f, -0.001523146f, -0.001532063f,
    -0.001541021f, -0.001550020f, -0.001559061f, -0.001568143f, -0.001577267f, -0.001586432f, -0.001595639f, -0.001604888f,
    -0.001614179f, -0.001623512f, -0.001632887f, -0.001642304f, -0.001651763f, -0.001661264f, -0.001670808f, -0.001680395f,
    -0.001690023f, -0.001699695f, -0.001709409f, -0.001719166f, -0.001728966f, -0.001738809f, -0.001748695f, -0.001758624f,
    -0.001768596f, -0.001778611f, -0.001788670f, -0.001798773f, -0.001808919f, -0.001819108f, -0.001829341f, -0.001839618f,
    -0.001849939f, -0.001860304f, -0.001870713f, -0.001881167f, -0.001891664f, -0.001902206f, -0.001912792f, -0.001923423f,
    -0.001934098f, -0.001944818f, -0.001955583f, -0.001966392f, -0.001977247f, -0.001988146f, -0.001999091f, -0.002010081f,
    -0.002021116f, -0.002032197f, -0.002043323f, -0.002054494f, -0.002065712f, -0.002076975f, -0.002088283f, -0.002099638f,
    -0.002111039f, -0.002122486f, -0.002133979f, -0.002145518f, -0.002157104f, -0.002168736f, -0.002180415f, -0.002192141f,
    -0.002203913f, -0.002215732f, -0.002227598f, -0.002239511f, -0.002251471f, -0.002263479f, -0.002275533f, -0.002287636f,
    -0.002299785f, -0.002311982f, -0.002324227f, -0.002336520f, -0.002348860f, -0.002361249f, -0.002373685f, -0.002386170f,
    -0.002398703f, -0.002411284f, -0.002423914f, -0.002436592f, -0.002449319f, -0.002462094f, -0.002474919f, -0.002487792f,
    -0.002500714f, -0.002513686f, -0.002526706f, -0.002539776f, -0.002552895f, -0.002566064f, -0.002579283f, -0.002592551f,
    -0.002605869f, -0.002619236f, -0.002632654f, -0.002646122f, -0.002659640f, -0.002673208f, -0.002686827f, -0.002700496f,
    -0.002714215f, -0.002727986f, -0.002741807f, -0.002755678f, -0.002769601f, -0.002783575f, -0.002797600f, -0.002811677f,
    -0.002825804f, -0.002839983f, -0.002854214f, -0.002868496f, -0.002882831f, -0.002897216f, -0.002911654f, -0.002926144f,
    -0.002940686f, -0.002955281f, -0.002969927f, -0.002984627f, -0.002999378f, -0.003014183f, -0.003029040f, -0.003043950f,
    -0.003058913f, -0.003073929f, -0.003088998f, -0.003104120f, -0.003119296f, -0.003134525f, -0.003149808f, -0.003165145f,
    -0.003180535f, -0.003195979f, -0.003211477f, -0.003227029f, -0.003242635f, -0.003258296f, -0.003274011f, -0.003289781f,
    -0.003305605f, -0.003321483f, -0.003337417f, -0.003353405f, -0.003369449f, -0.003385547f, -0.003401701f, -0.003417910f,
    -0.003434175f, -0.003450495f, -0.003466870f, -0.003483301f, -0.003499789f, -0.003516332f, -0.003532931f, -0.003549586f,
    -0.003566297f, -0.003583065f, -0.003599889f, -0.003616770f, -0.003633708f, -0.003650702f, -0.003667753f, -0.003684861f,
    -0.003702026f, -0.003719248f, -0.003736528f, -0.003753865f, -0.003771259f, -0.003788711f, -0.003806221f, -0.003823789f,
    -0.003841414f, -0.003859098f, -0.003876839f, -0.003894639f, -0.003912497f, -0.003930414f, -0.003948389f, -0.003966422f,
    -0.003984515f, -0.004002666f, -0.004020876f, -0.004039146f, -0.004057474f, -0.004075862f, -0.004094309f, -0.004112816f,
    -0.004131382f, -0.004150008f, -0.004168693f, -0.004187439f, -0.004206245f, -0.004225110f, -0.004244036f, -0.004263023f,
    -0.004282069f, -0.004301176f, -0.004320344f, -0.004339573f, -0.004358862f, -0.004378213f, -0.004397624f, -0.004417097f,
    -0.004436631f, -0.004456226f, -0.004475883f, -0.004495601f, -0.004515381f, -0.004535223f, -0.004555127f, -0.004575093f,
    -0.004595121f, -0.004615211f, -0.004635363f, -0.004655578f, -0.004675855f, -0.004696195f, -0.004716598f, -0.004737064f,
    -0.004757592f, -0.004778184f, -0.004798839f, -0.004819557f, -0.004840339f, -0.004861183f, -0.004882092f, -0.004903064f,
    -0.004924100f, -0.004945200f, -0.004966364f, -0.004987592f, -0.005008885f, -0.005030241f, -0.005051662f, -0.005073148f,
    -0.005094698f, -0.005116313f, -0.005137993f, -0.005159738f, -0.005181548f, -0.005203423f, -0.005225363f, -0.005247369f,
    -0.005269440f, -0.005291577f, -0.005313779f, -0.005336047f, -0.005358381f, -0.005380781f, -0.005403247f, -0.005425780f,
    -0.005448379f, -0.005471044f, -0.005493775f, -0.005516574f, -0.005539439f, -0.005562370f, -0.005585369f, -0.005608435f,
    -0.005631568f, -0.005654768f, -0.005678036f, -0.005701370f, -0.005724773f, -0.005748243f, -0.005771781f, -0.005795387f,
    -0.005819061f, -0.005842802f, -0.005866612f, -0.005890491f, -0.005914437f, -0.005938452f, -0.005962536f, -0.005986688f,
    -0.006010910f, -0.006035200f, -0.006059559f, -0.006083987f, -0.006108484f, -0.006133051f, -0.006157687f, -0.006182392f,
    -0.006207167f, -0.006232012f, -0.006256927f, -0.006281911f, -0.006306965f, -0.006332090f, -0.006357285f, -0.006382550f,
    -0.006407885f, -0.006433291f, -0.006458768f, -0.006484315f, -0.006509933f, -0.006535622f, -0.006561382f, -0.006587213f,
    -0.006613115f, -0.006639089f, -0.006665134f, -0.006691250f, -0.006717438f, -0.006743698f, -0.006770029f, -0.006796433f,
    -0.006822908f, -0.006849455f, -0.006876075f, -0.006902767f, -0.006929531f, -0.006956368f, -0.006983277f, -0.007010259f,
    -0.007037314f, -0.007064441f, -0.007091642f, -0.007118915f, -0.007146262f, -0.007173682f, -0.007201175f, -0.007228742f,
    -0.007256382f, -0.007284096f, -0.007311884f, -0.007339745f, -0.007367680f, -0.007395690f, -0.007423773f, -0.007451931f,
    -0.007480163f, -0.007508469f, -0.007536850f, -0.007565305f, -0.007593835f, -0.007622439f, -0.007651119f, -0.007679873f,
    -0.007708703f, -0.007737608f, -0.007766587f, -0.007795642f, -0.007824773f, -0.007853979f, -0.007883261f, -0.007912618f,
    -0.007942051f, -0.007971560f, -0.008001144f, -0.008030805f, -0.008060542f, -0.008090355f, -0.008120245f, -0.008150210f,
    -0.008180253f, -0.008210372f, -0.008240567f, -0.008270839f, -0.008301188f, -0.008331614f, -0.008362117f, -0.008392697f,
    -0.008423355f, -0.008454089f, -0.008484901f, -0.008515790f, -0.008546757f, -0.008577801f, -0.008608923f, -0.008640123f,
    -0.008671401f, -0.008702757f, -0.008734190f, -0.008765702f, -0.008797292f, -0.008828960f, -0.008860707f, -0.008892532f,
    -0.008924436f, -0.008956418f, -0.008988479f, -0.009020618f, -0.009052837f, -0.009085134f, -0.009117511f, -0.009149967f,
    -0.009182501f, -0.009215115f, -0.009247809f, -0.009280582f, -0.009313434f, -0.009346366f, -0.009379377f, -0.009412469f,
    -0.009445640f, -0.009478891f, -0.009512222f, -0.009545632f, -0.009579124f, -0.009612695f, -0.009646346f, -0.009680078f,
    -0.009713891f, -0.009747784f, -0.009781757f, -0.009815811f, -0.009849946f, -0.009884162f, -0.009918458f, -0.009952836f,
    -0.009987294f, -0.010021834f, -0.010056454f, -0.010091156f, -0.010125940f, -0.010160804f, -0.010195750f, -0.010230778f,
    -0.010265887f, -0.010301078f, -0.010336351f, -0.010371705f, -0.010407142f, -0.010442660f, -0.010478260f, -0.010513942f,
    -0.010549707f, -0.010585553f, -0.010621482f, -0.010657494f, -0.010693587f, -0.010729764f, -0.010766022f, -0.010802364f,
    -0.010838788f, -0.010875295f, -0.010911884f, -0.010948557f, -0.010985312f, -0.011022150f, -0.011059072f, -0.011096076f,
    -0.011133164f, -0.011170335f, -0.011207589f, -0.011244927f, -0.011282348f, -0.011319852f, -0.011357440f, -0.011395112f,
    -0.011432867f, -0.011470706f, -0.011508629f, -0.011546635f, -0.011584726f, -0.011622900f, -0.011661159f, -0.011699501f,
    -0.011737928f, -0.011776439f, -0.011815034f, -0.011853713f, -0.011892476f, -0.011931324f, -0.011970257f, -0.012009274f,
    -0.012048375f, -0.012087561f, -0.012126832f, -0.012166187f, -0.012205627f, -0.012245152f, -0.012284762f, -0.012324456f,
    -0.012364236f, -0.012404100f, -0.012444050f, -0.012484085f, -0.012524204f, -0.012564409f, -0.012604699f, -0.012645075f,
    -0.012685536f, -0.012726082f, -0.012766713f, -0.012807430f, -0.012848232f, -0.012889120f, -0.012930094f, -0.012971153f,
    -0.013012298f, -0.013053528f, -0.013094844f, -0.013136246f, -0.013177734f, -0.013219308f, -0.013260967f, -0.013302713f,
    -0.013344544f, -0.013386461f, -0.013428465f, -0.013470554f, -0.013512730f, -0.013554992f, -0.013597340f, -0.013639774f,
    -0.013682294f, -0.013724901f, -0.013767594f, -0.013810373f, -0.013853239f, -0.013896191f, -0.013939229f, -0.013982354f,
    -0.014025566f, -0.014068864f, -0.014112248f, -0.014155719f, -0.014199277f, -0.014242921f, -0.014286652f, -0.014330470f,
    -0.014374374f, -0.014418365f, -0.014462443f, -0.014506608f, -0.014550859f, -0.014595198f, -0.014639623f, -0.014684135f,
    -0.014728734f, -0.014773419f, -0.014818192f, -0.014863052f, -0.014907998f, -0.014953032f, -0.014998153f, -0.015043360f,
    -0.015088655f, -0.015134037f, -0.015179505f, -0.015225061f, -0.015270704f, -0.015316434f, -0.015362251f, -0.015408156f,
    -0.015454147f, -0.015500226f, -0.015546392f, -0.015592645f, -0.015638985f, -0.015685412f, -0.015731927f, -0.015778528f,
    -0.015825217f, -0.015871993f, -0.015918857f, -0.015965808f, -0.016012845f, -0.016059971f, -0.016107183f, -0.016154483f,
    -0.016201869f, -0.016249344f, -0.016296905f, -0.016344554f, -0.016392290f, -0.016440113f, -0.016488023f, -0.016536021f,
    -0.016584106f, -0.016632278f, -0.016680537f, -0.016728884f, -0.016777318f, -0.016825839f, -0.016874447f, -0.016923143f,
    -0.016971926f, -0.017020796f, -0.017069753f, -0.017118797f, -0.017167929f, -0.017217147f, -0.017266453f, -0.017315846f,
    -0.017365326f, -0.017414893f, -0.017464547f, -0.017514289f, -0.017564117f, -0.017614033f, -0.017664035f, -0.017714125f,
    -0.017764301f, -0.017814565f, -0.017864915f, -0.017915352f, -0.017965877f, -0.018016488f, -0.018067186f, -0.018117971f,
    -0.018168843f, -0.018219801f, -0.018270847f, -0.018321979f, -0.018373198f, -0.018424503f, -0.018475895f, -0.018527374f,
    -0.018578940f, -0.018630592f, -0.018682330f, -0.018734156f, -0.018786067f, -0.018838065f, -0.018890150f, -0.018942321f,
    -0.018994578f, -0.019046922f, -0.019099352f, -0.019151868f, -0.019204470f, -0.019257159f, -0.019309934f, -0.019362794f,
    -0.019415741f, -0.019468774f, -0.019521893f, -0.019575098f, -0.019628389f, -0.019681765f, -0.019735227f, -0.019788776f,
    -0.019842409f, -0.019896129f, -0.019949934f, -0.020003825f, -0.020057801f, -0.020111863f, -0.020166010f, -0.020220242f,
    -0.020274560f, -0.020328963f, -0.020383452f, -0.020438025f, -0.020492684f, -0.020547427f, -0.020602256f, -0.020657169f,
    -0.020712168f, -0.020767251f, -0.020822419f, -0.020877672f, -0.020933009f, -0.020988431f, -0.021043937f, -0.021099528f,
    -0.021155204f, -0.021210963f, -0.021266807f, -0.021322735f, -0.021378747f, -0.021434843f, -0.021491024f, -0.021547288f,
    -0.021603636f, -0.021660067f, -0.021716583f, -0.021773182f, -0.021829864f, -0.021886630f, -0.021943480f, -0.022000413f,
    -0.022057429f, -0.022114528f, -0.022171710f, -0.022228976f, -0.022286324f, -0.022343755f, -0.022401269f, -0.022458866f,
    -0.022516545f, -0.022574307f, -0.022632151f, -0.022690077f, -0.022748086f, -0.022806177f, -0.022864350f, -0.022922605f,
    -0.022980942f, -0.023039361f, -0.023097862f, -0.023156444f, -0.023215108f, -0.023273853f, -0.023332679f, -0.023391587f,
    -0.023450576f, -0.023509646f, -0.023568797f, -0.023628029f, -0.023687342f, -0.023746735f, -0.023806209f, -0.023865763f,
    -0.023925398f, -0.023985113f, -0.024044908f, -0.024104783f, -0.024164738f, -0.024224773f, -0.024284888f, -0.024345082f,
    -0.024405356f, -0.024465709f, -0.024526141f, -0.024586653f, -0.024647243f, -0.024707913f, -0.024768661f, -0.024829488f,
    -0.024890394f, -0.024951378f, -0.025012440f, -0.025073581f, -0.025134800f, -0.025196096f, -0.025257471f, -0.025318923f,
    -0.025380453f, -0.025442061f, -0.025503746f, -0.025565508f, -0.025627347f, -0.025689263f, -0.025751256f, -0.025813326f,
    -0.025875472f, -0.025937695f, -0.025999994f, -0.026062369f, -0.026124820f, -0.026187347f, -0.026249950f, -0.026312629f,
    -0.026375383f, -0.026438212f, -0.026501117f, -0.026564097f, -0.026627151f, -0.026690281f, -0.026753485f, -0.026816764f,
    -0.026880116f, -0.026943544f, -0.027007045f, -0.027070620f, -0.027134269f, -0.027197991f, -0.027261787f, -0.027325656f,
    -0.027389598f, -0.027453614f, -0.027517702f, -0.027581863f, -0.027646096f, -0.027710402f, -0.027774779f, -0.027839229f,
    -0.027903751f, -0.027968344f, -0.028033009f, -0.028097746f, -0.028162553f, -0.028227432f, -0.028292382f, -0.028357402f,
    -0.028422493f, -0.028487654f, -0.028552885f, -0.028618187f, -0.028683558f, -0.028748999f, -0.028814509f, -0.028880089f,
    -0.028945738f, -0.029011456f, -0.029077242f, -0.029143098f, -0.029209021f, -0.029275013f, -0.029341073f, -0.029407201f,
    -0.029473397f, -0.029539660f, -0.029605990f, -0.029672388f, -0.029738852f, -0.029805384f, -0.029871982f, -0.029938646f,
    -0.030005376f, -0.030072172f, -0.030139035f, -0.030205962f, -0.030272955f, -0.030340014f, -0.030407137f, -0.030474325f,
    -0.030541578f, -0.030608895f, -0.030676276f, -0.030743721f, -0.030811230f, -0.030878803f, -0.030946439f, -0.031014138f,
    -0.031081900f, -0.031149725f, -0.031217612f, -0.031285562f, -0.031353574f, -0.031421647f, -0.031489782f, -0.031557979f,
    -0.031626237f, -0.031694556f, -0.031762936f, -0.031831376f, -0.031899877f, -0.031968437f, -0.032037058f, -0.032105738f,
    -0.032174478f, -0.032243277f, -0.032312135f, -0.032381052f, -0.032450027f, -0.032519061f, -0.032588152f, -0.032657302f,
    -0.032726509f, -0.032795773f, -0.032865095f, -0.032934473f, -0.033003909f, -0.033073400f, -0.033142948f, -0.033212551f,
    -0.033282211f, -0.033351925f, -0.033421695f, -0.033491520f, -0.033561400f, -0.033631334f, -0.033701322f, -0.033771364f,
    -0.033841460f, -0.033911609f, -0.033981812f, -0.034052067f, -0.034122375f, -0.034192736f, -0.034263149f, -0.034333613f,
    -0.034404129f, -0.034474697f, -0.034545316f, -0.034615985f, -0.034686706f, -0.034757476f, -0.034828297f, -0.034899167f,
    -0.034970087f, -0.035041056f, -0.035112074f, -0.035183141f, -0.035254256f, -0.035325420f, -0.035396631f, -0.035467890f,
    -0.035539196f, -0.035610549f, -0.035681949f, -0.035753396f, -0.035824888f, -0.035896427f, -0.035968011f, -0.036039641f,
    -0.036111315f, -0.036183035f, -0.036254799f, -0.036326607f, -0.036398459f, -0.036470355f, -0.036542293f, -0.036614275f,
    -0.036686300f, -0.036758367f, -0.036830476f, -0.036902627f, -0.036974820f, -0.037047054f, -0.037119329f, -0.037191644f,
    -0.037264000f, -0.037336395f, -0.037408831f, -0.037481306f, -0.037553819f, -0.037626372f, -0.037698963f, -0.037771592f,
    -0.037844260f, -0.037916964f, -0.037989706f, -0.038062485f, -0.038135300f, -0.038208151f, -0.038281039f, -0.038353962f,
    -0.038426920f, -0.038499914f, -0.038572942f, -0.038646004f, -0.038719100f, -0.038792230f, -0.038865393f, -0.038938589f,
    -0.039011818f, -0.039085079f, -0.039158372f, -0.039231697f, -0.039305053f, -0.039378440f, -0.039451858f, -0.039525306f,
    -0.039598784f, -0.039672292f, -0.039745828f, -0.039819394f, -0.039892989f, -0.039966611f, -0.040040262f, -0.040113940f,
    -0.040187645f, -0.040261377f, -0.040335135f, -0.040408920f, -0.040482731f, -0.040556566f, -0.040630427f, -0.040704313f,
    -0.040778223f, -0.040852156f, -0.040926114f, -0.041000095f, -0.041074098f, -0.041148124f, -0.041222173f, -0.041296243f,
    -0.041370334f, -0.041444447f, -0.041518580f, -0.041592733f, -0.041666907f, -0.041741100f, -0.041815312f, -0.041889543f,
    -0.041963792f, -0.042038059f, -0.042112344f, -0.042186646f, -0.042260966f, -0.042335301f, -0.042409653f, -0.042484020f,
    -0.042558403f, -0.042632801f, -0.042707213f, -0.042781640f, -0.042856080f, -0.042930534f, -0.043005000f, -0.043079480f,
    -0.043153971f, -0.043228474f, -0.043302989f, -0.043377515f, -0.043452051f, -0.043526597f, -0.043601153f, -0.043675719f,
    -0.043750293f, -0.043824876f, -0.043899467f, -0.043974066f, -0.044048673f, -0.044123286f, -0.044197905f, -0.044272531f,
    -0.044347162f, -0.044421799f, -0.044496441f, -0.044571086f, -0.044645736f, -0.044720390f, -0.044795046f, -0.044869705f,
    -0.044944367f, -0.045019030f, -0.045093695f, -0.045168361f, -0.045243027f, -0.045317694f, -0.045392360f, -0.045467026f,
    -0.045541690f, -0.045616353f, -0.045691014f, -0.045765672f, -0.045840327f, -0.045914979f, -0.045989627f, -0.046064271f,
    -0.046138910f, -0.046213544f, -0.046288173f, -0.046362795f, -0.046437411f, -0.046512020f, -0.046586621f, -0.046661215f,
    -0.046735800f, -0.046810377f, -0.046884944f, -0.046959502f, -0.047034050f, -0.047108587f, -0.047183113f, -0.047257627f,
    -0.047332129f, -0.047406619f, -0.047481096f, -0.047555560f, -0.047630010f, -0.047704445f, -0.047778866f, -0.047853271f,
    -0.047927661f, -0.048002034f, -0.048076391f, -0.048150730f, -0.048225052f, -0.048299356f, -0.048373641f, -0.048447907f,
    -0.048522153f, -0.048596380f, -0.048670585f, -0.048744770f, -0.048818933f, -0.048893074f, -0.048967193f, -0.049041289f,
    -0.049115361f, -0.049189409f, -0.049263432f, -0.049337431f, -0.049411404f, -0.049485351f, -0.049559272f, -0.049633166f,
    -0.049707032f, -0.049780870f, -0.049854679f, -0.049928460f, -0.050002211f, -0.050075932f, -0.050149623f, -0.050223282f,
    -0.050296910f, -0.050370506f, -0.050444069f, -0.050517599f, -0.050591096f, -0.050664558f, -0.050737986f, -0.050811378f,
    -0.050884735f, -0.050958055f, -0.051031339f, -0.051104586f, -0.051177794f, -0.051250965f, -0.051324096f, -0.051397188f,
    -0.051470240f, -0.051543252f, -0.051616223f, -0.051689152f, -0.051762039f, -0.051834883f, -0.051907685f, -0.051980442f,
    -0.052053155f, -0.052125824f, -0.052198447f, -0.052271025f, -0.052343556f, -0.052416040f, -0.052488476f, -0.052560865f,
    -0.052633205f, -0.052705495f, -0.052777736f, -0.052849927f, -0.052922067f, -0.052994155f, -0.053066192f, -0.053138176f,
    -0.053210107f, -0.053281984f, -0.053353808f, -0.053425576f, -0.053497289f, -0.053568947f, -0.053640547f, -0.053712091f,
    -0.053783577f, -0.053855005f, -0.053926375f, -0.053997685f, -0.054068935f, -0.054140125f, -0.054211253f, -0.054282320f,
    -0.054353325f, -0.054424267f, -0.054495146f, -0.054565961f, -0.054636711f, -0.054707396f, -0.054778016f, -0.054848569f,
    -0.054919055f, -0.054989474f, -0.055059825f, -0.055130107f, -0.055200320f, -0.055270463f, -0.055340536f, -0.055410538f,
    -0.055480468f, -0.055550326f, -0.055620111f, -0.055689822f, -0.055759460f, -0.055829023f, -0.055898511f, -0.055967923f,
    -0.056037258f, -0.056106516f, -0.056175697f, -0.056244800f, -0.056313823f, -0.056382767f, -0.056451631f, -0.056520414f,
    -0.056589116f, -0.056657736f, -0.056726273f, -0.056794728f, -0.056863098f, -0.056931384f, -0.056999584f, -0.057067699f,
    -0.057135728f, -0.057203670f, -0.057271524f, -0.057339290f, -0.057406967f, -0.057474555f, -0.057542053f, -0.057609459f,
    -0.057676775f, -0.057743998f, -0.057811129f, -0.057878167f, -0.057945110f, -0.058011959f, -0.058078713f, -0.058145371f,
    -0.058211932f, -0.058278397f, -0.058344763f, -0.058411032f, -0.058477201f, -0.058543270f, -0.058609239f, -0.058675107f,
    -0.058740873f, -0.058806537f, -0.058872098f, -0.058937555f, -0.059002908f, -0.059068156f, -0.059133298f, -0.059198334f,
    -0.059263263f, -0.059328085f, -0.059392798f, -0.059457402f, -0.059521897f, -0.059586281f, -0.059650554f, -0.059714716f,
    -0.059778765f, -0.059842702f, -0.059906525f, -0.059970233f, -0.060033827f, -0.060097305f, -0.060160667f, -0.060223911f,
    -0.060287038f, -0.060350047f, -0.060412936f, -0.060475706f, -0.060538355f, -0.060600883f, -0.060663290f, -0.060725574f,
    -0.060787734f, -0.060849771f, -0.060911683f, -0.060973471f, -0.061035132f, -0.061096666f, -0.061158073f, -0.061219353f,
    -0.061280503f, -0.061341524f, -0.061402415f, -0.061463175f, -0.061523804f, -0.061584300f, -0.061644664f, -0.061704894f,
    -0.061764989f, -0.061824950f, -0.061884774f, -0.061944463f, -0.062004014f, -0.062063427f, -0.062122702f, -0.062181837f,
    -0.062240833f, -0.062299687f, -0.062358400f, -0.062416972f, -0.062475400f, -0.062533684f, -0.062591825f, -0.062649820f,
    -0.062707669f, -0.062765372f, -0.062822928f, -0.062880336f, -0.062937595f, -0.062994705f, -0.063051665f, -0.063108474f,
    -0.063165131f, -0.063221636f, -0.063277988f, -0.063334187f, -0.063390230f, -0.063446119f, -0.063501852f, -0.063557427f,
    -0.063612846f, -0.063668106f, -0.063723207f, -0.063778149f, -0.063832930f, -0.063887550f, -0.063942008f, -0.063996304f,
    -0.064050436f, -0.064104404f, -0.064158207f, -0.064211845f, -0.064265316f, -0.064318620f, -0.064371756f, -0.064424724f,
    -0.064477522f, -0.064530150f, -0.064582607f, -0.064634892f, -0.064687005f, -0.064738945f, -0.064790711f, -0.064842302f,
    -0.064893718f, -0.064944957f, -0.064996020f, -0.065046905f, -0.065097611f, -0.065148138f, -0.065198485f, -0.065248651f,
    -0.065298636f, -0.065348438f, -0.065398057f, -0.065447492f, -0.065496743f, -0.065545808f, -0.065594687f, -0.065643378f,
    -0.065691883f, -0.065740198f, -0.065788324f, -0.065836261f, -0.065884006f, -0.065931559f, -0.065978921f, -0.066026088f,
    -0.066073062f, -0.066119842f, -0.066166425f, -0.066212812f, -0.066259002f, -0.066304994f, -0.066350788f, -0.066396381f,
    -0.066441775f, -0.066486967f, -0.066531958f, -0.066576746f, -0.066621330f, -0.066665710f, -0.066709885f, -0.066753854f,
    -0.066797617f, -0.066841172f, -0.066884518f, -0.066927656f, -0.066970584f, -0.067013301f, -0.067055806f, -0.067098100f,
    -0.067140180f, -0.067182046f, -0.067223698f, -0.067265134f, -0.067306354f, -0.067347356f, -0.067388141f, -0.067428707f,
    -0.067469054f, -0.067509180f, -0.067549085f, -0.067588768f, -0.067628228f, -0.067667465f, -0.067706477f, -0.067745264f,
    -0.067783824f, -0.067822158f, -0.067860264f, -0.067898142f, -0.067935790f, -0.067973208f, -0.068010396f, -0.068047351f,
    -0.068084074f, -0.068120563f, -0.068156818f, -0.068192838f, -0.068228621f, -0.068264169f, -0.068299478f, -0.068334549f,
    -0.068369381f, -0.068403973f, -0.068438324f, -0.068472433f, -0.068506299f, -0.068539922f, -0.068573301f, -0.068606435f,
    -0.068639322f, -0.068671963f, -0.068704357f, -0.068736502f, -0.068768397f, -0.068800043f, -0.068831437f, -0.068862580f,
    -0.068893470f, -0.068924107f, -0.068954489f, -0.068984617f, -0.069014488f, -0.069044102f, -0.069073459f, -0.069102557f,
    -0.069131395f, -0.069159974f, -0.069188291f, -0.069216346f, -0.069244139f, -0.069271668f, -0.069298932f, -0.069325931f,
    -0.069352664f, -0.069379130f, -0.069405327f, -0.069431256f, -0.069456916f, -0.069482305f, -0.069507422f, -0.069532268f,
    -0.069556840f, -0.069581139f, -0.069605162f, -0.069628911f, -0.069652382f, -0.069675576f, -0.069698492f, -0.069721129f,
    -0.069743486f, -0.069765563f, -0.069787357f, -0.069808869f, -0.069830098f, -0.069851042f, -0.069871701f, -0.069892074f,
    -0.069912161f, -0.069931959f, -0.069951469f, -0.069970690f, -0.069989620f, -0.070008259f, -0.070026606f, -0.070044660f,
    -0.070062420f, -0.070079886f, -0.070097056f, -0.070113929f, -0.070130505f, -0.070146783f, -0.070162762f, -0.070178441f,
    -0.070193819f, -0.070208895f, -0.070223669f, -0.070238139f, -0.070252305f, -0.070266166f, -0.070279720f, -0.070292968f,
    -0.070305908f, -0.070318539f, -0.070330861f, -0.070342872f, -0.070354571f, -0.070365958f, -0.070377033f, -0.070387793f,
    -0.070398238f, -0.070408367f, -0.070418180f, -0.070427675f, -0.070436852f, -0.070445709f, -0.070454246f, -0.070462462f,
    -0.070470356f, -0.070477927f, -0.070485174f, -0.070492097f, -0.070498694f, -0.070504964f, -0.070510907f, -0.070516522f,
    -0.070521808f, -0.070526763f, -0.070531388f, -0.070535681f, -0.070539641f, -0.070543268f, -0.070546560f, -0.070549517f,
    -0.070552137f, -0.070554421f, -0.070556366f, -0.070557972f, -0.070559239f, -0.070560164f, -0.070560748f, -0.070560989f,
    -0.070560887f, -0.070560441f, -0.070559649f, -0.070558511f, -0.070557026f, -0.070555193f, -0.070553011f, -0.070550480f,
    -0.070547598f, -0.070544364f, -0.070540778f, -0.070536838f, -0.070532544f, -0.070527895f, -0.070522890f, -0.070517528f,
    -0.070511808f, -0.070505729f, -0.070499291f, -0.070492492f, -0.070485331f, -0.070477808f, -0.070469922f, -0.070461672f,
    -0.070453056f, -0.070444074f, -0.070434726f, -0.070425010f, -0.070414925f, -0.070404470f, -0.070393645f, -0.070382448f,
    -0.070370879f, -0.070358936f, -0.070346620f, -0.070333928f, -0.070320860f, -0.070307416f, -0.070293593f, -0.070279392f,
    -0.070264811f, -0.070249850f, -0.070234507f, -0.070218782f, -0.070202674f, -0.070186181f, -0.070169304f, -0.070152040f,
    -0.070134389f, -0.070116351f, -0.070097924f, -0.070079107f, -0.070059899f, -0.070040300f, -0.070020309f, -0.069999925f,
    -0.069979146f, -0.069957972f, -0.069936402f, -0.069914435f, -0.069892070f, -0.069869307f, -0.069846144f, -0.069822580f,
    -0.069798615f, -0.069774247f, -0.069749476f, -0.069724300f, -0.069698720f, -0.069672733f, -0.069646340f, -0.069619538f,
    -0.069592328f, -0.069564708f, -0.069536678f, -0.069508235f, -0.069479381f, -0.069450113f, -0.069420430f, -0.069390333f,
    -0.069359819f, -0.069328889f, -0.069297540f, -0.069265772f, -0.069233585f, -0.069200977f, -0.069167948f, -0.069134495f,
    -0.069100620f, -0.069066320f, -0.069031595f, -0.068996443f, -0.068960865f, -0.068924858f, -0.068888423f, -0.068851558f,
    -0.068814262f, -0.068776534f, -0.068738374f, -0.068699781f, -0.068660752f, -0.068621289f, -0.068581389f, -0.068541053f,
    -0.068500278f, -0.068459064f, -0.068417410f, -0.068375316f, -0.068332780f, -0.068289801f, -0.068246379f, -0.068202512f,
    -0.068158200f, -0.068113441f, -0.068068236f, -0.068022582f, -0.067976479f, -0.067929927f, -0.067882923f, -0.067835468f,
    -0.067787560f, -0.067739199f, -0.067690383f, -0.067641112f, -0.067591384f, -0.067541200f, -0.067490557f, -0.067439455f,
    -0.067387893f, -0.067335870f, -0.067283386f, -0.067230439f, -0.067177028f, -0.067123153f, -0.067068812f, -0.067014006f,
    -0.066958731f, -0.066902989f, -0.066846778f, -0.066790097f, -0.066732945f, -0.066675321f, -0.066617225f, -0.066558655f,
    -0.066499610f, -0.066440090f, -0.066380094f, -0.066319621f, -0.066258670f, -0.066197239f, -0.066135329f, -0.066072938f,
    -0.066010065f, -0.065946710f, -0.065882871f, -0.065818547f, -0.065753739f, -0.065688444f, -0.065622662f, -0.065556392f,
    -0.065489633f, -0.065422384f, -0.065354644f, -0.065286413f, -0.065217689f, -0.065148472f, -0.065078761f, -0.065008554f,
    -0.064937851f, -0.064866651f, -0.064794953f, -0.064722757f, -0.064650060f, -0.064576863f, -0.064503165f, -0.064428964f,
    -0.064354259f, -0.064279051f, -0.064203337f, -0.064127118f, -0.064050391f, -0.063973157f, -0.063895414f, -0.063817162f,
    -0.063738399f, -0.063659125f, -0.063579338f, -0.063499039f, -0.063418225f, -0.063336896f, -0.063255052f, -0.063172691f,
    -0.063089813f, -0.063006415f, -0.062922499f, -0.062838062f, -0.062753105f, -0.062667625f, -0.062581622f, -0.062495096f,
    -0.062408045f, -0.062320468f, -0.062232365f, -0.062143735f, -0.062054576f, -0.061964888f, -0.061874671f, -0.061783922f,
    -0.061692642f, -0.061600829f, -0.061508483f, -0.061415603f, -0.061322187f, -0.061228235f, -0.061133746f, -0.061038720f,
    -0.060943154f, -0.060847049f, -0.060750404f, -0.060653217f, -0.060555488f, -0.060457216f, -0.060358400f, -0.060259039f,
    -0.060159132f, -0.060058679f, -0.059957678f, -0.059856129f, -0.059754031f, -0.059651383f, -0.059548184f, -0.059444433f,
    -0.059340130f, -0.059235273f, -0.059129861f, -0.059023895f, -0.058917372f, -0.058810293f, -0.058702655f, -0.058594459f,
    -0.058485704f, -0.058376388f, -0.058266511f, -0.058156072f, -0.058045070f, -0.057933504f, -0.057821373f, -0.057708677f,
    -0.057595414f, -0.057481585f, -0.057367187f, -0.057252220f, -0.057136684f, -0.057020577f, -0.056903899f, -0.056786648f,
    -0.056668824f, -0.056550426f, -0.056431453f, -0.056311905f, -0.056191780f, -0.056071078f, -0.055949798f, -0.055827938f,
    -0.055705499f, -0.055582479f, -0.055458877f, -0.055334693f, -0.055209926f, -0.055084574f, -0.054958638f, -0.054832116f,
    -0.054705008f, -0.054577312f, -0.054449028f, -0.054320155f, -0.054190692f, -0.054060638f, -0.053929993f, -0.053798755f,
    -0.053666925f, -0.053534500f, -0.053401480f, -0.053267865f, -0.053133653f, -0.052998844f, -0.052863437f, -0.052727431f,
    -0.052590826f, -0.052453619f, -0.052315812f, -0.052177402f, -0.052038389f, -0.051898773f, -0.051758551f, -0.051617725f,
    -0.051476292f, -0.051334252f, -0.051191604f, -0.051048348f, -0.050904482f, -0.050760006f, -0.050614919f, -0.050469220f,
    -0.050322908f, -0.050175983f, -0.050028444f, -0.049880289f, -0.049731519f, -0.049582132f, -0.049432128f, -0.049281505f,
    -0.049130264f, -0.048978403f, -0.048825921f, -0.048672817f, -0.048519092f, -0.048364743f, -0.048209771f, -0.048054174f,
    -0.047897952f, -0.047741104f, -0.047583629f, -0.047425527f, -0.047266796f, -0.047107436f, -0.046947445f, -0.046786824f,
    -0.046625572f, -0.046463687f, -0.046301170f, -0.046138018f, -0.045974232f, -0.045809810f, -0.045644753f, -0.045479058f,
    -0.045312726f, -0.045145756f, -0.044978146f, -0.044809896f, -0.044641006f, -0.044471474f, -0.044301300f, -0.044130483f,
    -0.043959023f, -0.043786918f, -0.043614167f, -0.043440771f, -0.043266728f, -0.043092038f, -0.042916700f, -0.042740712f,
    -0.042564075f, -0.042386788f, -0.042208849f, -0.042030258f, -0.041851015f, -0.041671119f, -0.041490568f, -0.041309363f,
    -0.041127502f, -0.040944985f, -0.040761810f, -0.040577978f, -0.040393488f, -0.040208338f, -0.040022529f, -0.039836059f,
    -0.039648927f, -0.039461134f, -0.039272677f, -0.039083557f, -0.038893773f, -0.038703324f, -0.038512210f, -0.038320429f,
    -0.038127981f, -0.037934865f, -0.037741081f, -0.037546628f, -0.037351504f, -0.037155711f, -0.036959246f, -0.036762109f,
    -0.036564299f, -0.036365816f, -0.036166659f, -0.035966827f, -0.035766320f, -0.035565137f, -0.035363276f, -0.035160739f,
    -0.034957523f, -0.034753628f, -0.034549054f, -0.034343800f, -0.034137865f, -0.033931248f, -0.033723949f, -0.033515967f,
    -0.033307301f, -0.033097951f, -0.032887917f, -0.032677196f, -0.032465790f, -0.032253696f, -0.032040915f, -0.031827446f,
    -0.031613288f, -0.031398440f, -0.031182902f, -0.030966673f, -0.030749753f, -0.030532141f, -0.030313835f, -0.030094837f,
    -0.029875144f, -0.029654756f, -0.029433673f, -0.029211894f, -0.028989419f, -0.028766246f, -0.028542375f, -0.028317806f,
    -0.028092537f, -0.027866569f, -0.027639900f, -0.027412530f, -0.027184458f, -0.026955684f, -0.026726207f, -0.026496027f,
    -0.026265142f, -0.026033553f, -0.025801258f, -0.025568257f, -0.025334550f, -0.025100135f, -0.024865012f, -0.024629181f,
    -0.024392641f, -0.024155391f, -0.023917431f, -0.023678760f, -0.023439378f, -0.023199284f, -0.022958477f, -0.022716957f,
    -0.022474723f, -0.022231774f, -0.021988111f, -0.021743732f, -0.021498637f, -0.021252825f, -0.021006296f, -0.020759049f,
    -0.020511083f, -0.020262399f, -0.020012995f, -0.019762870f, -0.019512025f, -0.019260459f, -0.019008171f, -0.018755161f,
    -0.018501427f, -0.018246970f, -0.017991789f, -0.017735883f, -0.017479252f, -0.017221896f, -0.016963813f, -0.016705003f,
    -0.016445466f, -0.016185201f, -0.015924208f, -0.015662485f, -0.015400033f, -0.015136851f, -0.014872939f, -0.014608295f,
    -0.014342920f, -0.014076813f, -0.013809973f, -0.013542399f, -0.013274092f, -0.013005051f, -0.012735275f, -0.012464764f,
    -0.012193517f, -0.011921533f, -0.011648813f, -0.011375356f, -0.011101161f, -0.010826228f, -0.010550555f, -0.010274144f,
    -0.009996993f, -0.009719101f, -0.009440469f, -0.009161095f, -0.008880980f, -0.008600122f, -0.008318522f, -0.008036179f,
    -0.007753092f, -0.007469261f, -0.007184685f, -0.006899364f, -0.006613298f, -0.006326486f, -0.006038927f, -0.005750621f,
    -0.005461568f, -0.005171767f, -0.004881218f, -0.004589920f, -0.004297873f, -0.004005076f, -0.003711530f, -0.003417232f,
    -0.003122184f, -0.002826384f, -0.002529832f, -0.002232528f, -0.001934472f, -0.001635662f, -0.001336098f, -0.001035781f,
    -0.000734709f, -0.000432882f, -0.000130300f, 0.000173037f, 0.000477131f, 0.000781982f, 0.001087589f, 0.001393953f,
    0.001701076f, 0.002008956f, 0.002317595f, 0.002626993f, 0.002937151f, 0.003248068f, 0.003559745f, 0.003872183f,
    0.004185381f, 0.004499341f, 0.004814063f, 0.005129546f, 0.005445792f, 0.005762801f, 0.006080573f, 0.006399109f,
    0.006718409f, 0.007038472f, 0.007359301f, 0.007680894f, 0.008003253f, 0.008326378f, 0.008650269f, 0.008974926f,
    0.009300350f, 0.009626541f, 0.009953499f, 0.010281226f, 0.010609720f, 0.010938983f, 0.011269015f, 0.011599816f,
    0.011931386f, 0.012263727f, 0.012596837f, 0.012930718f, 0.013265370f, 0.013600793f, 0.013936987f, 0.014273953f,
    0.014611691f, 0.014950201f, 0.015289484f, 0.015629540f, 0.015970370f, 0.016311972f, 0.016654349f, 0.016997500f,
    0.017341425f, 0.017686125f, 0.018031600f, 0.018377851f, 0.018724877f, 0.019072678f, 0.019421256f, 0.019770611f,
    0.020120742f, 0.020471649f, 0.020823335f, 0.021175797f, 0.021529038f, 0.021883056f, 0.022237852f, 0.022593427f,
    0.022949781f, 0.023306914f, 0.023664826f, 0.024023518f, 0.024382989f, 0.024743240f, 0.025104271f, 0.025466083f,
    0.025828676f, 0.026192049f, 0.026556203f, 0.026921139f, 0.027286856f, 0.027653355f, 0.028020636f, 0.028388700f,
    0.028757545f, 0.029127173f, 0.029497584f, 0.029868778f, 0.030240755f, 0.030613516f, 0.030987060f, 0.031361388f,
    0.031736500f, 0.032112396f, 0.032489076f, 0.032866541f, 0.033244790f, 0.033623825f, 0.034003644f, 0.034384248f,
    0.034765638f, 0.035147814f, 0.035530775f, 0.035914522f, 0.036299055f, 0.036684374f, 0.037070479f, 0.037457371f,
    0.037845049f, 0.038233514f, 0.038622766f, 0.039012805f, 0.039403631f, 0.039795244f, 0.040187644f, 0.040580832f,
    0.040974808f, 0.041369572f, 0.041765123f, 0.042161462f, 0.042558590f, 0.042956505f, 0.043355209f, 0.043754701f,
    0.044154982f, 0.044556051f, 0.044957909f, 0.045360556f, 0.045763991f, 0.046168216f, 0.046573229f, 0.046979032f,
    0.047385624f, 0.047793005f, 0.048201175f, 0.048610135f, 0.049019884f, 0.049430423f, 0.049841751f, 0.050253869f,
    0.050666777f, 0.051080474f, 0.051494962f, 0.051910239f, 0.052326305f, 0.052743162f, 0.053160809f, 0.053579246f,
    0.053998472f, 0.054418489f, 0.054839296f, 0.055260893f, 0.055683280f, 0.056106457f, 0.056530424f, 0.056955181f,
    0.057380729f, 0.057807067f, 0.058234194f, 0.058662112f, 0.059090820f, 0.059520319f, 0.059950607f, 0.060381686f,
    0.060813554f, 0.061246213f, 0.061679662f, 0.062113900f, 0.062548929f, 0.062984748f, 0.063421356f, 0.063858755f,
    0.064296943f, 0.064735922f, 0.065175690f, 0.065616247f, 0.066057595f, 0.066499732f, 0.066942658f, 0.067386374f,
    0.067830880f, 0.068276175f, 0.068722259f, 0.069169132f, 0.069616795f, 0.070065247f, 0.070514487f, 0.070964517f,
    0.071415335f, 0.071866942f, 0.072319338f, 0.072772522f, 0.073226494f, 0.073681255f, 0.074136804f, 0.074593142f,
    0.075050267f, 0.075508180f, 0.075966881f, 0.076426369f, 0.076886646f, 0.077347709f, 0.077809560f, 0.078272198f,
    0.078735622f, 0.079199834f, 0.079664832f, 0.080130617f, 0.080597189f, 0.081064546f, 0.081532690f, 0.082001620f,
    0.082471335f, 0.082941836f, 0.083413123f, 0.083885194f, 0.084358051f, 0.084831693f, 0.085306120f, 0.085781331f,
    0.086257326f, 0.086734106f, 0.087211670f, 0.087690017f, 0.088169148f, 0.088649063f, 0.089129760f, 0.089611241f,
    0.090093505f, 0.090576551f, 0.091060379f, 0.091544989f, 0.092030382f, 0.092516556f, 0.093003511f, 0.093491248f,
    0.093979766f, 0.094469064f, 0.094959143f, 0.095450002f, 0.095941641f, 0.096434060f, 0.096927258f, 0.097421236f,
    0.097915992f, 0.098411527f, 0.098907841f, 0.099404933f, 0.099902803f, 0.100401450f, 0.100900874f, 0.101401076f,
    0.101902055f, 0.102403809f, 0.102906340f, 0.103409647f, 0.103913730f, 0.104418588f, 0.104924220f, 0.105430628f,
    0.105937809f, 0.106445765f, 0.106954495f, 0.107463997f, 0.107974273f, 0.108485322f, 0.108997143f, 0.109509736f,
    0.110023101f, 0.110537237f, 0.111052144f, 0.111567822f, 0.112084270f, 0.112601488f, 0.113119476f, 0.113638233f,
    0.114157759f, 0.114678053f, 0.115199116f, 0.115720946f, 0.116243544f, 0.116766909f, 0.117291040f, 0.117815938f,
    0.118341602f, 0.118868031f, 0.119395225f, 0.119923184f, 0.120451907f, 0.120981393f, 0.121511644f, 0.122042657f,
    0.122574433f, 0.123106971f, 0.123640271f, 0.124174333f, 0.124709155f, 0.125244737f, 0.125781080f, 0.126318182f,
    0.126856044f, 0.127394664f, 0.127934043f, 0.128474179f, 0.129015073f, 0.129556723f, 0.130099130f, 0.130642293f,
    0.131186212f, 0.131730885f, 0.132276313f, 0.132822495f, 0.133369431f, 0.133917120f, 0.134465561f, 0.135014755f,
    0.135564700f, 0.136115396f, 0.136666843f, 0.137219040f, 0.137771987f, 0.138325683f, 0.138880127f, 0.139435319f,
    0.139991259f, 0.140547946f, 0.141105380f, 0.141663559f, 0.142222484f, 0.142782154f, 0.143342568f, 0.143903726f,
    0.144465627f, 0.145028271f, 0.145591657f, 0.146155784f, 0.146720653f, 0.147286262f, 0.147852611f, 0.148419699f,
    0.148987526f, 0.149556091f, 0.150125394f, 0.150695433f, 0.151266209f, 0.151837721f, 0.152409968f, 0.152982950f,
    0.153556666f, 0.154131115f, 0.154706297f, 0.155282211f, 0.155858857f, 0.156436233f, 0.157014340f, 0.157593177f,
    0.158172743f, 0.158753037f, 0.159334059f, 0.159915808f, 0.160498284f, 0.161081485f, 0.161665412f, 0.162250064f,
    0.162835439f, 0.163421538f, 0.164008359f, 0.164595902f, 0.165184167f, 0.165773152f, 0.166362857f, 0.166953281f,
    0.167544424f, 0.168136284f, 0.168728862f, 0.169322156f, 0.169916167f, 0.170510892f, 0.171106331f, 0.171702485f,
    0.172299351f, 0.172896930f, 0.173495220f, 0.174094221f, 0.174693932f, 0.175294352f, 0.175895482f, 0.176497319f,
    0.177099863f, 0.177703114f, 0.178307070f, 0.178911731f, 0.179517097f, 0.180123166f, 0.180729938f, 0.181337412f,
    0.181945586f, 0.182554462f, 0.183164037f, 0.183774311f, 0.184385282f, 0.184996952f, 0.185609318f, 0.186222379f,
    0.186836136f, 0.187450586f, 0.188065730f, 0.188681567f, 0.189298095f, 0.189915314f, 0.190533224f, 0.191151823f,
    0.191771110f, 0.192391085f, 0.193011747f, 0.193633095f, 0.194255128f, 0.194877846f, 0.195501247f, 0.196125331f,
    0.196750096f, 0.197375543f, 0.198001670f, 0.198628476f, 0.199255961f, 0.199884123f, 0.200512962f, 0.201142477f,
    0.201772667f, 0.202403531f, 0.203035068f, 0.203667278f, 0.204300159f, 0.204933711f, 0.205567932f, 0.206202823f,
    0.206838381f, 0.207474606f, 0.208111497f, 0.208749054f, 0.209387275f, 0.210026159f, 0.210665706f, 0.211305914f,
    0.211946783f, 0.212588311f, 0.213230499f, 0.213873344f, 0.214516846f, 0.215161004f, 0.215805817f, 0.216451284f,
    0.217097405f, 0.217744177f, 0.218391601f, 0.219039675f, 0.219688398f, 0.220337769f, 0.220987788f, 0.221638453f,
    0.222289764f, 0.222941719f, 0.223594317f, 0.224247558f, 0.224901441f, 0.225555963f, 0.226211126f, 0.226866926f,
    0.227523365f, 0.228180439f, 0.228838150f, 0.229496494f, 0.230155472f, 0.230815083f, 0.231475324f, 0.232136196f,
    0.232797698f, 0.233459828f, 0.234122585f, 0.234785968f, 0.235449976f, 0.236114609f, 0.236779864f, 0.237445742f,
    0.238112240f, 0.238779359f, 0.239447096f, 0.240115451f, 0.240784423f, 0.241454010f, 0.242124212f, 0.242795028f,
    0.243466456f, 0.244138495f, 0.244811144f, 0.245484403f, 0.246158269f, 0.246832743f, 0.247507822f, 0.248183506f,
    0.248859794f, 0.249536684f, 0.250214176f, 0.250892268f, 0.251570959f, 0.252250248f, 0.252930134f, 0.253610616f,
    0.254291692f, 0.254973362f, 0.255655624f, 0.256338478f, 0.257021921f, 0.257705954f, 0.258390574f, 0.259075781f,
    0.259761573f, 0.260447950f, 0.261134909f, 0.261822451f, 0.262510573f, 0.263199275f, 0.263888556f, 0.264578413f,
    0.265268847f, 0.265959856f, 0.266651438f, 0.267343593f, 0.268036319f, 0.268729615f, 0.269423480f, 0.270117912f,
    0.270812911f, 0.271508475f, 0.272204604f, 0.272901295f, 0.273598547f, 0.274296360f, 0.274994732f, 0.275693662f,
    0.276393149f, 0.277093191f, 0.277793787f, 0.278494936f, 0.279196637f, 0.279898888f, 0.280601688f, 0.281305036f,
    0.282008931f, 0.282713371f, 0.283418356f, 0.284123883f, 0.284829951f, 0.285536560f, 0.286243708f, 0.286951394f,
    0.287659616f, 0.288368373f, 0.289077664f, 0.289787487f, 0.290497842f, 0.291208726f, 0.291920140f, 0.292632080f,
    0.293344547f, 0.294057538f, 0.294771053f, 0.295485089f, 0.296199647f, 0.296914724f, 0.297630318f, 0.298346430f,
    0.299063057f, 0.299780198f, 0.300497852f, 0.301216017f, 0.301934692f, 0.302653876f, 0.303373567f, 0.304093764f,
    0.304814465f, 0.305535670f, 0.306257377f, 0.306979584f, 0.307702290f, 0.308425494f, 0.309149195f, 0.309873390f,
    0.310598079f, 0.311323260f, 0.312048932f, 0.312775093f, 0.313501742f, 0.314228878f, 0.314956499f, 0.315684604f,
    0.316413191f, 0.317142260f, 0.317871807f, 0.318601833f, 0.319332336f, 0.320063314f, 0.320794765f, 0.321526690f,
    0.322259085f, 0.322991950f, 0.323725282f, 0.324459082f, 0.325193347f, 0.325928075f, 0.326663266f, 0.327398918f,
    0.328135029f, 0.328871598f, 0.329608623f, 0.330346104f, 0.331084038f, 0.331822424f, 0.332561261f, 0.333300547f,
    0.334040280f, 0.334780460f, 0.335521085f, 0.336262152f, 0.337003661f, 0.337745611f, 0.338487999f, 0.339230824f,
    0.339974085f, 0.340717781f, 0.341461909f, 0.342206468f, 0.342951456f, 0.343696873f, 0.344442716f, 0.345188985f,
    0.345935677f, 0.346682791f, 0.347430326f, 0.348178279f, 0.348926650f, 0.349675437f, 0.350424638f, 0.351174252f,
    0.351924277f, 0.352674711f, 0.353425554f, 0.354176804f, 0.354928458f, 0.355680516f, 0.356432976f, 0.357185836f,
    0.357939095f, 0.358692751f, 0.359446802f, 0.360201248f, 0.360956085f, 0.361711314f, 0.362466932f, 0.363222938f,
    0.363979329f, 0.364736105f, 0.365493264f, 0.366250804f, 0.367008724f, 0.367767022f, 0.368525696f, 0.369284745f,
    0.370044168f, 0.370803962f, 0.371564125f, 0.372324658f, 0.373085556f, 0.373846820f, 0.374608448f, 0.375370437f,
    0.376132786f, 0.376895494f, 0.377658559f, 0.378421978f, 0.379185752f, 0.379949877f, 0.380714353f, 0.381479178f,
    0.382244349f, 0.383009866f, 0.383775726f, 0.384541928f, 0.385308471f, 0.386075352f, 0.386842570f, 0.387610123f,
    0.388378010f, 0.389146229f, 0.389914779f, 0.390683656f, 0.391452861f, 0.392222391f, 0.392992244f, 0.393762419f,
    0.394532914f, 0.395303727f, 0.396074857f, 0.396846302f, 0.397618061f, 0.398390130f, 0.399162510f, 0.399935198f,
    0.400708192f, 0.401481490f, 0.402255092f, 0.403028995f, 0.403803197f, 0.404577697f, 0.405352493f, 0.406127584f,
    0.406902966f, 0.407678640f, 0.408454603f, 0.409230853f, 0.410007388f, 0.410784207f, 0.411561308f, 0.412338690f,
    0.413116350f, 0.413894287f, 0.414672498f, 0.415450983f, 0.416229740f, 0.417008766f, 0.417788060f, 0.418567620f,
    0.419347444f, 0.420127531f, 0.420907879f, 0.421688486f, 0.422469350f, 0.423250469f, 0.424031842f, 0.424813467f,
    0.425595342f, 0.426377465f, 0.427159834f, 0.427942449f, 0.428725305f, 0.429508403f, 0.430291740f, 0.431075315f,
    0.431859125f, 0.432643169f, 0.433427444f, 0.434211950f, 0.434996684f, 0.435781645f, 0.436566830f, 0.437352238f,
    0.438137866f, 0.438923714f, 0.439709780f, 0.440496060f, 0.441282554f, 0.442069260f, 0.442856176f, 0.443643300f,
    0.444430630f, 0.445218165f, 0.446005901f, 0.446793839f, 0.447581975f, 0.448370308f, 0.449158837f, 0.449947558f,
    0.450736471f, 0.451525573f, 0.452314862f, 0.453104338f, 0.453893997f, 0.454683838f, 0.455473859f, 0.456264058f,
    0.457054434f, 0.457844984f, 0.458635706f, 0.459426599f, 0.460217661f, 0.461008889f, 0.461800283f, 0.462591839f,
    0.463383557f, 0.464175434f, 0.464967468f, 0.465759657f, 0.466552000f, 0.467344494f, 0.468137138f, 0.468929930f,
    0.469722868f, 0.470515950f, 0.471309173f, 0.472102537f, 0.472896038f, 0.473689676f, 0.474483448f, 0.475277353f,
    0.476071388f, 0.476865551f, 0.477659841f, 0.478454255f, 0.479248793f, 0.480043450f, 0.480838227f, 0.481633120f,
    0.482428129f, 0.483223250f, 0.484018482f, 0.484813823f, 0.485609271f, 0.486404824f, 0.487200481f, 0.487996238f,
    0.488792095f, 0.489588049f, 0.490384098f, 0.491180240f, 0.491976474f, 0.492772797f, 0.493569208f, 0.494365704f,
    0.495162283f, 0.495958944f, 0.496755684f, 0.497552502f, 0.498349396f, 0.499146362f, 0.499943401f, 0.500740509f,
    0.501537684f, 0.502334925f, 0.503132229f, 0.503929595f, 0.504727021f, 0.505524504f, 0.506322043f, 0.507119635f,
    0.507917279f, 0.508714972f, 0.509512713f, 0.510310499f, 0.511108329f, 0.511906201f, 0.512704112f, 0.513502060f,
    0.514300044f, 0.515098061f, 0.515896110f, 0.516694188f, 0.517492293f, 0.518290424f, 0.519088578f, 0.519886753f,
    0.520684947f, 0.521483159f, 0.522281386f, 0.523079626f, 0.523877877f, 0.524676138f, 0.525474405f, 0.526272677f,
    0.527070952f, 0.527869229f, 0.528667504f, 0.529465775f, 0.530264042f, 0.531062301f, 0.531860551f, 0.532658790f,
    0.533457015f, 0.534255225f, 0.535053417f, 0.535851589f, 0.536649740f, 0.537447867f, 0.538245969f, 0.539044042f,
    0.539842086f, 0.540640097f, 0.541438075f, 0.542236016f, 0.543033919f, 0.543831782f, 0.544629603f, 0.545427379f,
    0.546225109f, 0.547022790f, 0.547820421f, 0.548617998f, 0.549415522f, 0.550212988f, 0.551010395f, 0.551807741f,
    0.552605024f, 0.553402242f, 0.554199393f, 0.554996474f, 0.555793483f, 0.556590420f, 0.557387280f, 0.558184063f,
    0.558980766f, 0.559777387f, 0.560573924f, 0.561370374f, 0.562166737f, 0.562963009f, 0.563759189f, 0.564555274f,
    0.565351263f, 0.566147152f, 0.566942941f, 0.567738628f, 0.568534209f, 0.569329682f, 0.570125047f, 0.570920300f,
    0.571715440f, 0.572510464f, 0.573305370f, 0.574100156f, 0.574894821f, 0.575689361f, 0.576483775f, 0.577278061f,
    0.578072217f, 0.578866240f, 0.579660128f, 0.580453879f, 0.581247492f, 0.582040964f, 0.582834292f, 0.583627475f,
    0.584420510f, 0.585213397f, 0.586006131f, 0.586798712f, 0.587591136f, 0.588383403f, 0.589175509f, 0.589967453f,
    0.590759233f, 0.591550846f, 0.592342290f, 0.593133563f, 0.593924664f, 0.594715589f, 0.595506337f, 0.596296906f,
    0.597087293f, 0.597877496f, 0.598667513f, 0.599457343f, 0.600246982f, 0.601036429f, 0.601825682f, 0.602614738f,
    0.603403595f, 0.604192252f, 0.604980705f, 0.605768954f, 0.606556995f, 0.607344826f, 0.608132446f, 0.608919853f,
    0.609707043f, 0.610494015f, 0.611280768f, 0.612067297f, 0.612853603f, 0.613639681f, 0.614425531f, 0.615211150f,
    0.615996536f, 0.616781686f, 0.617566599f, 0.618351273f, 0.619135705f, 0.619919892f, 0.620703834f, 0.621487528f,
    0.622270971f, 0.623054161f, 0.623837097f, 0.624619776f, 0.625402196f, 0.626184355f, 0.626966251f, 0.627747881f,
    0.628529243f, 0.629310335f, 0.630091156f, 0.630871702f, 0.631651972f, 0.632431964f, 0.633211675f, 0.633991103f,
    0.634770246f, 0.635549101f, 0.636327668f, 0.637105943f, 0.637883924f, 0.638661610f, 0.639438997f, 0.640216085f,
    0.640992870f, 0.641769351f, 0.642545524f, 0.643321390f, 0.644096944f, 0.644872185f, 0.645647110f, 0.646421718f,
    0.647196007f, 0.647969973f, 0.648743616f, 0.649516932f, 0.650289920f, 0.651062577f, 0.651834902f, 0.652606892f,
    0.653378544f, 0.654149858f, 0.654920830f, 0.655691459f, 0.656461741f, 0.657231676f, 0.658001261f, 0.658770494f,
    0.659539372f, 0.660307893f, 0.661076056f, 0.661843858f, 0.662611297f, 0.663378370f, 0.664145076f, 0.664911413f,
    0.665677377f, 0.666442968f, 0.667208182f, 0.667973018f, 0.668737474f, 0.669501547f, 0.670265235f, 0.671028536f,
    0.671791448f, 0.672553969f, 0.673316096f, 0.674077827f, 0.674839161f, 0.675600094f, 0.676360625f, 0.677120752f,
    0.677880473f, 0.678639784f, 0.679398685f, 0.680157173f, 0.680915245f, 0.681672900f, 0.682430135f, 0.683186949f,
    0.683943339f, 0.684699303f, 0.685454838f, 0.686209943f, 0.686964616f, 0.687718853f, 0.688472654f, 0.689226016f,
    0.689978936f, 0.690731413f, 0.691483445f, 0.692235029f, 0.692986162f, 0.693736844f, 0.694487071f, 0.695236842f,
    0.695986155f, 0.696735007f, 0.697483395f, 0.698231319f, 0.698978776f, 0.699725763f, 0.700472278f, 0.701218320f,
    0.701963886f, 0.702708974f, 0.703453582f, 0.704197707f, 0.704941348f, 0.705684502f, 0.706427168f, 0.707169342f,
    0.707911023f, 0.708652209f, 0.709392898f, 0.710133086f, 0.710872773f, 0.711611957f, 0.712350634f, 0.713088802f,
    0.713826461f, 0.714563607f, 0.715300238f, 0.716036352f, 0.716771948f, 0.717507022f, 0.718241573f, 0.718975599f,
    0.719709097f, 0.720442065f, 0.721174501f, 0.721906404f, 0.722637770f, 0.723368598f, 0.724098885f, 0.724828630f,
    0.725557830f, 0.726286483f, 0.727014587f, 0.727742140f, 0.728469140f, 0.729195584f, 0.729921471f, 0.730646798f,
    0.731371563f, 0.732095765f, 0.732819400f, 0.733542467f, 0.734264963f, 0.734986887f, 0.735708236f, 0.736429009f,
    0.737149203f, 0.737868815f, 0.738587845f, 0.739306289f, 0.740024146f, 0.740741413f, 0.741458089f, 0.742174171f,
    0.742889657f, 0.743604545f, 0.744318833f, 0.745032518f, 0.745745599f, 0.746458074f, 0.747169940f, 0.747881196f,
    0.748591838f, 0.749301866f, 0.750011277f, 0.750720068f, 0.751428238f, 0.752135785f, 0.752842707f, 0.753549000f,
    0.754254664f, 0.754959697f, 0.755664095f, 0.756367857f, 0.757070982f, 0.757773466f, 0.758475308f, 0.759176505f,
    0.759877056f, 0.760576958f, 0.761276210f, 0.761974809f, 0.762672753f, 0.763370040f, 0.764066668f, 0.764762635f,
    0.765457939f, 0.766152577f, 0.766846548f, 0.767539850f, 0.768232480f, 0.768924436f, 0.769615717f, 0.770306320f,
    0.770996243f, 0.771685484f, 0.772374041f, 0.773061912f, 0.773749095f, 0.774435588f, 0.775121389f, 0.775806495f,
    0.776490904f, 0.777174616f, 0.777857627f, 0.778539935f, 0.779221538f, 0.779902435f, 0.780582623f, 0.781262101f,
    0.781940865f, 0.782618914f, 0.783296247f, 0.783972860f, 0.784648753f, 0.785323922f, 0.785998366f, 0.786672083f,
    0.787345071f, 0.788017328f, 0.788688851f, 0.789359639f, 0.790029689f, 0.790699000f, 0.791367570f, 0.792035396f,
    0.792702476f, 0.793368809f, 0.794034393f, 0.794699225f, 0.795363303f, 0.796026626f, 0.796689191f, 0.797350996f,
    0.798012040f, 0.798672320f, 0.799331834f, 0.799990581f, 0.800648558f, 0.801305763f, 0.801962195f, 0.802617850f,
    0.803272728f, 0.803926827f, 0.804580143f, 0.805232676f, 0.805884423f, 0.806535382f, 0.807185552f, 0.807834930f,
    0.808483515f, 0.809131303f, 0.809778294f, 0.810424486f, 0.811069875f, 0.811714462f, 0.812358242f, 0.813001215f,
    0.813643379f, 0.814284731f, 0.814925270f, 0.815564993f, 0.816203899f, 0.816841986f, 0.817479251f, 0.818115693f,
    0.818751310f, 0.819386099f, 0.820020060f, 0.820653189f, 0.821285486f, 0.821916947f, 0.822547572f, 0.823177358f,
    0.823806303f, 0.824434405f, 0.825061662f, 0.825688073f, 0.826313636f, 0.826938348f, 0.827562207f, 0.828185213f,
    0.828807362f, 0.829428652f, 0.830049083f, 0.830668652f, 0.831287357f, 0.831905196f, 0.832522167f, 0.833138269f,
    0.833753499f, 0.834367855f, 0.834981337f, 0.835593941f, 0.836205666f, 0.836816509f, 0.837426470f, 0.838035546f,
    0.838643735f, 0.839251036f, 0.839857446f, 0.840462964f, 0.841067587f, 0.841671315f, 0.842274144f, 0.842876074f,
    0.843477101f, 0.844077225f, 0.844676444f, 0.845274755f, 0.845872157f, 0.846468648f, 0.847064226f, 0.847658889f,
    0.848252636f, 0.848845464f, 0.849437372f, 0.850028357f, 0.850618419f, 0.851207554f, 0.851795762f, 0.852383041f,
    0.852969388f, 0.853554801f, 0.854139280f, 0.854722822f, 0.855305425f, 0.855887088f, 0.856467808f, 0.857047585f,
    0.857626415f, 0.858204298f, 0.858781231f, 0.859357212f, 0.859932241f, 0.860506314f, 0.861079431f, 0.861651589f,
    0.862222787f, 0.862793023f, 0.863362294f, 0.863930601f, 0.864497939f, 0.865064308f, 0.865629706f, 0.866194132f,
    0.866757582f, 0.867320057f, 0.867881553f, 0.868442069f, 0.869001604f, 0.869560155f, 0.870117721f, 0.870674300f,
    0.871229891f, 0.871784491f, 0.872338098f, 0.872890712f, 0.873442330f, 0.873992951f, 0.874542573f, 0.875091194f,
    0.875638812f, 0.876185426f, 0.876731034f, 0.877275634f, 0.877819225f, 0.878361804f, 0.878903371f, 0.879443922f,
    0.879983458f, 0.880521976f, 0.881059474f, 0.881595950f, 0.882131403f, 0.882665832f, 0.883199234f, 0.883731608f,
    0.884262952f, 0.884793264f, 0.885322543f, 0.885850788f, 0.886377996f, 0.886904165f, 0.887429295f, 0.887953383f,
    0.888476428f, 0.888998428f, 0.889519381f, 0.890039286f, 0.890558142f, 0.891075946f, 0.891592696f, 0.892108392f,
    0.892623032f, 0.893136614f, 0.893649136f, 0.894160596f, 0.894670994f, 0.895180327f, 0.895688594f, 0.896195794f,
    0.896701924f, 0.897206983f, 0.897710969f, 0.898213881f, 0.898715717f, 0.899216476f, 0.899716156f, 0.900214756f,
    0.900712273f, 0.901208707f, 0.901704055f, 0.902198316f, 0.902691489f, 0.903183572f, 0.903674563f, 0.904164461f,
    0.904653264f, 0.905140971f, 0.905627580f, 0.906113090f, 0.906597499f, 0.907080805f, 0.907563007f, 0.908044104f,
    0.908524093f, 0.909002974f, 0.909480745f, 0.909957404f, 0.910432950f, 0.910907381f, 0.911380695f, 0.911852892f,
    0.912323970f, 0.912793927f, 0.913262762f, 0.913730472f, 0.914197058f, 0.914662517f, 0.915126847f, 0.915590048f,
    0.916052117f, 0.916513054f, 0.916972856f, 0.917431523f, 0.917889053f, 0.918345444f, 0.918800695f, 0.919254804f,
    0.919707771f, 0.920159593f, 0.920610269f, 0.921059798f, 0.921508178f, 0.921955408f, 0.922401486f, 0.922846411f,
    0.923290182f, 0.923732797f, 0.924174254f, 0.924614552f, 0.925053691f, 0.925491667f, 0.925928481f, 0.926364130f,
    0.926798614f, 0.927231930f, 0.927664078f, 0.928095056f, 0.928524862f, 0.928953495f, 0.929380955f, 0.929807239f,
    0.930232346f, 0.930656274f, 0.931079023f, 0.931500592f, 0.931920977f, 0.932340179f, 0.932758196f, 0.933175027f,
    0.933590670f, 0.934005124f, 0.934418387f, 0.934830459f, 0.935241337f, 0.935651021f, 0.936059510f, 0.936466801f,
    0.936872894f, 0.937277788f, 0.937681480f, 0.938083970f, 0.938485257f, 0.938885338f, 0.939284214f, 0.939681882f,
    0.940078341f, 0.940473590f, 0.940867628f, 0.941260454f, 0.941652065f, 0.942042462f, 0.942431642f, 0.942819604f,
    0.943206348f, 0.943591871f, 0.943976173f, 0.944359253f, 0.944741108f, 0.945121739f, 0.945501143f, 0.945879319f,
    0.946256267f, 0.946631985f, 0.947006471f, 0.947379725f, 0.947751746f, 0.948122531f, 0.948492081f, 0.948860393f,
    0.949227467f, 0.949593301f, 0.949957894f, 0.950321246f, 0.950683354f, 0.951044218f, 0.951403836f, 0.951762208f,
    0.952119331f, 0.952475206f, 0.952829831f, 0.953183204f, 0.953535324f, 0.953886192f, 0.954235804f, 0.954584160f,
    0.954931260f, 0.955277101f, 0.955621683f, 0.955965005f, 0.956307065f, 0.956647862f, 0.956987396f, 0.957325665f,
    0.957662668f, 0.957998404f, 0.958332871f, 0.958666070f, 0.958997998f, 0.959328655f, 0.959658040f, 0.959986151f,
    0.960312987f, 0.960638548f, 0.960962832f, 0.961285838f, 0.961607565f, 0.961928013f, 0.962247179f, 0.962565064f,
    0.962881666f, 0.963196983f, 0.963511016f, 0.963823763f, 0.964135222f, 0.964445393f, 0.964754275f, 0.965061868f,
    0.965368168f, 0.965673177f, 0.965976893f, 0.966279315f, 0.966580441f, 0.966880271f, 0.967178805f, 0.967476040f,
    0.967771976f, 0.968066613f, 0.968359948f, 0.968651982f, 0.968942712f, 0.969232139f, 0.969520261f, 0.969807078f,
    0.970092588f, 0.970376790f, 0.970659684f, 0.970941268f, 0.971221542f, 0.971500505f, 0.971778156f, 0.972054493f,
    0.972329517f, 0.972603226f, 0.972875619f, 0.973146695f, 0.973416454f, 0.973684895f, 0.973952016f, 0.974217817f,
    0.974482297f, 0.974745455f, 0.975007290f, 0.975267802f, 0.975526989f, 0.975784851f, 0.976041387f, 0.976296595f,
    0.976550476f, 0.976803029f, 0.977054251f, 0.977304144f, 0.977552705f, 0.977799934f, 0.978045831f, 0.978290394f,
    0.978533623f, 0.978775516f, 0.979016074f, 0.979255294f, 0.979493178f, 0.979729722f, 0.979964928f, 0.980198794f,
    0.980431320f, 0.980662504f, 0.980892345f, 0.981120844f, 0.981348000f, 0.981573811f, 0.981798276f, 0.982021396f,
    0.982243170f, 0.982463595f, 0.982682673f, 0.982900403f, 0.983116782f, 0.983331812f, 0.983545490f, 0.983757817f,
    0.983968792f, 0.984178414f, 0.984386682f, 0.984593595f, 0.984799154f, 0.985003357f, 0.985206203f, 0.985407693f,
    0.985607824f, 0.985806598f, 0.986004012f, 0.986200067f, 0.986394761f, 0.986588094f, 0.986780066f, 0.986970676f,
    0.987159922f, 0.987347806f, 0.987534325f, 0.987719479f, 0.987903268f, 0.988085692f, 0.988266748f, 0.988446438f,
    0.988624760f, 0.988801713f, 0.988977298f, 0.989151513f, 0.989324359f, 0.989495833f, 0.989665937f, 0.989834669f,
    0.990002028f, 0.990168015f, 0.990332628f, 0.990495868f, 0.990657733f, 0.990818223f, 0.990977337f, 0.991135076f,
    0.991291438f, 0.991446423f, 0.991600030f, 0.991752260f, 0.991903110f, 0.992052582f, 0.992200674f, 0.992347386f,
    0.992492718f, 0.992636668f, 0.992779237f, 0.992920424f, 0.993060229f, 0.993198650f, 0.993335689f, 0.993471343f,
    0.993605614f, 0.993738499f, 0.993870000f, 0.994000115f, 0.994128844f, 0.994256187f, 0.994382142f, 0.994506711f,
    0.994629892f, 0.994751685f, 0.994872089f, 0.994991105f, 0.995108731f, 0.995224968f, 0.995339815f, 0.995453271f,
    0.995565337f, 0.995676011f, 0.995785294f, 0.995893185f, 0.995999684f, 0.996104790f, 0.996208503f, 0.996310823f,
    0.996411750f, 0.996511283f, 0.996609421f, 0.996706165f, 0.996801514f, 0.996895467f, 0.996988025f, 0.997079188f,
    0.997168954f, 0.997257324f, 0.997344297f, 0.997429873f, 0.997514051f, 0.997596833f, 0.997678216f, 0.997758201f,
    0.997836788f, 0.997913977f, 0.997989766f, 0.998064156f, 0.998137147f, 0.998208738f, 0.998278930f, 0.998347721f,
    0.998415112f, 0.998481103f, 0.998545693f, 0.998608881f, 0.998670669f, 0.998731055f, 0.998790040f, 0.998847623f,
    0.998903804f, 0.998958583f, 0.999011959f, 0.999063933f, 0.999114505f, 0.999163673f, 0.999211439f, 0.999257801f,
    0.999302760f, 0.999346316f, 0.999388467f, 0.999429216f, 0.999468560f, 0.999506500f, 0.999543037f, 0.999578169f,
    0.999611896f, 0.999644219f, 0.999675138f, 0.999704652f, 0.999732761f, 0.999759465f, 0.999784764f, 0.999808658f,
    0.999831147f, 0.999852231f, 0.999871909f, 0.999890183f, 0.999907050f, 0.999922513f, 0.999936570f, 0.999949221f,
    0.999960467f, 0.999970307f, 0.999978741f, 0.999985770f, 0.999991393f, 0.999995610f, 0.999998422f, 0.999999827f,
    0.999999827f, 0.999998422f, 0.999995610f, 0.999991393f, 0.999985770f, 0.999978741f, 0.999970307f, 0.999960467f,
    0.999949221f, 0.999936570f, 0.999922513f, 0.999907050f, 0.999890183f, 0.999871909f, 0.999852231f, 0.999831147f,
    0.999808658f, 0.999784764f, 0.999759465f, 0.999732761f, 0.999704652f, 0.999675138f, 0.999644219f, 0.999611896f,
    0.999578169f, 0.999543037f, 0.999506500f, 0.999468560f, 0.999429216f, 0.999388467f, 0.999346316f, 0.999302760f,
    0.999257801f, 0.999211439f, 0.999163673f, 0.999114505f, 0.999063933f, 0.999011959f, 0.998958583f, 0.998903804f,
    0.998847623f, 0.998790040f, 0.998731055f, 0.998670669f, 0.998608881f, 0.998545693f, 0.998481103f, 0.998415112f,
    0.998347721f, 0.998278930f, 0.998208738f, 0.998137147f, 0.998064156f, 0.997989766f, 0.997913977f, 0.997836788f,
    0.997758201f, 0.997678216f, 0.997596833f, 0.997514051f, 0.997429873f, 0.997344297f, 0.997257324f, 0.997168954f,
    0.997079188f, 0.996988025f, 0.996895467f, 0.996801514f, 0.996706165f, 0.996609421f, 0.996511283f, 0.996411750f,
    0.996310823f, 0.996208503f, 0.996104790f, 0.995999684f, 0.995893185f, 0.995785294f, 0.995676011f, 0.995565337f,
    0.995453271f, 0.995339815f, 0.995224968f, 0.995108731f, 0.994991105f, 0.994872089f, 0.994751685f, 0.994629892f,
    0.994506711f, 0.994382142f, 0.994256187f, 0.994128844f, 0.994000115f, 0.993870000f, 0.993738499f, 0.993605614f,
    0.993471343f, 0.993335689f, 0.993198650f, 0.993060229f, 0.992920424f, 0.992779237f, 0.992636668f, 0.992492718f,
    0.992347386f, 0.992200674f, 0.992052582f, 0.991903110f, 0.991752260f, 0.991600030f, 0.991446423f, 0.991291438f,
    0.991135076f, 0.990977337f, 0.990818223f, 0.990657733f, 0.990495868f, 0.990332628f, 0.990168015f, 0.990002028f,
    0.989834669f, 0.989665937f, 0.989495833f, 0.989324359f, 0.989151513f, 0.988977298f, 0.988801713f, 0.988624760f,
    0.988446438f, 0.988266748f, 0.988085692f, 0.987903268f, 0.987719479f, 0.987534325f, 0.987347806f, 0.987159922f,
    0.986970676f, 0.986780066f, 0.986588094f, 0.986394761f, 0.986200067f, 0.986004012f, 0.985806598f, 0.985607824f,
    0.985407693f, 0.985206203f, 0.985003357f, 0.984799154f, 0.984593595f, 0.984386682f, 0.984178414f, 0.983968792f,
    0.983757817f, 0.983545490f, 0.983331812f, 0.983116782f, 0.982900403f, 0.982682673f, 0.982463595f, 0.982243170f,
    0.982021396f, 0.981798276f, 0.981573811f, 0.981348000f, 0.981120844f, 0.980892345f, 0.980662504f, 0.980431320f,
    0.980198794f, 0.979964928f, 0.979729722f, 0.979493178f, 0.979255294f, 0.979016074f, 0.978775516f, 0.978533623f,
    0.978290394f, 0.978045831f, 0.977799934f, 0.977552705f, 0.977304144f, 0.977054251f, 0.976803029f, 0.976550476f,
    0.976296595f, 0.976041387f, 0.975784851f, 0.975526989f, 0.975267802f, 0.975007290f, 0.974745455f, 0.974482297f,
    0.974217817f, 0.973952016f, 0.973684895f, 0.973416454f, 0.973146695f, 0.972875619f, 0.972603226f, 0.972329517f,
    0.972054493f, 0.971778156f, 0.971500505f, 0.971221542f, 0.970941268f, 0.970659684f, 0.970376790f, 0.970092588f,
    0.969807078f, 0.969520261f, 0.969232139f, 0.968942712f, 0.968651982f, 0.968359948f, 0.968066613f, 0.967771976f,
    0.967476040f, 0.967178805f, 0.966880271f, 0.966580441f, 0.966279315f, 0.965976893f, 0.965673177f, 0.965368168f,
    0.965061868f, 0.964754275f, 0.964445393f, 0.964135222f, 0.963823763f, 0.963511016f, 0.963196983f, 0.962881666f,
    0.962565064f, 0.962247179f, 0.961928013f, 0.961607565f, 0.961285838f, 0.960962832f, 0.960638548f, 0.960312987f,
    0.959986151f, 0.959658040f, 0.959328655f, 0.958997998f, 0.958666070f, 0.958332871f, 0.957998404f, 0.957662668f,
    0.957325665f, 0.956987396f, 0.956647862f, 0.956307065f, 0.955965005f, 0.955621683f, 0.955277101f, 0.954931260f,
    0.954584160f, 0.954235804f, 0.953886192f, 0.953535324f, 0.953183204f, 0.952829831f, 0.952475206f, 0.952119331f,
    0.951762208f, 0.951403836f, 0.951044218f, 0.950683354f, 0.950321246f, 0.949957894f, 0.949593301f, 0.949227467f,
    0.948860393f, 0.948492081f, 0.948122531f, 0.947751746f, 0.947379725f, 0.947006471f, 0.946631985f, 0.946256267f,
    0.945879319f, 0.945501143f, 0.945121739f, 0.944741108f, 0.944359253f, 0.943976173f, 0.943591871f, 0.943206348f,
    0.942819604f, 0.942431642f, 0.942042462f, 0.941652065f, 0.941260454f, 0.940867628f, 0.940473590f, 0.940078341f,
    0.939681882f, 0.939284214f, 0.938885338f, 0.938485257f, 0.938083970f, 0.937681480f, 0.937277788f, 0.936872894f,
    0.936466801f, 0.936059510f, 0.935651021f, 0.935241337f, 0.934830459f, 0.934418387f, 0.934005124f, 0.933590670f,
    0.933175027f, 0.932758196f, 0.932340179f, 0.931920977f, 0.931500592f, 0.931079023f, 0.930656274f, 0.930232346f,
    0.929807239f, 0.929380955f, 0.928953495f, 0.928524862f, 0.928095056f, 0.927664078f, 0.927231930f, 0.926798614f,
    0.926364130f, 0.925928481f, 0.925491667f, 0.925053691f, 0.924614552f, 0.924174254f, 0.923732797f, 0.923290182f,
    0.922846411f, 0.922401486f, 0.921955408f, 0.921508178f, 0.921059798f, 0.920610269f, 0.920159593f, 0.919707771f,
    0.919254804f, 0.918800695f, 0.918345444f, 0.917889053f, 0.917431523f, 0.916972856f, 0.916513054f, 0.916052117f,
    0.915590048f, 0.915126847f, 0.914662517f, 0.914197058f, 0.913730472f, 0.913262762f, 0.912793927f, 0.912323970f,
    0.911852892f, 0.911380695f, 0.910907381f, 0.910432950f, 0.909957404f, 0.909480745f, 0.909002974f, 0.908524093f,
    0.908044104f, 0.907563007f, 0.907080805f, 0.906597499f, 0.906113090f, 0.905627580f, 0.905140971f, 0.904653264f,
    0.904164461f, 0.903674563f, 0.903183572f, 0.902691489f, 0.902198316f, 0.901704055f, 0.901208707f, 0.900712273f,
    0.900214756f, 0.899716156f, 0.899216476f, 0.898715717f, 0.898213881f, 0.897710969f, 0.897206983f, 0.896701924f,
    0.896195794f, 0.895688594f, 0.895180327f, 0.894670994f, 0.894160596f, 0.893649136f, 0.893136614f, 0.892623032f,
    0.892108392f, 0.891592696f, 0.891075946f, 0.890558142f, 0.890039286f, 0.889519381f, 0.888998428f, 0.888476428f,
    0.887953383f, 0.887429295f, 0.886904165f, 0.886377996f, 0.885850788f, 0.885322543f, 0.884793264f, 0.884262952f,
    0.883731608f, 0.883199234f, 0.882665832f, 0.882131403f, 0.881595950f, 0.881059474f, 0.880521976f, 0.879983458f,
    0.879443922f, 0.878903371f, 0.878361804f, 0.877819225f, 0.877275634f, 0.876731034f, 0.876185426f, 0.875638812f,
    0.875091194f, 0.874542573f, 0.873992951f, 0.873442330f, 0.872890712f, 0.872338098f, 0.871784491f, 0.871229891f,
    0.870674300f, 0.870117721f, 0.869560155f, 0.869001604f, 0.868442069f, 0.867881553f, 0.867320057f, 0.866757582f,
    0.866194132f, 0.865629706f, 0.865064308f, 0.864497939f, 0.863930601f, 0.863362294f, 0.862793023f, 0.862222787f,
    0.861651589f, 0.861079431f, 0.860506314f, 0.859932241f, 0.859357212f, 0.858781231f, 0.858204298f, 0.857626415f,
    0.857047585f, 0.856467808f, 0.855887088f, 0.855305425f, 0.854722822f, 0.854139280f, 0.853554801f, 0.852969388f,
    0.852383041f, 0.851795762f, 0.851207554f, 0.850618419f, 0.850028357f, 0.849437372f, 0.848845464f, 0.848252636f,
    0.847658889f, 0.847064226f, 0.846468648f, 0.845872157f, 0.845274755f, 0.844676444f, 0.844077225f, 0.843477101f,
    0.842876074f, 0.842274144f, 0.841671315f, 0.841067587f, 0.840462964f, 0.839857446f, 0.839251036f, 0.838643735f,
    0.838035546f, 0.837426470f, 0.836816509f, 0.836205666f, 0.835593941f, 0.834981337f, 0.834367855f, 0.833753499f,
    0.833138269f, 0.832522167f, 0.831905196f, 0.831287357f, 0.830668652f, 0.830049083f, 0.829428652f, 0.828807362f,
    0.828185213f, 0.827562207f, 0.826938348f, 0.826313636f, 0.825688073f, 0.825061662f, 0.824434405f, 0.823806303f,
    0.823177358f, 0.822547572f, 0.821916947f, 0.821285486f, 0.820653189f, 0.820020060f, 0.819386099f, 0.818751310f,
    0.818115693f, 0.817479251f, 0.816841986f, 0.816203899f, 0.815564993f, 0.814925270f, 0.814284731f, 0.813643379f,
    0.813001215f, 0.812358242f, 0.811714462f, 0.811069875f, 0.810424486f, 0.809778294f, 0.809131303f, 0.808483515f,
    0.807834930f, 0.807185552f, 0.806535382f, 0.805884423f, 0.805232676f, 0.804580143f, 0.803926827f, 0.803272728f,
    0.802617850f, 0.801962195f, 0.801305763f, 0.800648558f, 0.799990581f, 0.799331834f, 0.798672320f, 0.798012040f,
    0.797350996f, 0.796689191f, 0.796026626f, 0.795363303f, 0.794699225f, 0.794034393f, 0.793368809f, 0.792702476f,
    0.792035396f, 0.791367570f, 0.790699000f, 0.790029689f, 0.789359639f, 0.788688851f, 0.788017328f, 0.787345071f,
    0.786672083f, 0.785998366f, 0.785323922f, 0.784648753f, 0.783972860f, 0.783296247f, 0.782618914f, 0.781940865f,
    0.781262101f, 0.780582623f, 0.779902435f, 0.779221538f, 0.778539935f, 0.777857627f, 0.777174616f, 0.776490904f,
    0.775806495f, 0.775121389f, 0.774435588f, 0.773749095f, 0.773061912f, 0.772374041f, 0.771685484f, 0.770996243f,
    0.770306320f, 0.769615717f, 0.768924436f, 0.768232480f, 0.767539850f, 0.766846548f, 0.766152577f, 0.765457939f,
    0.764762635f, 0.764066668f, 0.763370040f, 0.762672753f, 0.761974809f, 0.761276210f, 0.760576958f, 0.759877056f,
    0.759176505f, 0.758475308f, 0.757773466f, 0.757070982f, 0.756367857f, 0.755664095f, 0.754959697f, 0.754254664f,
    0.753549000f, 0.752842707f, 0.752135785f, 0.751428238f, 0.750720068f, 0.750011277f, 0.749301866f, 0.748591838f,
    0.747881196f, 0.747169940f, 0.746458074f, 0.745745599f, 0.745032518f, 0.744318833f, 0.743604545f, 0.742889657f,
    0.742174171f, 0.741458089f, 0.740741413f, 0.740024146f, 0.739306289f, 0.738587845f, 0.737868815f, 0.737149203f,
    0.736429009f, 0.735708236f, 0.734986887f, 0.734264963f, 0.733542467f, 0.732819400f, 0.732095765f, 0.731371563f,
    0.730646798f, 0.729921471f, 0.729195584f, 0.728469140f, 0.727742140f, 0.727014587f, 0.726286483f, 0.725557830f,
    0.724828630f, 0.724098885f, 0.723368598f, 0.722637770f, 0.721906404f, 0.721174501f, 0.720442065f, 0.719709097f,
    0.718975599f, 0.718241573f, 0.717507022f, 0.716771948f, 0.716036352f, 0.715300238f, 0.714563607f, 0.713826461f,
    0.713088802f, 0.712350634f, 0.711611957f, 0.710872773f, 0.710133086f, 0.709392898f, 0.708652209f, 0.707911023f,
    0.707169342f, 0.706427168f, 0.705684502f, 0.704941348f, 0.704197707f, 0.703453582f, 0.702708974f, 0.701963886f,
    0.701218320f, 0.700472278f, 0.699725763f, 0.698978776f, 0.698231319f, 0.697483395f, 0.696735007f, 0.695986155f,
    0.695236842f, 0.694487071f, 0.693736844f, 0.692986162f, 0.692235029f, 0.691483445f, 0.690731413f, 0.689978936f,
    0.689226016f, 0.688472654f, 0.687718853f, 0.686964616f, 0.686209943f, 0.685454838f, 0.684699303f, 0.683943339f,
    0.683186949f, 0.682430135f, 0.681672900f, 0.680915245f, 0.680157173f, 0.679398685f, 0.678639784f, 0.677880473f,
    0.677120752f, 0.676360625f, 0.675600094f, 0.674839161f, 0.674077827f, 0.673316096f, 0.672553969f, 0.671791448f,
    0.671028536f, 0.670265235f, 0.669501547f, 0.668737474f, 0.667973018f, 0.667208182f, 0.666442968f, 0.665677377f,
    0.664911413f, 0.664145076f, 0.663378370f, 0.662611297f, 0.661843858f, 0.661076056f, 0.660307893f, 0.659539372f,
    0.658770494f, 0.658001261f, 0.657231676f, 0.656461741f, 0.655691459f, 0.654920830f, 0.654149858f, 0.653378544f,
    0.652606892f, 0.651834902f, 0.651062577f, 0.650289920f, 0.649516932f, 0.648743616f, 0.647969973f, 0.647196007f,
    0.646421718f, 0.645647110f, 0.644872185f, 0.644096944f, 0.643321390f, 0.642545524f, 0.641769351f, 0.640992870f,
    0.640216085f, 0.639438997f, 0.638661610f, 0.637883924f, 0.637105943f, 0.636327668f, 0.635549101f, 0.634770246f,
    0.633991103f, 0.633211675f, 0.632431964f, 0.631651972f, 0.630871702f, 0.630091156f, 0.629310335f, 0.628529243f,
    0.627747881f, 0.626966251f, 0.626184355f, 0.625402196f, 0.624619776f, 0.623837097f, 0.623054161f, 0.622270971f,
    0.621487528f, 0.620703834f, 0.619919892f, 0.619135705f, 0.618351273f, 0.617566599f, 0.616781686f, 0.615996536f,
    0.615211150f, 0.614425531f, 0.613639681f, 0.612853603f, 0.612067297f, 0.611280768f, 0.610494015f, 0.609707043f,
    0.608919853f, 0.608132446f, 0.607344826f, 0.606556995f, 0.605768954f, 0.604980705f, 0.604192252f, 0.603403595f,
    0.602614738f, 0.601825682f, 0.601036429f, 0.600246982f, 0.599457343f, 0.598667513f, 0.597877496f, 0.597087293f,
    0.596296906f, 0.595506337f, 0.594715589f, 0.593924664f, 0.593133563f, 0.592342290f, 0.591550846f, 0.590759233f,
    0.589967453f, 0.589175509f, 0.588383403f, 0.587591136f, 0.586798712f, 0.586006131f, 0.585213397f, 0.584420510f,
    0.583627475f, 0.582834292f, 0.582040964f, 0.581247492f, 0.580453879f, 0.579660128f, 0.578866240f, 0.578072217f,
    0.577278061f, 0.576483775f, 0.575689361f, 0.574894821f, 0.574100156f, 0.573305370f, 0.572510464f, 0.571715440f,
    0.570920300f, 0.570125047f, 0.569329682f, 0.568534209f, 0.567738628f, 0.566942941f, 0.566147152f, 0.565351263f,
    0.564555274f, 0.563759189f, 0.562963009f, 0.562166737f, 0.561370374f, 0.560573924f, 0.559777387f, 0.558980766f,
    0.558184063f, 0.557387280f, 0.556590420f, 0.555793483f, 0.554996474f, 0.554199393f, 0.553402242f, 0.552605024f,
    0.551807741f, 0.551010395f, 0.550212988f, 0.549415522f, 0.548617998f, 0.547820421f, 0.547022790f, 0.546225109f,
    0.545427379f, 0.544629603f, 0.543831782f, 0.543033919f, 0.542236016f, 0.541438075f, 0.540640097f, 0.539842086f,
    0.539044042f, 0.538245969f, 0.537447867f, 0.536649740f, 0.535851589f, 0.535053417f, 0.534255225f, 0.533457015f,
    0.532658790f, 0.531860551f, 0.531062301f, 0.530264042f, 0.529465775f, 0.528667504f, 0.527869229f, 0.527070952f,
    0.526272677f, 0.525474405f, 0.524676138f, 0.523877877f, 0.523079626f, 0.522281386f, 0.521483159f, 0.520684947f,
    0.519886753f, 0.519088578f, 0.518290424f, 0.517492293f, 0.516694188f, 0.515896110f, 0.515098061f, 0.514300044f,
    0.513502060f, 0.512704112f, 0.511906201f, 0.511108329f, 0.510310499f, 0.509512713f, 0.508714972f, 0.507917279f,
    0.507119635f, 0.506322043f, 0.505524504f, 0.504727021f, 0.503929595f, 0.503132229f, 0.502334925f, 0.501537684f,
    0.500740509f, 0.499943401f, 0.499146362f, 0.498349396f, 0.497552502f, 0.496755684f, 0.495958944f, 0.495162283f,
    0.494365704f, 0.493569208f, 0.492772797f, 0.491976474f, 0.491180240f, 0.490384098f, 0.489588049f, 0.488792095f,
    0.487996238f, 0.487200481f, 0.486404824f, 0.485609271f, 0.484813823f, 0.484018482f, 0.483223250f, 0.482428129f,
    0.481633120f, 0.480838227f, 0.480043450f, 0.479248793f, 0.478454255f, 0.477659841f, 0.476865551f, 0.476071388f,
    0.475277353f, 0.474483448f, 0.473689676f, 0.472896038f, 0.472102537f, 0.471309173f, 0.470515950f, 0.469722868f,
    0.468929930f, 0.468137138f, 0.467344494f, 0.466552000f, 0.465759657f, 0.464967468f, 0.464175434f, 0.463383557f,
    0.462591839f, 0.461800283f, 0.461008889f, 0.460217661f, 0.459426599f, 0.458635706f, 0.457844984f, 0.457054434f,
    0.456264058f, 0.455473859f, 0.454683838f, 0.453893997f, 0.453104338f, 0.452314862f, 0.451525573f, 0.450736471f,
    0.449947558f, 0.449158837f, 0.448370308f, 0.447581975f, 0.446793839f, 0.446005901f, 0.445218165f, 0.444430630f,
    0.443643300f, 0.442856176f, 0.442069260f, 0.441282554f, 0.440496060f, 0.439709780f, 0.438923714f, 0.438137866f,
    0.437352238f, 0.436566830f, 0.435781645f, 0.434996684f, 0.434211950f, 0.433427444f, 0.432643169f, 0.431859125f,
    0.431075315f, 0.430291740f, 0.429508403f, 0.428725305f, 0.427942449f, 0.427159834f, 0.426377465f, 0.425595342f,
    0.424813467f, 0.424031842f, 0.423250469f, 0.422469350f, 0.421688486f, 0.420907879f, 0.420127531f, 0.419347444f,
    0.418567620f, 0.417788060f, 0.417008766f, 0.416229740f, 0.415450983f, 0.414672498f, 0.413894287f, 0.413116350f,
    0.412338690f, 0.411561308f, 0.410784207f, 0.410007388f, 0.409230853f, 0.408454603f, 0.407678640f, 0.406902966f,
    0.406127584f, 0.405352493f, 0.404577697f, 0.403803197f, 0.403028995f, 0.402255092f, 0.401481490f, 0.400708192f,
    0.399935198f, 0.399162510f, 0.398390130f, 0.397618061f, 0.396846302f, 0.396074857f, 0.395303727f, 0.394532914f,
    0.393762419f, 0.392992244f, 0.392222391f, 0.391452861f, 0.390683656f, 0.389914779f, 0.389146229f, 0.388378010f,
    0.387610123f, 0.386842570f, 0.386075352f, 0.385308471f, 0.384541928f, 0.383775726f, 0.383009866f, 0.382244349f,
    0.381479178f, 0.380714353f, 0.379949877f, 0.379185752f, 0.378421978f, 0.377658559f, 0.376895494f, 0.376132786f,
    0.375370437f, 0.374608448f, 0.373846820f, 0.373085556f, 0.372324658f, 0.371564125f, 0.370803962f, 0.370044168f,
    0.369284745f, 0.368525696f, 0.367767022f, 0.367008724f, 0.366250804f, 0.365493264f, 0.364736105f, 0.363979329f,
    0.363222938f, 0.362466932f, 0.361711314f, 0.360956085f, 0.360201248f, 0.359446802f, 0.358692751f, 0.357939095f,
    0.357185836f, 0.356432976f, 0.355680516f, 0.354928458f, 0.354176804f, 0.353425554f, 0.352674711f, 0.351924277f,
    0.351174252f, 0.350424638f, 0.349675437f, 0.348926650f, 0.348178279f, 0.347430326f, 0.346682791f, 0.345935677f,
    0.345188985f, 0.344442716f, 0.343696873f, 0.342951456f, 0.342206468f, 0.341461909f, 0.340717781f, 0.339974085f,
    0.339230824f, 0.338487999f, 0.337745611f, 0.337003661f, 0.336262152f, 0.335521085f, 0.334780460f, 0.334040280f,
    0.333300547f, 0.332561261f, 0.331822424f, 0.331084038f, 0.330346104f, 0.329608623f, 0.328871598f, 0.328135029f,
    0.327398918f, 0.326663266f, 0.325928075f, 0.325193347f, 0.324459082f, 0.323725282f, 0.322991950f, 0.322259085f,
    0.321526690f, 0.320794765f, 0.320063314f, 0.319332336f, 0.318601833f, 0.317871807f, 0.317142260f, 0.316413191f,
    0.315684604f, 0.314956499f, 0.314228878f, 0.313501742f, 0.312775093f, 0.312048932f, 0.311323260f, 0.310598079f,
    0.309873390f, 0.309149195f, 0.308425494f, 0.307702290f, 0.306979584f, 0.306257377f, 0.305535670f, 0.304814465f,
    0.304093764f, 0.303373567f, 0.302653876f, 0.301934692f, 0.301216017f, 0.300497852f, 0.299780198f, 0.299063057f,
    0.298346430f, 0.297630318f, 0.296914724f, 0.296199647f, 0.295485089f, 0.294771053f, 0.294057538f, 0.293344547f,
    0.292632080f, 0.291920140f, 0.291208726f, 0.290497842f, 0.289787487f, 0.289077664f, 0.288368373f, 0.287659616f,
    0.286951394f, 0.286243708f, 0.285536560f, 0.284829951f, 0.284123883f, 0.283418356f, 0.282713371f, 0.282008931f,
    0.281305036f, 0.280601688f, 0.279898888f, 0.279196637f, 0.278494936f, 0.277793787f, 0.277093191f, 0.276393149f,
    0.275693662f, 0.274994732f, 0.274296360f, 0.273598547f, 0.272901295f, 0.272204604f, 0.271508475f, 0.270812911f,
    0.270117912f, 0.269423480f, 0.268729615f, 0.268036319f, 0.267343593f, 0.266651438f, 0.265959856f, 0.265268847f,
    0.264578413f, 0.263888556f, 0.263199275f, 0.262510573f, 0.261822451f, 0.261134909f, 0.260447950f, 0.259761573f,
    0.259075781f, 0.258390574f, 0.257705954f, 0.257021921f, 0.256338478f, 0.255655624f, 0.254973362f, 0.254291692f,
    0.253610616f, 0.252930134f, 0.252250248f, 0.251570959f, 0.250892268f, 0.250214176f, 0.249536684f, 0.248859794f,
    0.248183506f, 0.247507822f, 0.246832743f, 0.246158269f, 0.245484403f, 0.244811144f, 0.244138495f, 0.243466456f,
    0.242795028f, 0.242124212f, 0.241454010f, 0.240784423f, 0.240115451f, 0.239447096f, 0.238779359f, 0.238112240f,
    0.237445742f, 0.236779864f, 0.236114609f, 0.235449976f, 0.234785968f, 0.234122585f, 0.233459828f, 0.232797698f,
    0.232136196f, 0.231475324f, 0.230815083f, 0.230155472f, 0.229496494f, 0.228838150f, 0.228180439f, 0.227523365f,
    0.226866926f, 0.226211126f, 0.225555963f, 0.224901441f, 0.224247558f, 0.223594317f, 0.222941719f, 0.222289764f,
    0.221638453f, 0.220987788f, 0.220337769f, 0.219688398f, 0.219039675f, 0.218391601f, 0.217744177f, 0.217097405f,
    0.216451284f, 0.215805817f, 0.215161004f, 0.214516846f, 0.213873344f, 0.213230499f, 0.212588311f, 0.211946783f,
    0.211305914f, 0.210665706f, 0.210026159f, 0.209387275f, 0.208749054f, 0.208111497f, 0.207474606f, 0.206838381f,
    0.206202823f, 0.205567932f, 0.204933711f, 0.204300159f, 0.203667278f, 0.203035068f, 0.202403531f, 0.201772667f,
    0.201142477f, 0.200512962f, 0.199884123f, 0.199255961f, 0.198628476f, 0.198001670f, 0.197375543f, 0.196750096f,
    0.196125331f, 0.195501247f, 0.194877846f, 0.194255128f, 0.193633095f, 0.193011747f, 0.192391085f, 0.191771110f,
    0.191151823f, 0.190533224f, 0.189915314f, 0.189298095f, 0.188681567f, 0.188065730f, 0.187450586f, 0.186836136f,
    0.186222379f, 0.185609318f, 0.184996952f, 0.184385282f, 0.183774311f, 0.183164037f, 0.182554462f, 0.181945586f,
    0.181337412f, 0.180729938f, 0.180123166f, 0.179517097f, 0.178911731f, 0.178307070f, 0.177703114f, 0.177099863f,
    0.176497319f, 0.175895482f, 0.175294352f, 0.174693932f, 0.174094221f, 0.173495220f, 0.172896930f, 0.172299351f,
    0.171702485f, 0.171106331f, 0.170510892f, 0.169916167f, 0.169322156f, 0.168728862f, 0.168136284f, 0.167544424f,
    0.166953281f, 0.166362857f, 0.165773152f, 0.165184167f, 0.164595902f, 0.164008359f, 0.163421538f, 0.162835439f,
    0.162250064f, 0.161665412f, 0.161081485f, 0.160498284f, 0.159915808f, 0.159334059f, 0.158753037f, 0.158172743f,
    0.157593177f, 0.157014340f, 0.156436233f, 0.155858857f, 0.155282211f, 0.154706297f, 0.154131115f, 0.153556666f,
    0.152982950f, 0.152409968f, 0.151837721f, 0.151266209f, 0.150695433f, 0.150125394f, 0.149556091f, 0.148987526f,
    0.148419699f, 0.147852611f, 0.147286262f, 0.146720653f, 0.146155784f, 0.145591657f, 0.145028271f, 0.144465627f,
    0.143903726f, 0.143342568f, 0.142782154f, 0.142222484f, 0.141663559f, 0.141105380f, 0.140547946f, 0.139991259f,
    0.139435319f, 0.138880127f, 0.138325683f, 0.137771987f, 0.137219040f, 0.136666843f, 0.136115396f, 0.135564700f,
    0.135014755f, 0.134465561f, 0.133917120f, 0.133369431f, 0.132822495f, 0.132276313f, 0.131730885f, 0.131186212f,
    0.130642293f, 0.130099130f, 0.129556723f, 0.129015073f, 0.128474179f, 0.127934043f, 0.127394664f, 0.126856044f,
    0.126318182f, 0.125781080f, 0.125244737f, 0.124709155f, 0.124174333f, 0.123640271f, 0.123106971f, 0.122574433f,
    0.122042657f, 0.121511644f, 0.120981393f, 0.120451907f, 0.119923184f, 0.119395225f, 0.118868031f, 0.118341602f,
    0.117815938f, 0.117291040f, 0.116766909f, 0.116243544f, 0.115720946f, 0.115199116f, 0.114678053f, 0.114157759f,
    0.113638233f, 0.113119476f, 0.112601488f, 0.112084270f, 0.111567822f, 0.111052144f, 0.110537237f, 0.110023101f,
    0.109509736f, 0.108997143f, 0.108485322f, 0.107974273f, 0.107463997f, 0.106954495f, 0.106445765f, 0.105937809f,
    0.105430628f, 0.104924220f, 0.104418588f, 0.103913730f, 0.103409647f, 0.102906340f, 0.102403809f, 0.101902055f,
    0.101401076f, 0.100900874f, 0.100401450f, 0.099902803f, 0.099404933f, 0.098907841f, 0.098411527f, 0.097915992f,
    0.097421236f, 0.096927258f, 0.096434060f, 0.095941641f, 0.095450002f, 0.094959143f, 0.094469064f, 0.093979766f,
    0.093491248f, 0.093003511f, 0.092516556f, 0.092030382f, 0.091544989f, 0.091060379f, 0.090576551f, 0.090093505f,
    0.089611241f, 0.089129760f, 0.088649063f, 0.088169148f, 0.087690017f, 0.087211670f, 0.086734106f, 0.086257326f,
    0.085781331f, 0.085306120f, 0.084831693f, 0.084358051f, 0.083885194f, 0.083413123f, 0.082941836f, 0.082471335f,
    0.082001620f, 0.081532690f, 0.081064546f, 0.080597189f, 0.080130617f, 0.079664832f, 0.079199834f, 0.078735622f,
    0.078272198f, 0.077809560f, 0.077347709f, 0.076886646f, 0.076426369f, 0.075966881f, 0.075508180f, 0.075050267f,
    0.074593142f, 0.074136804f, 0.073681255f, 0.073226494f, 0.072772522f, 0.072319338f, 0.071866942f, 0.071415335f,
    0.070964517f, 0.070514487f, 0.070065247f, 0.069616795f, 0.069169132f, 0.068722259f, 0.068276175f, 0.067830880f,
    0.067386374f, 0.066942658f, 0.066499732f, 0.066057595f, 0.065616247f, 0.065175690f, 0.064735922f, 0.064296943f,
    0.063858755f, 0.063421356f, 0.062984748f, 0.062548929f, 0.062113900f, 0.061679662f, 0.061246213f, 0.060813554f,
    0.060381686f, 0.059950607f, 0.059520319f, 0.059090820f, 0.058662112f, 0.058234194f, 0.057807067f, 0.057380729f,
    0.056955181f, 0.056530424f, 0.056106457f, 0.055683280f, 0.055260893f, 0.054839296f, 0.054418489f, 0.053998472f,
    0.053579246f, 0.053160809f, 0.052743162f, 0.052326305f, 0.051910239f, 0.051494962f, 0.051080474f, 0.050666777f,
    0.050253869f, 0.049841751f, 0.049430423f, 0.049019884f, 0.048610135f, 0.048201175f, 0.047793005f, 0.047385624f,
    0.046979032f, 0.046573229f, 0.046168216f, 0.045763991f, 0.045360556f, 0.044957909f, 0.044556051f, 0.044154982f,
    0.043754701f, 0.043355209f, 0.042956505f, 0.042558590f, 0.042161462f, 0.041765123f, 0.041369572f, 0.040974808f,
    0.040580832f, 0.040187644f, 0.039795244f, 0.039403631f, 0.039012805f, 0.038622766f, 0.038233514f, 0.037845049f,
    0.037457371f, 0.037070479f, 0.036684374f, 0.036299055f, 0.035914522f, 0.035530775f, 0.035147814f, 0.034765638f,
    0.034384248f, 0.034003644f, 0.033623825f, 0.033244790f, 0.032866541f, 0.032489076f, 0.032112396f, 0.031736500f,
    0.031361388f, 0.030987060f, 0.030613516f, 0.030240755f, 0.029868778f, 0.029497584f, 0.029127173f, 0.028757545f,
    0.028388700f, 0.028020636f, 0.027653355f, 0.027286856f, 0.026921139f, 0.026556203f, 0.026192049f, 0.025828676f,
    0.025466083f, 0.025104271f, 0.024743240f, 0.024382989f, 0.024023518f, 0.023664826f, 0.023306914f, 0.022949781f,
    0.022593427f, 0.022237852f, 0.021883056f, 0.021529038f, 0.021175797f, 0.020823335f, 0.020471649f, 0.020120742f,
    0.019770611f, 0.019421256f, 0.019072678f, 0.018724877f, 0.018377851f, 0.018031600f, 0.017686125f, 0.017341425f,
    0.016997500f, 0.016654349f, 0.016311972f, 0.015970370f, 0.015629540f, 0.015289484f, 0.014950201f, 0.014611691f,
    0.014273953f, 0.013936987f, 0.013600793f, 0.013265370f, 0.012930718f, 0.012596837f, 0.012263727f, 0.011931386f,
    0.011599816f, 0.011269015f, 0.010938983f, 0.010609720f, 0.010281226f, 0.009953499f, 0.009626541f, 0.009300350f,
    0.008974926f, 0.008650269f, 0.008326378f, 0.008003253f, 0.007680894f, 0.007359301f, 0.007038472f, 0.006718409f,
    0.006399109f, 0.006080573f, 0.005762801f, 0.005445792f, 0.005129546f, 0.004814063f, 0.004499341f, 0.004185381f,
    0.003872183f, 0.003559745f, 0.003248068f, 0.002937151f, 0.002626993f, 0.002317595f, 0.002008956f, 0.001701076f,
    0.001393953f, 0.001087589f, 0.000781982f, 0.000477131f, 0.000173037f, -0.000130300f, -0.000432882f, -0.000734709f,
    -0.001035781f, -0.001336098f, -0.001635662f, -0.001934472f, -0.002232528f, -0.002529832f, -0.002826384f, -0.003122184f,
    -0.003417232f, -0.003711530f, -0.004005076f, -0.004297873f, -0.004589920f, -0.004881218f, -0.005171767f, -0.005461568f,
    -0.005750621f, -0.006038927f, -0.006326486f, -0.006613298f, -0.006899364f, -0.007184685f, -0.007469261f, -0.007753092f,
    -0.008036179f, -0.008318522f, -0.008600122f, -0.008880980f, -0.009161095f, -0.009440469f, -0.009719101f, -0.009996993f,
    -0.010274144f, -0.010550555f, -0.010826228f, -0.011101161f, -0.011375356f, -0.011648813f, -0.011921533f, -0.012193517f,
    -0.012464764f, -0.012735275f, -0.013005051f, -0.013274092f, -0.013542399f, -0.013809973f, -0.014076813f, -0.014342920f,
    -0.014608295f, -0.014872939f, -0.015136851f, -0.015400033f, -0.015662485f, -0.015924208f, -0.016185201f, -0.016445466f,
    -0.016705003f, -0.016963813f, -0.017221896f, -0.017479252f, -0.017735883f, -0.017991789f, -0.018246970f, -0.018501427f,
    -0.018755161f, -0.019008171f, -0.019260459f, -0.019512025f, -0.019762870f, -0.020012995f, -0.020262399f, -0.020511083f,
    -0.020759049f, -0.021006296f, -0.021252825f, -0.021498637f, -0.021743732f, -0.021988111f, -0.022231774f, -0.022474723f,
    -0.022716957f, -0.022958477f, -0.023199284f, -0.023439378f, -0.023678760f, -0.023917431f, -0.024155391f, -0.024392641f,
    -0.024629181f, -0.024865012f, -0.025100135f, -0.025334550f, -0.025568257f, -0.025801258f, -0.026033553f, -0.026265142f,
    -0.026496027f, -0.026726207f, -0.026955684f, -0.027184458f, -0.027412530f, -0.027639900f, -0.027866569f, -0.028092537f,
    -0.028317806f, -0.028542375f, -0.028766246f, -0.028989419f, -0.029211894f, -0.029433673f, -0.029654756f, -0.029875144f,
    -0.030094837f, -0.030313835f, -0.030532141f, -0.030749753f, -0.030966673f, -0.031182902f, -0.031398440f, -0.031613288f,
    -0.031827446f, -0.032040915f, -0.032253696f, -0.032465790f, -0.032677196f, -0.032887917f, -0.033097951f, -0.033307301f,
    -0.033515967f, -0.033723949f, -0.033931248f, -0.034137865f, -0.034343800f, -0.034549054f, -0.034753628f, -0.034957523f,
    -0.035160739f, -0.035363276f, -0.035565137f, -0.035766320f, -0.035966827f, -0.036166659f, -0.036365816f, -0.036564299f,
    -0.036762109f, -0.036959246f, -0.037155711f, -0.037351504f, -0.037546628f, -0.037741081f, -0.037934865f, -0.038127981f,
    -0.038320429f, -0.038512210f, -0.038703324f, -0.038893773f, -0.039083557f, -0.039272677f, -0.039461134f, -0.039648927f,
    -0.039836059f, -0.040022529f, -0.040208338f, -0.040393488f, -0.040577978f, -0.040761810f, -0.040944985f, -0.041127502f,
    -0.041309363f, -0.041490568f, -0.041671119f, -0.041851015f, -0.042030258f, -0.042208849f, -0.042386788f, -0.042564075f,
    -0.042740712f, -0.042916700f, -0.043092038f, -0.043266728f, -0.043440771f, -0.043614167f, -0.043786918f, -0.043959023f,
    -0.044130483f, -0.044301300f, -0.044471474f, -0.044641006f, -0.044809896f, -0.044978146f, -0.045145756f, -0.045312726f,
    -0.045479058f, -0.045644753f, -0.045809810f, -0.045974232f, -0.046138018f, -0.046301170f, -0.046463687f, -0.046625572f,
    -0.046786824f, -0.046947445f, -0.047107436f, -0.047266796f, -0.047425527f, -0.047583629f, -0.047741104f, -0.047897952f,
    -0.048054174f, -0.048209771f, -0.048364743f, -0.048519092f, -0.048672817f, -0.048825921f, -0.048978403f, -0.049130264f,
    -0.049281505f, -0.049432128f, -0.049582132f, -0.049731519f, -0.049880289f, -0.050028444f, -0.050175983f, -0.050322908f,
    -0.050469220f, -0.050614919f, -0.050760006f, -0.050904482f, -0.051048348f, -0.051191604f, -0.051334252f, -0.051476292f,
    -0.051617725f, -0.051758551f, -0.051898773f, -0.052038389f, -0.052177402f, -0.052315812f, -0.052453619f, -0.052590826f,
    -0.052727431f, -0.052863437f, -0.052998844f, -0.053133653f, -0.053267865f, -0.053401480f, -0.053534500f, -0.053666925f,
    -0.053798755f, -0.053929993f, -0.054060638f, -0.054190692f, -0.054320155f, -0.054449028f, -0.054577312f, -0.054705008f,
    -0.054832116f, -0.054958638f, -0.055084574f, -0.055209926f, -0.055334693f, -0.055458877f, -0.055582479f, -0.055705499f,
    -0.055827938f, -0.055949798f, -0.056071078f, -0.056191780f, -0.056311905f, -0.056431453f, -0.056550426f, -0.056668824f,
    -0.056786648f, -0.056903899f, -0.057020577f, -0.057136684f, -0.057252220f, -0.057367187f, -0.057481585f, -0.057595414f,
    -0.057708677f, -0.057821373f, -0.057933504f, -0.058045070f, -0.058156072f, -0.058266511f, -0.058376388f, -0.058485704f,
    -0.058594459f, -0.058702655f, -0.058810293f, -0.058917372f, -0.059023895f, -0.059129861f, -0.059235273f, -0.059340130f,
    -0.059444433f, -0.059548184f, -0.059651383f, -0.059754031f, -0.059856129f, -0.059957678f, -0.060058679f, -0.060159132f,
    -0.060259039f, -0.060358400f, -0.060457216f, -0.060555488f, -0.060653217f, -0.060750404f, -0.060847049f, -0.060943154f,
    -0.061038720f, -0.061133746f, -0.061228235f, -0.061322187f, -0.061415603f, -0.061508483f, -0.061600829f, -0.061692642f,
    -0.061783922f, -0.061874671f, -0.061964888f, -0.062054576f, -0.062143735f, -0.062232365f, -0.062320468f, -0.062408045f,
    -0.062495096f, -0.062581622f, -0.062667625f, -0.062753105f, -0.062838062f, -0.062922499f, -0.063006415f, -0.063089813f,
    -0.063172691f, -0.063255052f, -0.063336896f, -0.063418225f, -0.063499039f, -0.063579338f, -0.063659125f, -0.063738399f,
    -0.063817162f, -0.063895414f, -0.063973157f, -0.064050391f, -0.064127118f, -0.064203337f, -0.064279051f, -0.064354259f,
    -0.064428964f, -0.064503165f, -0.064576863f, -0.064650060f, -0.064722757f, -0.064794953f, -0.064866651f, -0.064937851f,
    -0.065008554f, -0.065078761f, -0.065148472f, -0.065217689f, -0.065286413f, -0.065354644f, -0.065422384f, -0.065489633f,
    -0.065556392f, -0.065622662f, -0.065688444f, -0.065753739f, -0.065818547f, -0.065882871f, -0.065946710f, -0.066010065f,
    -0.066072938f, -0.066135329f, -0.066197239f, -0.066258670f, -0.066319621f, -0.066380094f, -0.066440090f, -0.066499610f,
    -0.066558655f, -0.066617225f, -0.066675321f, -0.066732945f, -0.066790097f, -0.066846778f, -0.066902989f, -0.066958731f,
    -0.067014006f, -0.067068812f, -0.067123153f, -0.067177028f, -0.067230439f, -0.067283386f, -0.067335870f, -0.067387893f,
    -0.067439455f, -0.067490557f, -0.067541200f, -0.067591384f, -0.067641112f, -0.067690383f, -0.067739199f, -0.067787560f,
    -0.067835468f, -0.067882923f, -0.067929927f, -0.067976479f, -0.068022582f, -0.068068236f, -0.068113441f, -0.068158200f,
    -0.068202512f, -0.068246379f, -0.068289801f, -0.068332780f, -0.068375316f, -0.068417410f, -0.068459064f, -0.068500278f,
    -0.068541053f, -0.068581389f, -0.068621289f, -0.068660752f, -0.068699781f, -0.068738374f, -0.068776534f, -0.068814262f,
    -0.068851558f, -0.068888423f, -0.068924858f, -0.068960865f, -0.068996443f, -0.069031595f, -0.069066320f, -0.069100620f,
    -0.069134495f, -0.069167948f, -0.069200977f, -0.069233585f, -0.069265772f, -0.069297540f, -0.069328889f, -0.069359819f,
    -0.069390333f, -0.069420430f, -0.069450113f, -0.069479381f, -0.069508235f, -0.069536678f, -0.069564708f, -0.069592328f,
    -0.069619538f, -0.069646340f, -0.069672733f, -0.069698720f, -0.069724300f, -0.069749476f, -0.069774247f, -0.069798615f,
    -0.069822580f, -0.069846144f, -0.069869307f, -0.069892070f, -0.069914435f, -0.069936402f, -0.069957972f, -0.069979146f,
    -0.069999925f, -0.070020309f, -0.070040300f, -0.070059899f, -0.070079107f, -0.070097924f, -0.070116351f, -0.070134389f,
    -0.070152040f, -0.070169304f, -0.070186181f, -0.070202674f, -0.070218782f, -0.070234507f, -0.070249850f, -0.070264811f,
    -0.070279392f, -0.070293593f, -0.070307416f, -0.070320860f, -0.070333928f, -0.070346620f, -0.070358936f, -0.070370879f,
    -0.070382448f, -0.070393645f, -0.070404470f, -0.070414925f, -0.070425010f, -0.070434726f, -0.070444074f, -0.070453056f,
    -0.070461672f, -0.070469922f, -0.070477808f, -0.070485331f, -0.070492492f, -0.070499291f, -0.070505729f, -0.070511808f,
    -0.070517528f, -0.070522890f, -0.070527895f, -0.070532544f, -0.070536838f, -0.070540778f, -0.070544364f, -0.070547598f,
    -0.070550480f, -0.070553011f, -0.070555193f, -0.070557026f, -0.070558511f, -0.070559649f, -0.070560441f, -0.070560887f,
    -0.070560989f, -0.070560748f, -0.070560164f, -0.070559239f, -0.070557972f, -0.070556366f, -0.070554421f, -0.070552137f,
    -0.070549517f, -0.070546560f, -0.070543268f, -0.070539641f, -0.070535681f, -0.070531388f, -0.070526763f, -0.070521808f,
    -0.070516522f, -0.070510907f, -0.070504964f, -0.070498694f, -0.070492097f, -0.070485174f, -0.070477927f, -0.070470356f,
    -0.070462462f, -0.070454246f, -0.070445709f, -0.070436852f, -0.070427675f, -0.070418180f, -0.070408367f, -0.070398238f,
    -0.070387793f, -0.070377033f, -0.070365958f, -0.070354571f, -0.070342872f, -0.070330861f, -0.070318539f, -0.070305908f,
    -0.070292968f, -0.070279720f, -0.070266166f, -0.070252305f, -0.070238139f, -0.070223669f, -0.070208895f, -0.070193819f,
    -0.070178441f, -0.070162762f, -0.070146783f, -0.070130505f, -0.070113929f, -0.070097056f, -0.070079886f, -0.070062420f,
    -0.070044660f, -0.070026606f, -0.070008259f, -0.069989620f, -0.069970690f, -0.069951469f, -0.069931959f, -0.069912161f,
    -0.069892074f, -0.069871701f, -0.069851042f, -0.069830098f, -0.069808869f, -0.069787357f, -0.069765563f, -0.069743486f,
    -0.069721129f, -0.069698492f, -0.069675576f, -0.069652382f, -0.069628911f, -0.069605162f, -0.069581139f, -0.069556840f,
    -0.069532268f, -0.069507422f, -0.069482305f, -0.069456916f, -0.069431256f, -0.069405327f, -0.069379130f, -0.069352664f,
    -0.069325931f, -0.069298932f, -0.069271668f, -0.069244139f, -0.069216346f, -0.069188291f, -0.069159974f, -0.069131395f,
    -0.069102557f, -0.069073459f, -0.069044102f, -0.069014488f, -0.068984617f, -0.068954489f, -0.068924107f, -0.068893470f,
    -0.068862580f, -0.068831437f, -0.068800043f, -0.068768397f, -0.068736502f, -0.068704357f, -0.068671963f, -0.068639322f,
    -0.068606435f, -0.068573301f, -0.068539922f, -0.068506299f, -0.068472433f, -0.068438324f, -0.068403973f, -0.068369381f,
    -0.068334549f, -0.068299478f, -0.068264169f, -0.068228621f, -0.068192838f, -0.068156818f, -0.068120563f, -0.068084074f,
    -0.068047351f, -0.068010396f, -0.067973208f, -0.067935790f, -0.067898142f, -0.067860264f, -0.067822158f, -0.067783824f,
    -0.067745264f, -0.067706477f, -0.067667465f, -0.067628228f, -0.067588768f, -0.067549085f, -0.067509180f, -0.067469054f,
    -0.067428707f, -0.067388141f, -0.067347356f, -0.067306354f, -0.067265134f, -0.067223698f, -0.067182046f, -0.067140180f,
    -0.067098100f, -0.067055806f, -0.067013301f, -0.066970584f, -0.066927656f, -0.066884518f, -0.066841172f, -0.066797617f,
    -0.066753854f, -0.066709885f, -0.066665710f, -0.066621330f, -0.066576746f, -0.066531958f, -0.066486967f, -0.066441775f,
    -0.066396381f, -0.066350788f, -0.066304994f, -0.066259002f, -0.066212812f, -0.066166425f, -0.066119842f, -0.066073062f,
    -0.066026088f, -0.065978921f, -0.065931559f, -0.065884006f, -0.065836261f, -0.065788324f, -0.065740198f, -0.065691883f,
    -0.065643378f, -0.065594687f, -0.065545808f, -0.065496743f, -0.065447492f, -0.065398057f, -0.065348438f, -0.065298636f,
    -0.065248651f, -0.065198485f, -0.065148138f, -0.065097611f, -0.065046905f, -0.064996020f, -0.064944957f, -0.064893718f,
    -0.064842302f, -0.064790711f, -0.064738945f, -0.064687005f, -0.064634892f, -0.064582607f, -0.064530150f, -0.064477522f,
    -0.064424724f, -0.064371756f, -0.064318620f, -0.064265316f, -0.064211845f, -0.064158207f, -0.064104404f, -0.064050436f,
    -0.063996304f, -0.063942008f, -0.063887550f, -0.063832930f, -0.063778149f, -0.063723207f, -0.063668106f, -0.063612846f,
    -0.063557427f, -0.063501852f, -0.063446119f, -0.063390230f, -0.063334187f, -0.063277988f, -0.063221636f, -0.063165131f,
    -0.063108474f, -0.063051665f, -0.062994705f, -0.062937595f, -0.062880336f, -0.062822928f, -0.062765372f, -0.062707669f,
    -0.062649820f, -0.062591825f, -0.062533684f, -0.062475400f, -0.062416972f, -0.062358400f, -0.062299687f, -0.062240833f,
    -0.062181837f, -0.062122702f, -0.062063427f, -0.062004014f, -0.061944463f, -0.061884774f, -0.061824950f, -0.061764989f,
    -0.061704894f, -0.061644664f, -0.061584300f, -0.061523804f, -0.061463175f, -0.061402415f, -0.061341524f, -0.061280503f,
    -0.061219353f, -0.061158073f, -0.061096666f, -0.061035132f, -0.060973471f, -0.060911683f, -0.060849771f, -0.060787734f,
    -0.060725574f, -0.060663290f, -0.060600883f, -0.060538355f, -0.060475706f, -0.060412936f, -0.060350047f, -0.060287038f,
    -0.060223911f, -0.060160667f, -0.060097305f, -0.060033827f, -0.059970233f, -0.059906525f, -0.059842702f, -0.059778765f,
    -0.059714716f, -0.059650554f, -0.059586281f, -0.059521897f, -0.059457402f, -0.059392798f, -0.059328085f, -0.059263263f,
    -0.059198334f, -0.059133298f, -0.059068156f, -0.059002908f, -0.058937555f, -0.058872098f, -0.058806537f, -0.058740873f,
    -0.058675107f, -0.058609239f, -0.058543270f, -0.058477201f, -0.058411032f, -0.058344763f, -0.058278397f, -0.058211932f,
    -0.058145371f, -0.058078713f, -0.058011959f, -0.057945110f, -0.057878167f, -0.057811129f, -0.057743998f, -0.057676775f,
    -0.057609459f, -0.057542053f, -0.057474555f, -0.057406967f, -0.057339290f, -0.057271524f, -0.057203670f, -0.057135728f,
    -0.057067699f, -0.056999584f, -0.056931384f, -0.056863098f, -0.056794728f, -0.056726273f, -0.056657736f, -0.056589116f,
    -0.056520414f, -0.056451631f, -0.056382767f, -0.056313823f, -0.056244800f, -0.056175697f, -0.056106516f, -0.056037258f,
    -0.055967923f, -0.055898511f, -0.055829023f, -0.055759460f, -0.055689822f, -0.055620111f, -0.055550326f, -0.055480468f,
    -0.055410538f, -0.055340536f, -0.055270463f, -0.055200320f, -0.055130107f, -0.055059825f, -0.054989474f, -0.054919055f,
    -0.054848569f, -0.054778016f, -0.054707396f, -0.054636711f, -0.054565961f, -0.054495146f, -0.054424267f, -0.054353325f,
    -0.054282320f, -0.054211253f, -0.054140125f, -0.054068935f, -0.053997685f, -0.053926375f, -0.053855005f, -0.053783577f,
    -0.053712091f, -0.053640547f, -0.053568947f, -0.053497289f, -0.053425576f, -0.053353808f, -0.053281984f, -0.053210107f,
    -0.053138176f, -0.053066192f, -0.052994155f, -0.052922067f, -0.052849927f, -0.052777736f, -0.052705495f, -0.052633205f,
    -0.052560865f, -0.052488476f, -0.052416040f, -0.052343556f, -0.052271025f, -0.052198447f, -0.052125824f, -0.052053155f,
    -0.051980442f, -0.051907685f, -0.051834883f, -0.051762039f, -0.051689152f, -0.051616223f, -0.051543252f, -0.051470240f,
    -0.051397188f, -0.051324096f, -0.051250965f, -0.051177794f, -0.051104586f, -0.051031339f, -0.050958055f, -0.050884735f,
    -0.050811378f, -0.050737986f, -0.050664558f, -0.050591096f, -0.050517599f, -0.050444069f, -0.050370506f, -0.050296910f,
    -0.050223282f, -0.050149623f, -0.050075932f, -0.050002211f, -0.049928460f, -0.049854679f, -0.049780870f, -0.049707032f,
    -0.049633166f, -0.049559272f, -0.049485351f, -0.049411404f, -0.049337431f, -0.049263432f, -0.049189409f, -0.049115361f,
    -0.049041289f, -0.048967193f, -0.048893074f, -0.048818933f, -0.048744770f, -0.048670585f, -0.048596380f, -0.048522153f,
    -0.048447907f, -0.048373641f, -0.048299356f, -0.048225052f, -0.048150730f, -0.048076391f, -0.048002034f, -0.047927661f,
    -0.047853271f, -0.047778866f, -0.047704445f, -0.047630010f, -0.047555560f, -0.047481096f, -0.047406619f, -0.047332129f,
    -0.047257627f, -0.047183113f, -0.047108587f, -0.047034050f, -0.046959502f, -0.046884944f, -0.046810377f, -0.046735800f,
    -0.046661215f, -0.046586621f, -0.046512020f, -0.046437411f, -0.046362795f, -0.046288173f, -0.046213544f, -0.046138910f,
    -0.046064271f, -0.045989627f, -0.045914979f, -0.045840327f, -0.045765672f, -0.045691014f, -0.045616353f, -0.045541690f,
    -0.045467026f, -0.045392360f, -0.045317694f, -0.045243027f, -0.045168361f, -0.045093695f, -0.045019030f, -0.044944367f,
    -0.044869705f, -0.044795046f, -0.044720390f, -0.044645736f, -0.044571086f, -0.044496441f, -0.044421799f, -0.044347162f,
    -0.044272531f, -0.044197905f, -0.044123286f, -0.044048673f, -0.043974066f, -0.043899467f, -0.043824876f, -0.043750293f,
    -0.043675719f, -0.043601153f, -0.043526597f, -0.043452051f, -0.043377515f, -0.043302989f, -0.043228474f, -0.043153971f,
    -0.043079480f, -0.043005000f, -0.042930534f, -0.042856080f, -0.042781640f, -0.042707213f, -0.042632801f, -0.042558403f,
    -0.042484020f, -0.042409653f, -0.042335301f, -0.042260966f, -0.042186646f, -0.042112344f, -0.042038059f, -0.041963792f,
    -0.041889543f, -0.041815312f, -0.041741100f, -0.041666907f, -0.041592733f, -0.041518580f, -0.041444447f, -0.041370334f,
    -0.041296243f, -0.041222173f, -0.041148124f, -0.041074098f, -0.041000095f, -0.040926114f, -0.040852156f, -0.040778223f,
    -0.040704313f, -0.040630427f, -0.040556566f, -0.040482731f, -0.040408920f, -0.040335135f, -0.040261377f, -0.040187645f,
    -0.040113940f, -0.040040262f, -0.039966611f, -0.039892989f, -0.039819394f, -0.039745828f, -0.039672292f, -0.039598784f,
    -0.039525306f, -0.039451858f, -0.039378440f, -0.039305053f, -0.039231697f, -0.039158372f, -0.039085079f, -0.039011818f,
    -0.038938589f, -0.038865393f, -0.038792230f, -0.038719100f, -0.038646004f, -0.038572942f, -0.038499914f, -0.038426920f,
    -0.038353962f, -0.038281039f, -0.038208151f, -0.038135300f, -0.038062485f, -0.037989706f, -0.037916964f, -0.037844260f,
    -0.037771592f, -0.037698963f, -0.037626372f, -0.037553819f, -0.037481306f, -0.037408831f, -0.037336395f, -0.037264000f,
    -0.037191644f, -0.037119329f, -0.037047054f, -0.036974820f, -0.036902627f, -0.036830476f, -0.036758367f, -0.036686300f,
    -0.036614275f, -0.036542293f, -0.036470355f, -0.036398459f, -0.036326607f, -0.036254799f, -0.036183035f, -0.036111315f,
    -0.036039641f, -0.035968011f, -0.035896427f, -0.035824888f, -0.035753396f, -0.035681949f, -0.035610549f, -0.035539196f,
    -0.035467890f, -0.035396631f, -0.035325420f, -0.035254256f, -0.035183141f, -0.035112074f, -0.035041056f, -0.034970087f,
    -0.034899167f, -0.034828297f, -0.034757476f, -0.034686706f, -0.034615985f, -0.034545316f, -0.034474697f, -0.034404129f,
    -0.034333613f, -0.034263149f, -0.034192736f, -0.034122375f, -0.034052067f, -0.033981812f, -0.033911609f, -0.033841460f,
    -0.033771364f, -0.033701322f, -0.033631334f, -0.033561400f, -0.033491520f, -0.033421695f, -0.033351925f, -0.033282211f,
    -0.033212551f, -0.033142948f, -0.033073400f, -0.033003909f, -0.032934473f, -0.032865095f, -0.032795773f, -0.032726509f,
    -0.032657302f, -0.032588152f, -0.032519061f, -0.032450027f, -0.032381052f, -0.032312135f, -0.032243277f, -0.032174478f,
    -0.032105738f, -0.032037058f, -0.031968437f, -0.031899877f, -0.031831376f, -0.031762936f, -0.031694556f, -0.031626237f,
    -0.031557979f, -0.031489782f, -0.031421647f, -0.031353574f, -0.031285562f, -0.031217612f, -0.031149725f, -0.031081900f,
    -0.031014138f, -0.030946439f, -0.030878803f, -0.030811230f, -0.030743721f, -0.030676276f, -0.030608895f, -0.030541578f,
    -0.030474325f, -0.030407137f, -0.030340014f, -0.030272955f, -0.030205962f, -0.030139035f, -0.030072172f, -0.030005376f,
    -0.029938646f, -0.029871982f, -0.029805384f, -0.029738852f, -0.029672388f, -0.029605990f, -0.029539660f, -0.029473397f,
    -0.029407201f, -0.029341073f, -0.029275013f, -0.029209021f, -0.029143098f, -0.029077242f, -0.029011456f, -0.028945738f,
    -0.028880089f, -0.028814509f, -0.028748999f, -0.028683558f, -0.028618187f, -0.028552885f, -0.028487654f, -0.028422493f,
    -0.028357402f, -0.028292382f, -0.028227432f, -0.028162553f, -0.028097746f, -0.028033009f, -0.027968344f, -0.027903751f,
    -0.027839229f, -0.027774779f, -0.027710402f, -0.027646096f, -0.027581863f, -0.027517702f, -0.027453614f, -0.027389598f,
    -0.027325656f, -0.027261787f, -0.027197991f, -0.027134269f, -0.027070620f, -0.027007045f, -0.026943544f, -0.026880116f,
    -0.026816764f, -0.026753485f, -0.026690281f, -0.026627151f, -0.026564097f, -0.026501117f, -0.026438212f, -0.026375383f,
    -0.026312629f, -0.026249950f, -0.026187347f, -0.026124820f, -0.026062369f, -0.025999994f, -0.025937695f, -0.025875472f,
    -0.025813326f, -0.025751256f, -0.025689263f, -0.025627347f, -0.025565508f, -0.025503746f, -0.025442061f, -0.025380453f,
    -0.025318923f, -0.025257471f, -0.025196096f, -0.025134800f, -0.025073581f, -0.025012440f, -0.024951378f, -0.024890394f,
    -0.024829488f, -0.024768661f, -0.024707913f, -0.024647243f, -0.024586653f, -0.024526141f, -0.024465709f, -0.024405356f,
    -0.024345082f, -0.024284888f, -0.024224773f, -0.024164738f, -0.024104783f, -0.024044908f, -0.023985113f, -0.023925398f,
    -0.023865763f, -0.023806209f, -0.023746735f, -0.023687342f, -0.023628029f, -0.023568797f, -0.023509646f, -0.023450576f,
    -0.023391587f, -0.023332679f, -0.023273853f, -0.023215108f, -0.023156444f, -0.023097862f, -0.023039361f, -0.022980942f,
    -0.022922605f, -0.022864350f, -0.022806177f, -0.022748086f, -0.022690077f, -0.022632151f, -0.022574307f, -0.022516545f,
    -0.022458866f, -0.022401269f, -0.022343755f, -0.022286324f, -0.022228976f, -0.022171710f, -0.022114528f, -0.022057429f,
    -0.022000413f, -0.021943480f, -0.021886630f, -0.021829864f, -0.021773182f, -0.021716583f, -0.021660067f, -0.021603636f,
    -0.021547288f, -0.021491024f, -0.021434843f, -0.021378747f, -0.021322735f, -0.021266807f, -0.021210963f, -0.021155204f,
    -0.021099528f, -0.021043937f, -0.020988431f, -0.020933009f, -0.020877672f, -0.020822419f, -0.020767251f, -0.020712168f,
    -0.020657169f, -0.020602256f, -0.020547427f, -0.020492684f, -0.020438025f, -0.020383452f, -0.020328963f, -0.020274560f,
    -0.020220242f, -0.020166010f, -0.020111863f, -0.020057801f, -0.020003825f, -0.019949934f, -0.019896129f, -0.019842409f,
    -0.019788776f, -0.019735227f, -0.019681765f, -0.019628389f, -0.019575098f, -0.019521893f, -0.019468774f, -0.019415741f,
    -0.019362794f, -0.019309934f, -0.019257159f, -0.019204470f, -0.019151868f, -0.019099352f, -0.019046922f, -0.018994578f,
    -0.018942321f, -0.018890150f, -0.018838065f, -0.018786067f, -0.018734156f, -0.018682330f, -0.018630592f, -0.018578940f,
    -0.018527374f, -0.018475895f, -0.018424503f, -0.018373198f, -0.018321979f, -0.018270847f, -0.018219801f, -0.018168843f,
    -0.018117971f, -0.018067186f, -0.018016488f, -0.017965877f, -0.017915352f, -0.017864915f, -0.017814565f, -0.017764301f,
    -0.017714125f, -0.017664035f, -0.017614033f, -0.017564117f, -0.017514289f, -0.017464547f, -0.017414893f, -0.017365326f,
    -0.017315846f, -0.017266453f, -0.017217147f, -0.017167929f, -0.017118797f, -0.017069753f, -0.017020796f, -0.016971926f,
    -0.016923143f, -0.016874447f, -0.016825839f, -0.016777318f, -0.016728884f, -0.016680537f, -0.016632278f, -0.016584106f,
    -0.016536021f, -0.016488023f, -0.016440113f, -0.016392290f, -0.016344554f, -0.016296905f, -0.016249344f, -0.016201869f,
    -0.016154483f, -0.016107183f, -0.016059971f, -0.016012845f, -0.015965808f, -0.015918857f, -0.015871993f, -0.015825217f,
    -0.015778528f, -0.015731927f, -0.015685412f, -0.015638985f, -0.015592645f, -0.015546392f, -0.015500226f, -0.015454147f,
    -0.015408156f, -0.015362251f, -0.015316434f, -0.015270704f, -0.015225061f, -0.015179505f, -0.015134037f, -0.015088655f,
    -0.015043360f, -0.014998153f, -0.014953032f, -0.014907998f, -0.014863052f, -0.014818192f, -0.014773419f, -0.014728734f,
    -0.014684135f, -0.014639623f, -0.014595198f, -0.014550859f, -0.014506608f, -0.014462443f, -0.014418365f, -0.014374374f,
    -0.014330470f, -0.014286652f, -0.014242921f, -0.014199277f, -0.014155719f, -0.014112248f, -0.014068864f, -0.014025566f,
    -0.013982354f, -0.013939229f, -0.013896191f, -0.013853239f, -0.013810373f, -0.013767594f, -0.013724901f, -0.013682294f,
    -0.013639774f, -0.013597340f, -0.013554992f, -0.013512730f, -0.013470554f, -0.013428465f, -0.013386461f, -0.013344544f,
    -0.013302713f, -0.013260967f, -0.013219308f, -0.013177734f, -0.013136246f, -0.013094844f, -0.013053528f, -0.013012298f,
    -0.012971153f, -0.012930094f, -0.012889120f, -0.012848232f, -0.012807430f, -0.012766713f, -0.012726082f, -0.012685536f,
    -0.012645075f, -0.012604699f, -0.012564409f, -0.012524204f, -0.012484085f, -0.012444050f, -0.012404100f, -0.012364236f,
    -0.012324456f, -0.012284762f, -0.012245152f, -0.012205627f, -0.012166187f, -0.012126832f, -0.012087561f, -0.012048375f,
    -0.012009274f, -0.011970257f, -0.011931324f, -0.011892476f, -0.011853713f, -0.011815034f, -0.011776439f, -0.011737928f,
    -0.011699501f, -0.011661159f, -0.011622900f, -0.011584726f, -0.011546635f, -0.011508629f, -0.011470706f, -0.011432867f,
    -0.011395112f, -0.011357440f, -0.011319852f, -0.011282348f, -0.011244927f, -0.011207589f, -0.011170335f, -0.011133164f,
    -0.011096076f, -0.011059072f, -0.011022150f, -0.010985312f, -0.010948557f, -0.010911884f, -0.010875295f, -0.010838788f,
    -0.010802364f, -0.010766022f, -0.010729764f, -0.010693587f, -0.010657494f, -0.010621482f, -0.010585553f, -0.010549707f,
    -0.010513942f, -0.010478260f, -0.010442660f, -0.010407142f, -0.010371705f, -0.010336351f, -0.010301078f, -0.010265887f,
    -0.010230778f, -0.010195750f, -0.010160804f, -0.010125940f, -0.010091156f, -0.010056454f, -0.010021834f, -0.009987294f,
    -0.009952836f, -0.009918458f, -0.009884162f, -0.009849946f, -0.009815811f, -0.009781757f, -0.009747784f, -0.009713891f,
    -0.009680078f, -0.009646346f, -0.009612695f, -0.009579124f, -0.009545632f, -0.009512222f, -0.009478891f, -0.009445640f,
    -0.009412469f, -0.009379377f, -0.009346366f, -0.009313434f, -0.009280582f, -0.009247809f, -0.009215115f, -0.009182501f,
    -0.009149967f, -0.009117511f, -0.009085134f, -0.009052837f, -0.009020618f, -0.008988479f, -0.008956418f, -0.008924436f,
    -0.008892532f, -0.008860707f, -0.008828960f, -0.008797292f, -0.008765702f, -0.008734190f, -0.008702757f, -0.008671401f,
    -0.008640123f, -0.008608923f, -0.008577801f, -0.008546757f, -0.008515790f, -0.008484901f, -0.008454089f, -0.008423355f,
    -0.008392697f, -0.008362117f, -0.008331614f, -0.008301188f, -0.008270839f, -0.008240567f, -0.008210372f, -0.008180253f,
    -0.008150210f, -0.008120245f, -0.008090355f, -0.008060542f, -0.008030805f, -0.008001144f, -0.007971560f, -0.007942051f,
    -0.007912618f, -0.007883261f, -0.007853979f, -0.007824773f, -0.007795642f, -0.007766587f, -0.007737608f, -0.007708703f,
    -0.007679873f, -0.007651119f, -0.007622439f, -0.007593835f, -0.007565305f, -0.007536850f, -0.007508469f, -0.007480163f,
    -0.007451931f, -0.007423773f, -0.007395690f, -0.007367680f, -0.007339745f, -0.007311884f, -0.007284096f, -0.007256382f,
    -0.007228742f, -0.007201175f, -0.007173682f, -0.007146262f, -0.007118915f, -0.007091642f, -0.007064441f, -0.007037314f,
    -0.007010259f, -0.006983277f, -0.006956368f, -0.006929531f, -0.006902767f, -0.006876075f, -0.006849455f, -0.006822908f,
    -0.006796433f, -0.006770029f, -0.006743698f, -0.006717438f, -0.006691250f, -0.006665134f, -0.006639089f, -0.006613115f,
    -0.006587213f, -0.006561382f, -0.006535622f, -0.006509933f, -0.006484315f, -0.006458768f, -0.006433291f, -0.006407885f,
    -0.006382550f, -0.006357285f, -0.006332090f, -0.006306965f, -0.006281911f, -0.006256927f, -0.006232012f, -0.006207167f,
    -0.006182392f, -0.006157687f, -0.006133051f, -0.006108484f, -0.006083987f, -0.006059559f, -0.006035200f, -0.006010910f,
    -0.005986688f, -0.005962536f, -0.005938452f, -0.005914437f, -0.005890491f, -0.005866612f, -0.005842802f, -0.005819061f,
    -0.005795387f, -0.005771781f, -0.005748243f, -0.005724773f, -0.005701370f, -0.005678036f, -0.005654768f, -0.005631568f,
    -0.005608435f, -0.005585369f, -0.005562370f, -0.005539439f, -0.005516574f, -0.005493775f, -0.005471044f, -0.005448379f,
    -0.005425780f, -0.005403247f, -0.005380781f, -0.005358381f, -0.005336047f, -0.005313779f, -0.005291577f, -0.005269440f,
    -0.005247369f, -0.005225363f, -0.005203423f, -0.005181548f, -0.005159738f, -0.005137993f, -0.005116313f, -0.005094698f,
    -0.005073148f, -0.005051662f, -0.005030241f, -0.005008885f, -0.004987592f, -0.004966364f, -0.004945200f, -0.004924100f,
    -0.004903064f, -0.004882092f, -0.004861183f, -0.004840339f, -0.004819557f, -0.004798839f, -0.004778184f, -0.004757592f,
    -0.004737064f, -0.004716598f, -0.004696195f, -0.004675855f, -0.004655578f, -0.004635363f, -0.004615211f, -0.004595121f,
    -0.004575093f, -0.004555127f, -0.004535223f, -0.004515381f, -0.004495601f, -0.004475883f, -0.004456226f, -0.004436631f,
    -0.004417097f, -0.004397624f, -0.004378213f, -0.004358862f, -0.004339573f, -0.004320344f, -0.004301176f, -0.004282069f,
    -0.004263023f, -0.004244036f, -0.004225110f, -0.004206245f, -0.004187439f, -0.004168693f, -0.004150008f, -0.004131382f,
    -0.004112816f, -0.004094309f, -0.004075862f, -0.004057474f, -0.004039146f, -0.004020876f, -0.004002666f, -0.003984515f,
    -0.003966422f, -0.003948389f, -0.003930414f, -0.003912497f, -0.003894639f, -0.003876839f, -0.003859098f, -0.003841414f,
    -0.003823789f, -0.003806221f, -0.003788711f, -0.003771259f, -0.003753865f, -0.003736528f, -0.003719248f, -0.003702026f,
    -0.003684861f, -0.003667753f, -0.003650702f, -0.003633708f, -0.003616770f, -0.003599889f, -0.003583065f, -0.003566297f,
    -0.003549586f, -0.003532931f, -0.003516332f, -0.003499789f, -0.003483301f, -0.003466870f, -0.003450495f, -0.003434175f,
    -0.003417910f, -0.003401701f, -0.003385547f, -0.003369449f, -0.003353405f, -0.003337417f, -0.003321483f, -0.003305605f,
    -0.003289781f, -0.003274011f, -0.003258296f, -0.003242635f, -0.003227029f, -0.003211477f, -0.003195979f, -0.003180535f,
    -0.003165145f, -0.003149808f, -0.003134525f, -0.003119296f, -0.003104120f, -0.003088998f, -0.003073929f, -0.003058913f,
    -0.003043950f, -0.003029040f, -0.003014183f, -0.002999378f, -0.002984627f, -0.002969927f, -0.002955281f, -0.002940686f,
    -0.002926144f, -0.002911654f, -0.002897216f, -0.002882831f, -0.002868496f, -0.002854214f, -0.002839983f, -0.002825804f,
    -0.002811677f, -0.002797600f, -0.002783575f, -0.002769601f, -0.002755678f, -0.002741807f, -0.002727986f, -0.002714215f,
    -0.002700496f, -0.002686827f, -0.002673208f, -0.002659640f, -0.002646122f, -0.002632654f, -0.002619236f, -0.002605869f,
    -0.002592551f, -0.002579283f, -0.002566064f, -0.002552895f, -0.002539776f, -0.002526706f, -0.002513686f, -0.002500714f,
    -0.002487792f, -0.002474919f, -0.002462094f, -0.002449319f, -0.002436592f, -0.002423914f, -0.002411284f, -0.002398703f,
    -0.002386170f, -0.002373685f, -0.002361249f, -0.002348860f, -0.002336520f, -0.002324227f, -0.002311982f, -0.002299785f,
    -0.002287636f, -0.002275533f, -0.002263479f, -0.002251471f, -0.002239511f, -0.002227598f, -0.002215732f, -0.002203913f,
    -0.002192141f, -0.002180415f, -0.002168736f, -0.002157104f, -0.002145518f, -0.002133979f, -0.002122486f, -0.002111039f,
    -0.002099638f, -0.002088283f, -0.002076975f, -0.002065712f, -0.002054494f, -0.002043323f, -0.002032197f, -0.002021116f,
    -0.002010081f, -0.001999091f, -0.001988146f, -0.001977247f, -0.001966392f, -0.001955583f, -0.001944818f, -0.001934098f,
    -0.001923423f, -0.001912792f, -0.001902206f, -0.001891664f, -0.001881167f, -0.001870713f, -0.001860304f, -0.001849939f,
    -0.001839618f, -0.001829341f, -0.001819108f, -0.001808919f, -0.001798773f, -0.001788670f, -0.001778611f, -0.001768596f,
    -0.001758624f, -0.001748695f, -0.001738809f, -0.001728966f, -0.001719166f, -0.001709409f, -0.001699695f, -0.001690023f,
    -0.001680395f, -0.001670808f, -0.001661264f, -0.001651763f, -0.001642304f, -0.001632887f, -0.001623512f, -0.001614179f,
    -0.001604888f, -0.001595639f, -0.001586432f, -0.001577267f, -0.001568143f, -0.001559061f, -0.001550020f, -0.001541021f,
    -0.001532063f, -0.001523146f, -0.001514271f, -0.001505437f, -0.001496643f, -0.001487891f, -0.001479179f, -0.001470508f,
    -0.001461878f, -0.001453288f, -0.001444740f, -0.001436231f, -0.001427763f, -0.001419335f, -0.001410948f, -0.001402600f,
    -0.001394293f, -0.001386026f, -0.001377798f, -0.001369611f, -0.001361463f, -0.001353355f, -0.001345287f, -0.001337258f,
    -0.001329268f, -0.001321319f, -0.001313408f, -0.001305537f, -0.001297705f, -0.001289912f, -0.001282158f, -0.001274443f,
    -0.001266767f, -0.001259130f, -0.001251531f, -0.001243972f, -0.001236451f, -0.001228968f, -0.001221524f, -0.001214118f,
    -0.001206751f, -0.001199422f, -0.001192131f, -0.001184879f, -0.001177664f, -0.001170487f, -0.001163349f, -0.001156248f,
    -0.001149185f, -0.001142160f, -0.001135172f, -0.001128222f, -0.001121309f, -0.001114434f, -0.001107597f, -0.001100796f,
    -0.001094033f, -0.001087308f, -0.001080619f, -0.001073967f, -0.001067353f, -0.001060775f, -0.001054234f, -0.001047730f,
    -0.001041263f, -0.001034832f, -0.001028438f, -0.001022081f, -0.001015760f, -0.001009476f, -0.001003227f, -0.000997016f,
    -0.000990840f, -0.000984701f, -0.000978598f, -0.000972531f, -0.000966500f, -0.000960504f, -0.000954545f, -0.000948622f,
    -0.000942734f, -0.000936882f, -0.000931066f, -0.000925285f, -0.000919540f, -0.000913830f, -0.000908156f, -0.000902517f,
    -0.000896914f, -0.000891346f, -0.000885813f, -0.000880315f, -0.000874852f, -0.000869424f, -0.000864031f, -0.000858673f,
    -0.000853350f, -0.000848062f, -0.000842809f, -0.000837590f, -0.000832406f, -0.000827256f, -0.000822141f, -0.000817061f,
    -0.000812015f, -0.000807003f, -0.000802026f, -0.000797083f, -0.000792175f, -0.000787300f, -0.000782460f, -0.000777654f,
    -0.000772881f, -0.000768143f, -0.000763439f, -0.000758769f, -0.000754132f, -0.000749529f, -0.000744960f, -0.000740425f,
    -0.000735924f, -0.000731456f, -0.000727021f, -0.000722620f, -0.000718253f, -0.000713919f, -0.000709618f, -0.000705351f,
    -0.000701117f, -0.000696916f, -0.000692749f, -0.000688614f, -0.000684513f, -0.000680445f, -0.000676410f, -0.000672408f,
    -0.000668438f, -0.000664502f, -0.000660599f, -0.000656728f, -0.000652890f, -0.000649085f, -0.000645313f, -0.000641573f,
    -0.000637866f, -0.000634192f, -0.000630550f, -0.000626940f, -0.000623363f, -0.000619819f, -0.000616306f, -0.000612827f,
    -0.000609379f, -0.000605964f, -0.000602581f, -0.000599230f, -0.000595912f, -0.000592625f, -0.000589371f, -0.000586148f,
    -0.000582958f, -0.000579800f, -0.000576674f, -0.000573579f, -0.000570517f, -0.000567486f, -0.000564487f, -0.000561520f,
    -0.000558585f, -0.000555682f, -0.000552810f, -0.000549970f, -0.000547161f, -0.000544384f, -0.000541639f, -0.000538925f,
    -0.000536243f, -0.000533592f, -0.000530973f, -0.000528385f, -0.000525829f, -0.000523304f, -0.000520810f, -0.000518348f,
    -0.000515917f, -0.000513517f, -0.000511148f, -0.000508811f, -0.000506505f, -0.000504230f, -0.000501986f, -0.000499773f,
    -0.000497592f, -0.000495441f, -0.000493322f, -0.000491233f, -0.000489176f, -0.000487149f, -0.000485154f, -0.000483189f,
    -0.000481255f, -0.000479352f, -0.000477481f, -0.000475639f, -0.000473829f, -0.000472050f, -0.000470301f, -0.000468583f,
    -0.000466896f, -0.000465240f, -0.000463614f, -0.000462019f, -0.000460455f, -0.000458921f, -0.000457418f, -0.000455946f,
    -0.000454504f, -0.000453093f, -0.000451712f, -0.000450362f, -0.000449043f, -0.000447754f, -0.000446496f, -0.000445268f,
    -0.000444070f, -0.000442903f, -0.000441767f, -0.000440661f, -0.000439586f, -0.000438540f, -0.000437526f, -0.000436541f,
    -0.000435588f, -0.000434664f, -0.000433771f, -0.000432908f, -0.000432076f, -0.000431274f, -0.000430502f, -0.000429761f,
    -0.000429050f, -0.000428369f, -0.000427719f, -0.000427098f, -0.000426509f, -0.000425949f, -0.000425420f, -0.000424921f,
    -0.000424452f, -0.000424014f, -0.000423606f, -0.000423228f, -0.000422880f, -0.000422562f, -0.000422275f, -0.000422018f,
    -0.000421792f, -0.000421595f, -0.000421429f, -0.000421293f, -0.000421187f, -0.000421111f, -0.000421066f, -0.000421051f
};
# 3 "../Tasks/Tasks.c" 2



void Start_ADC_DMA(void)
{
    HAL_ADC_Start_DMA(&hadc1, (uint32_t*)adc1_buffer, 8192);
    HAL_TIM_Base_Start(&htim3);
}

void Stop_ADC_DMA(void)
{
  HAL_TIM_Base_Stop(&htim3);
  HAL_ADC_Stop_DMA(&hadc1);
}

void FFT_Task(Wave_Struct* Wave_ori,Wave_Struct* noise)
{
    Stop_ADC_DMA();

    process_data(adc1_buffer, &FFTIN_Mix);
    fft_process(&FFTIN_Mix, &FFTOUT_Mix);
    regurlize_mag(&FFTOUT_Mix, 1);
    get_max_3(&FFTOUT_Mix, &Top3_Mix);

   Wave_ori -> Freq = FFTIN_Mix.cmp[Top3_Mix.index[0]]*((float)40960 / (float)8192);

    memset(adc1_buffer, 0, sizeof(adc1_buffer));
}

void Calc_Noice_Energy(Wave_Struct* P_Wave)
{
    uint32_t sum_adc2 = 0;
    for(int i = 0; i < 256; i++) {
        sum_adc2 += adc2_buffer[i];
    }
    float adc2_avg = (float)sum_adc2 / 256.0f;

    float Vrms_B = adc2_avg * 3.3f / 65535.0f;


    float Vpp_B = 0.0f;


    switch(P_Wave->Wave_type) {
        case WAVE_SINE:
            Vpp_B = 2.8284f * Vrms_B;
            break;
        case WAVE_SQUARE:
            Vpp_B = 2.0000f * Vrms_B;
            break;
        case WAVE_TRIANGLE:
            Vpp_B = 3.4641f *Vrms_B ;
            break;
        default:
            Vpp_B = 2.8284f * Vrms_B;
            break;
    }
    P_Wave->Vpp = Vpp_B;
}

void Send_Wave(Wave_Struct* P_Wave)
{
 AD9910_FreWrite(P_Wave->Freq);
 AD9910_AmpWrite(P_Wave->Vpp*2.52f);
}

void USART_Task(Wave_Struct* Wave_ori,Wave_Struct* noise)
{

}
