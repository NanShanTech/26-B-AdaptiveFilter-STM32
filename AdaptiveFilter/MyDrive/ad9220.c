
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
    // 1. 停止之前的传输，防止状态错误
    HAL_TIM_Base_Stop(&htim2);
    HAL_DMA_Abort(&hdma_tim2_up); 
    
    // 2. 配置回调
    hdma_tim2_up.XferCpltCallback = AD9220_DMA_CpltCallback;

    // 3. 启动 DMA (从 GPIO 读取数据)
    // 确保使用 _IT 版本以触发回调
    HAL_DMA_Start_IT(&hdma_tim2_up, (uint32_t)&GPIOC->IDR, (uint32_t)adc_buffer, buffer_length);
    
    // 4. 开启定时器 DMA 请求
    __HAL_TIM_ENABLE_DMA(&htim2, TIM_DMA_UPDATE);
    
    // 5. 启动时钟信号输出 (PWM 模式)
    // 这步是确保外部 AD9220 拿到转换时钟的关键
    HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1); 
}

/* 停止 DMA 采集 */
void AD9220_Stop_DMA(void) 
{
    __HAL_TIM_DISABLE(&htim2); // 停止时钟
    __HAL_TIM_DISABLE_DMA(&htim2, TIM_DMA_UPDATE);
    HAL_DMA_Abort(&hdma_tim2_up);
}

/* 数据处理函数 */
void process_data_decay(const uint16_t *data_ori, fftin *data_processed) 
{
	
    float32_t dc_offset = 0.0f;
    float32_t voltage_scale = 3.3f / 4095.0f*2.0f;
    
    float32_t sum = 0;
    for (uint32_t i = 0; i < FFT_N; i++) {
        sum += (float32_t)data_ori[i];
    }
    dc_offset = sum / (float32_t)FFT_N;
    for (uint32_t i = 0; i < FFT_N; i++) {
        data_processed->cmp[2 * i] = ((float32_t)data_ori[i] - dc_offset) * voltage_scale;
        data_processed->cmp[2 * i + 1] = 0.0f;
    }
}



float32_t Get_Total_RMS_AD9220(uint16_t *pData, uint16_t len) {
    if (len == 0) return 0.0f;

    float32_t sum_sq = 0.0f;
    float32_t voltage_scale = 10.0f / 4096.0f; 
    float32_t voltage_scale_sq = voltage_scale * voltage_scale; 

    for (uint16_t i = 0; i < len; i++) {

        float32_t centered_code = (float32_t)(pData[i + 4] & 0x0FFF) - 2048.0f;
        
        sum_sq += centered_code * centered_code;
    }
    return sqrtf((sum_sq * voltage_scale_sq) / (float32_t)len);
}