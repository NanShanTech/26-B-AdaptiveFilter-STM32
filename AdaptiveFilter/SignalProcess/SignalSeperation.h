//
// Created by 47306 on 2026/3/11.
//

#ifndef H743_HAL_FREQANA_H
#define H743_HAL_FREQANA_H
#include "bsp_system.h"
#include "fftana.h"

typedef struct {
    float32_t freq_A;      // 提取出的有用信号(原始信号)频率
    uint8_t   waveform_B;  // 干扰信号波形类型: 0=正弦波, 1=方波, 2=三角波
    float32_t total_rms;   // 采集波形的总RMS有效值
} fftanadata;

void Freq_Analysis(fftdata *freqin, max_3_index *max_3, fftanadata *output);

float32_t Signal_A_Amplitude(float32_t rms_mix, float32_t rms_B);

#endif //H743_HAL_FREQANA_H