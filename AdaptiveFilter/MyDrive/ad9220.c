
#include "bsp_system.h"

extern DMA_HandleTypeDef hdma_tim2_up;
extern TIM_HandleTypeDef htim2;


static void AD9220_DMA_CpltCallback(DMA_HandleTypeDef *hdma) 
{
    if (hdma->Instance == hdma_tim2_up.Instance) 
    {
        AD9220_Stop_DMA(); 
        
        /* 呼叫应用层的回调函数，交由 main.c 去执行具体逻辑 */
        AD9220_ConvCpltCallback();
    }
}

/*
 * 弱定义应用层回调函数：
 * 如果 main.c 中没有写 AD9220_ConvCpltCallback 函数，编译器就会执行这个空函数，不会报错。
 * 如果 main.c 中写了，编译器就会优先执行 main.c 里的版本。
 */
__weak void AD9220_ConvCpltCallback(void) 
{
    /* 默认不执行任何操作 */
}

/* 启动 DMA 采集 */
void AD9220_Start_DMA(uint16_t *adc_buffer, uint32_t buffer_length) 
{
    // 1. 确保 DMA 停止并清除标志位
    HAL_DMA_Abort(&hdma_tim2_up); 
    
    // 2. 配置 DMA 完成回调函数
    hdma_tim2_up.XferCpltCallback = AD9220_DMA_CpltCallback;

    // 3. 启动 DMA（注意：这里必须改成 _IT，否则不会进中断！）
    HAL_DMA_Start_IT(&hdma_tim2_up, (uint32_t)&GPIOC->IDR, (uint32_t)adc_buffer, buffer_length);
    
    // 4. 开启定时器 DMA 请求
    __HAL_TIM_ENABLE_DMA(&htim2, TIM_DMA_UPDATE);
    
    // 5. 开启定时器（产生脉冲驱动 AD9220 转换）
    __HAL_TIM_ENABLE(&htim2);
}

/* 停止 DMA 采集 */
void AD9220_Stop_DMA(void) 
{
    __HAL_TIM_DISABLE(&htim2); // 停止时钟
    __HAL_TIM_DISABLE_DMA(&htim2, TIM_DMA_UPDATE);
    HAL_DMA_Abort(&hdma_tim2_up);
}

/* 数据处理函数 */
void process_data_ad9220(const uint16_t *data_ori, fftin *data_processed) 
{
    const float32_t voltage_scale = 10.0f / 4095.0f;
    float32_t sum = 0.0f;
    float32_t dc_offset_raw = 0.0f;
    
    for (uint32_t i = 0; i < FFT_N; i++) {
        sum += (float32_t)(data_ori[i + 4] & 0x0FFF); 
    }
    dc_offset_raw = sum / (float32_t)FFT_N;

    for (uint32_t i = 0; i < FFT_N; i++) {
        float32_t raw_centered = (float32_t)(data_ori[i + 4] & 0x0FFF) - dc_offset_raw;
        data_processed->cmp[2 * i] = raw_centered;    
        data_processed->cmp[2 * i + 1] = 0.0f; 
    }
}