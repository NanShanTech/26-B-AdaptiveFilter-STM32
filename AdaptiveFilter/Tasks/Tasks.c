#include "HMI.h"
#include "bsp_system.h"
#include "fftana.h"

void FFT_Task(Analysis_Result_t *output)
{
    // 1. 数据预处理：将 ADC 原始数据转为输入 FFT 的复数数组
    process_data_decay(adc1_buffer, &FFTIN_Mix); //混合信号过了衰减器，需要放大
    process_data(adc2_buffer, &FFTIN_Inter);
    output->Interfere.Vpp = Find_Vpp(&FFTIN_Inter);
    // 2. 执行 FFT 运算
    fft_process(&FFTIN_Mix, &FFTOUT_Mix);   
    fft_process(&FFTIN_Inter, &FFTOUT_Inter);
	
    regurlize_mag(&FFTOUT_Mix,1);
    // 3. 寻找频谱中的前三个最大峰值频点
    get_max_3(&FFTOUT_Mix, &Top3_Mix);      
    get_max_3(&FFTOUT_Inter, &Top3_Inter);

    // 4. 频率分析与信号剥离 (传入混合信号和纯干扰信号的 FFT 结果)
    Freq_Analysis_Split(&FFTOUT_Mix, &Top3_Mix, &FFTOUT_Inter, &Top3_Inter, output); 

    // 5. 清理与重启缓冲区，准备下一轮采样 
    memset(adc1_buffer, 0, sizeof(adc1_buffer));
    memset(adc2_buffer, 0, sizeof(adc2_buffer));
}

void Send_Wave(Analysis_Result_t *output) 
{
   AD9910_FreWrite(output->Original.Freq);
   AD9910_AmpWrite(output->Original.Vpp*10000);
}


void USART_Task(Analysis_Result_t *output) 
{ 
    // 使用动态分配内存，确保与 USART_Task_One 风格一致
    char* Char_temp = malloc(sizeof(char) * 64); 
    if (Char_temp == NULL) {
        return;
    }   
    
    float64_t Freq_temp = 0.0f;   

    // 1. 发送 Original 峰峰值 (t7)
    sprintf(Char_temp, "%.2fV", output->Original.Vpp);
    HMI_send_string("t7.txt", Char_temp);
    memset(Char_temp, 0, 64); 

    // 2. 发送 Interfere 峰峰值 (t8)
    sprintf(Char_temp, "%.2fV", output->Interfere.Vpp);
    HMI_send_string("t8.txt", Char_temp);
    memset(Char_temp, 0, 64); 

    if (output->Original.Freq < 1000) {
        sprintf(Char_temp, "%.3f Hz", (float64_t)output->Original.Freq);
    } else if (output->Original.Freq < 1000000) {
        sprintf(Char_temp, "%.4f KHz", (float64_t)output->Original.Freq / 1000.0f);
    } else {
        sprintf(Char_temp, "%.2f MHz", (float64_t)output->Original.Freq / 1000000.0f);
    }
    HMI_send_string("t11.txt", Char_temp);
    memset(Char_temp, 0, 64);   

    if (output->Interfere.Freq < 1000) {
        sprintf(Char_temp, "%.3f Hz", (float64_t)output->Interfere.Freq);
    } else if (output->Interfere.Freq < 1000000) {
        sprintf(Char_temp, "%.4f KHz", (float64_t)output->Interfere.Freq / 1000.0f);
    } else {
        sprintf(Char_temp, "%.2f MHz", (float64_t)output->Interfere.Freq / 1000000.0f);
    }
    HMI_send_string("t12.txt", Char_temp);
    memset(Char_temp, 0, 64);

    char* wave_str = (output->Interfere.Wave_type == WAVE_SINE) ? "Sine" :
                     (output->Interfere.Wave_type == WAVE_SQUARE) ? "Square" :
                     (output->Interfere.Wave_type == WAVE_TRIANGLE) ? "Triangle" : "Unknown";
    HMI_send_string("t10.txt", wave_str);


    sprintf(Char_temp, "%d Hz", (int)(output->Original.Freq - output->Interfere.Freq));
    HMI_send_string("t13.txt", Char_temp);
    memset(Char_temp, 0, 64); 
        

    free(Char_temp);
    Char_temp = NULL; 
}





   


   
