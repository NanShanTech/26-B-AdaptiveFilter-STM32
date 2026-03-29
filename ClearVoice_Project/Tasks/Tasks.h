#ifndef __TASKS_H
#define __TASKS_H


#include "fftana.h"
#include "bsp_system.h"

typedef enum {
    SYS_STATE_IDLE = 0,       // 空闲模式
    SYS_STATE_SINGLE_SHOT,    // 单次滤波模式：执行一次后自动切回 IDLE
    SYS_STATE_CONTINUOUS      // 连续滤波模式
} SystemState_t;


extern uint8_t adc_dma_finish;//dma完成中断标志
extern __attribute__((section (".AXI_SRAM")))  uint16_t adc1_buffer[FFT_N] ;//混合信号
extern __attribute__((section (".AXI_SRAM")))  uint16_t adc2_buffer[FFT_N] ;//干扰信号
extern __attribute__((section (".AXI_SRAM"))) fftin FFTIN_Mix;//
extern __attribute__((section (".AXI_SRAM"))) fftin FFTIN_Dist;//
extern __attribute__((section (".AXI_SRAM"))) fftdata FFTOUT_Mix;//
extern __attribute__((section (".AXI_SRAM"))) fftdata FFTOUT_Dist;//

extern max_3_index Top3_Mix;//
extern max_3_index Top3_Dist;//
extern Wave_Struct Wave_Info;
extern SystemState_t g_SystemState;//系统状态机

void Start_ADC_DMA(void);
void Stop_ADC_DMA(void);
void FFT_Task(Wave_Struct* P_Wave);
void Send_Wave(Wave_Struct* P_Wave);
void USART_Task(Wave_Struct* P_Wave);

#endif // __TASKS_H