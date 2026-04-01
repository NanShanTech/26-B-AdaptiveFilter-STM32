#include "bsp_system.h"

void Freq_Analysis_Split(fftdata *freqin, max_3_index *max_3, float32_t rms_b, Analysis_Result_t *result) {

    uint16_t idx1 = max_3->index[0];
    uint16_t idx2 = max_3->index[1];
    
    // 1. 基础波形识别
    WaveType_t type1 = Rec_wavetype(freqin, idx1);
    WaveType_t type2 = Rec_wavetype(freqin, idx2);

    uint16_t idx_A, idx_B;

    if (type1 != WAVE_SINE) {
        idx_B = idx1;
        idx_A = idx2;
        result->Interfere.Wave_type = type1;
        result->Original.Wave_type = WAVE_SINE;
    } 
    else if (type2 != WAVE_SINE) 
    {
        idx_B = idx2; idx_A = idx1;
        result->Interfere.Wave_type = type2;
        result->Original.Wave_type = WAVE_SINE;
    } 
    else
     {
        if (freqin->mag[idx1] > freqin->mag[idx2]) {
            idx_B = idx1; idx_A = idx2;
        } else {
            idx_B = idx2; idx_A = idx1;
        }
        result->Interfere.Wave_type = WAVE_SINE;
        result->Original.Wave_type = WAVE_SINE;
    }

    result->Original.Freq = findnearfreq((float32_t)idx_A * FREQ_RES);
    result->Interfere.Freq = findnearfreq((float32_t)idx_B * FREQ_RES);

    // 直接采用硬件采集的干扰信号 RMS
    float32_t rms_B = rms_b; 

    // 利用总 RMS (算法计算) 和 干扰信号 RMS (硬件采集) 能量剥离出原始信号 RMS
    float32_t total_rms_sq = result->Total_RMS * result->Total_RMS;
    float32_t rms_b_sq = rms_B * rms_B;
    
    float32_t rms_A_sq = total_rms_sq - rms_b_sq;
    float32_t rms_A = (rms_A_sq > 0) ? sqrtf(rms_A_sq) : 0.0f;

    // 5. 填充结果 (转换为 Vpp)
    result->Original.Vpp = rms_A * 2.828427f; // 正弦波 Vpp = RMS * 2 * sqrt(2)
    
    // 干扰信号 B 的 Vpp 转换 根据波形类型
    if (result->Interfere.Wave_type == WAVE_SQUARE) {
        result->Interfere.Vpp = rms_B * 2.0f; 
    } else if (result->Interfere.Wave_type == WAVE_TRIANGLE) {
        result->Interfere.Vpp = rms_B * 3.464101f; 
    } else {
        result->Interfere.Vpp = rms_B * 2.828427f;
    }
}




float32_t Get_Total_RMS(uint16_t *pData, uint16_t len) {
    if (len == 0) return 0.0f;

    float32_t sum_sq = 0.0f;
    float32_t voltage_scale = 3.3f / 4095.0f;
    float32_t voltage_scale_sq = voltage_scale * voltage_scale; 
    for (uint16_t i = 0; i < len; i++) {
        sum_sq += (float32_t)pData[i+4] * (float32_t)pData[i+4];
    }
    return sqrtf((sum_sq * voltage_scale_sq) / (float32_t)len);
}