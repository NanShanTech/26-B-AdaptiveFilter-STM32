#ifndef __TASKS_H
#define __TASKS_H

#include "fftana.h"
#include "bsp_system.h"

extern uint8_t adc_dma_finish;//dma完成中断标志

extern __attribute__((section (".AXI_SRAM")))  uint16_t adc1_buffer[FFT_N+4] ;//混合信号

extern __attribute__((section (".AXI_SRAM")))  uint16_t adc2_buffer[1024] ;//干扰信号

extern __attribute__((section (".AXI_SRAM"))) fftin FFTIN_Mix;//

extern __attribute__((section (".AXI_SRAM"))) fftdata FFTOUT_Mix;//

extern max_3_index Top3_Mix;//

extern Wave_Struct Wave_origin;
extern Wave_Struct Wave_noise;

void Start_ADC(void);
void Stop_ADC_DMA(void);
void FFT_Task(Wave_Struct* Wave_ori,Wave_Struct* noise);
void Calc_Noice_Energy(Wave_Struct* P_Wave);
void Send_Wave(Wave_Struct* P_Wave);
void USART_Task(Wave_Struct* Wave_ori,Wave_Struct* noise);

#endif // __TASKS_H