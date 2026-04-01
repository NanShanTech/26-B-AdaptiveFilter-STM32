#ifndef __TASKS_H
#define __TASKS_H


#include "global_types.h"
#include "fftana.h"

extern uint8_t adc_dma_finish;//dma完成中断标志

extern __attribute__((section (".AXI_SRAM")))  uint16_t adc1_buffer[FFT_N+4] ;//混合信号

extern __attribute__((section (".AXI_SRAM")))  uint16_t adc2_buffer[128] ;//干扰信号

extern __attribute__((section (".AXI_SRAM"))) fftin FFTIN_Mix;//

extern __attribute__((section (".AXI_SRAM"))) fftdata FFTOUT_Mix;//

extern max_3_index Top3_Mix;

extern Analysis_Result_t output;//频率分析结果

void FFT_Task(Analysis_Result_t *output);
void Send_Wave(Analysis_Result_t *output);
void USART_Task(Analysis_Result_t *output);

#endif // __TASKS_H