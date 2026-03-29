#include "tasks.h"
#include "main.h"
#include "FlatTop_Window_8192.h"


void Start_ADC_DMA(void)
{
    HAL_ADC_Start_DMA(&hadc1, (uint32_t*)adc1_buffer, FFT_N);
    HAL_TIM_Base_Start(&htim3);
}

void Stop_ADC_DMA(void)
{
 	HAL_TIM_Base_Stop(&htim3);
  HAL_ADC_Stop_DMA(&hadc1);
}

void FFT_Task(Wave_Struct* P_Wave)
{
    Stop_ADC_DMA();
	
    process_data(adc1_buffer, &FFTIN_Mix); 
    fft_process(&FFTIN_Mix, &FFTOUT_Mix);
    regurlize_mag(&FFTOUT_Mix, 1);
    get_max_3(&FFTOUT_Mix, &Top3_Mix);
	
	  P_Wave -> Freq = FFTIN_Mix.cmp[Top3_Mix.index[0]]*FREQ_RES;//有用信号频率
	
    memset(adc1_buffer, 0, sizeof(adc1_buffer));
}

void Send_Wave(Wave_Struct* P_Wave)
{
	AD9910_FreWrite(P_Wave->Freq);
	AD9910_AmpWrite(P_Wave->Vpp*2.52f);
}

void USART_Task(Wave_Struct* P_Wave) 
{ 

}




   


   
