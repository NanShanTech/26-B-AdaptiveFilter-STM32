#include "bsp_system.h"

void FFT_Task(Analysis_Result_t *output)
{
    process_data_ad9220(adc1_buffer, &FFTIN_Mix); 
    output->Total_RMS = Get_Total_RMS(adc1_buffer, FFT_N+4);

    fft_process(&FFTIN_Mix, &FFTOUT_Mix);   // 执行 FFT

    regurlize_mag(&FFTOUT_Mix, 1); // 计算幅度谱并进行归一化处理

    get_max_3(&FFTOUT_Mix, &Top3_Mix);      // 寻找前三个最大频点

    // 硬件数据获取 (AD637)
    float32_t rms_b_hardware = Get_AC_RMS(adc2_buffer, 128); 

    Freq_Analysis_Split(&FFTOUT_Mix, &Top3_Mix, rms_b_hardware, output); // 频率分析与信号剥离

    // 清理与重启 
    memset(adc1_buffer, 0, sizeof(adc1_buffer));
}



void Send_Wave(Analysis_Result_t *output) 
{
   AD9910_FreWrite(output->Original.Freq);
   AD9910_AmpWrite(output->Original.Vpp);
}

void USART_Task(Analysis_Result_t *output) 
{ 

}





   


   
