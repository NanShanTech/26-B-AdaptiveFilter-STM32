
#include "SignalSeperation.h"
#include "main.h"


void Freq_Analysis(fftdata *freqin, max_3_index *max_3, fftanadata *output) {
   
    uint16_t idx1 = max_3->index[0];
    uint16_t idx2 = max_3->index[1];
    
    float32_t mag_1 = freqin->mag[idx1];
    float32_t mag_2 = freqin->mag[idx2];
    
    float32_t freq_1 = (float32_t)idx1 * ((float32_t)freq_s / (float32_t)FFT_N);
    float32_t freq_2 = (float32_t)idx2 * ((float32_t)freq_s / (float32_t)FFT_N);


    float32_t sum_sq = 0.0f;
    for (uint16_t i = 1; i < FFT_N_2; i++) { 
        sum_sq += (freqin->mag[i] * freqin->mag[i]);
    }
    output->total_rms = sqrtf(sum_sq / 2.0f);

    //提取原始信号频率与干扰信号波形
    float32_t mag1_3rd = 0.0f;
    float32_t mag2_3rd = 0.0f;
    
    // 在频域中搜索 idx1 的三次谐波 
    uint16_t target1 = idx1 * 3;
    if (target1 < FFT_N_2) {
        for (int offset = -2; offset <= 2; offset++) {
            uint16_t search_idx = target1 + offset;
            if (search_idx < FFT_N_2 && freqin->mag[search_idx] > mag1_3rd) {
                mag1_3rd = freqin->mag[search_idx];
            }
        }
    }
    
    // 在频域中搜索 idx2 的三次谐波
    uint16_t target2 = idx2 * 3;
    if (target2 < FFT_N_2) {
        for (int offset = -2; offset <= 2; offset++) {
            uint16_t search_idx = target2 + offset;
            if (search_idx < FFT_N_2 && freqin->mag[search_idx] > mag2_3rd) {
                mag2_3rd = freqin->mag[search_idx];
            }
        }
    }
    
    // 计算三次谐波与基波的幅度比值
    float32_t ratio1 = (mag_1 > 0) ? (mag1_3rd / mag_1) : 0.0f;
    float32_t ratio2 = (mag_2 > 0) ? (mag2_3rd / mag_2) : 0.0f;
    
    // 逻辑判定：有用信号A严格为正弦波(无谐波)，干扰信号B可能有谐波
    // 方波的三次谐波比值约为 33% (0.33)，三角波约为 11% (0.11)
    
    if (ratio1 > 0.08f) { 
        // 峰值 1 有明显谐波，说明 1 是干扰信号 B
        output->freq_A = findnearfreq(freq_2);         // 峰值 2 则是原始信号 A
        output->waveform_B = (ratio1 > 0.25f) ? 1 : 2; // >25% 判定为方波，否则为三角波
    } 
    else if (ratio2 > 0.08f) { 
        // 峰值 2 有明显谐波，说明 2 是干扰信号 B
        output->freq_A = findnearfreq(freq_1);         // 峰值 1 则是原始信号 A
        output->waveform_B = (ratio2 > 0.25f) ? 1 : 2; 
    } 
    else {
        // 两者都没有明显谐波，说明 A 和 B 都是正弦波
        output->freq_A = findnearfreq(freq_2);  // 默认幅值第二大的(idx2)为原始信号 A
        output->waveform_B = 0;                 // 干扰信号 B 也是正弦波
    }
}

float32_t Signal_A_Amplitude(float32_t rms_mix, float32_t rms_B) {
    // 1. 计算信号 A 的能量 (RMS的平方)
    float32_t rms_A_sq = (rms_mix * rms_mix) - (rms_B * rms_B);
    
    if (rms_A_sq <= 1e-12f) {
        return 0.0f; 
    }
    
    // 2. 开方得到信号 A 的交流有效值
    float32_t rms_A = sqrtf(rms_A_sq);
    
    float32_t amp_A = 1.41421356f * rms_A; 
    
    return amp_A;
}