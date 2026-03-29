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

void FFT_Task(Wave_Struct* Wave_ori,Wave_Struct* noise)
{
    Stop_ADC_DMA();
	
    process_data(adc1_buffer, &FFTIN_Mix); 
    fft_process(&FFTIN_Mix, &FFTOUT_Mix);
    regurlize_mag(&FFTOUT_Mix, 1);
    get_max_3(&FFTOUT_Mix, &Top3_Mix);
	
	  Wave_ori -> Freq = FFTIN_Mix.cmp[Top3_Mix.index[0]]*FREQ_RES;//有用信号频率
	
    memset(adc1_buffer, 0, sizeof(adc1_buffer));
}

void Calc_Interference_Energy(Wave_Struct* P_Wave)
{
    uint32_t sum_adc2 = 0;
    for(int i = 0; i < 256; i++) {
        sum_adc2 += adc2_buffer[i];
    }
    float adc2_avg = (float)sum_adc2 / 256.0f;
    
    float Vrms_B = adc2_avg * 3.3f / 65535.0f;
    
    // 根据FFT任务提前识别出的波形类型，由有效值推算峰峰值 (Vpp)
    float Vpp_B = 0.0f;
    
    // 干扰信号B可能会被更换为方波或三角波
    switch(P_Wave->Wave_type) {
        case WAVE_SINE:
            Vpp_B = 2.8284f * Vrms_B; // 正弦波: 2 * sqrt(2)
            break;
        case WAVE_SQUARE:
            Vpp_B = 2.0000f * Vrms_B; // 方波: 2 * 1
            break;
        case WAVE_TRIANGLE:
            Vpp_B = 3.4641f *Vrms_B ; // 三角波: 2 * sqrt(3)
            break;
        default:
            Vpp_B = 2.8284f * Vrms_B; // 默认按正弦波处理
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




   


   
