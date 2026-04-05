#include "bsp_system.h"

void Freq_Analysis_Split(fftdata *freqin, max_3_index *max_3, fftdata *wave_inter, max_3_index *max_3_inter, Analysis_Result_t *result) {
    
    // 1. 从纯干扰信号中获取干扰信号的真实基波位置 (最强峰)
    uint16_t pure_idx_B = max_3_inter->index[0];

    // 2. 获取混合信号中的前两个主峰
    uint16_t idx1 = max_3->index[0];
    uint16_t idx2 = max_3->index[1];

    uint16_t idx_A, idx_B;

    // 3. 【核心剥离逻辑】对比频率下标，精准锁定信号

    if (abs((int32_t)idx1 - (int32_t)pure_idx_B) <= 2) {
        idx_B = idx1;  // idx1 匹配上了干扰源，它是干扰信号 B
        idx_A = idx2;  // 剩下的 idx2 就是有用信号 A
    } 
		else 
			{
        idx_B = idx2;  // idx2 匹配上了干扰源
        idx_A = idx1;  // idx1 是有用信号 A
    }

    result->Original.Freq = idx_A * 5;
    result->Interfere.Freq = idx_B * 5;

    result->Original.Wave_type = WAVE_SINE;
    
    result->Interfere.Wave_type = Rec_wavetype(wave_inter, pure_idx_B);

    float32_t Mag_A = Max_Harmonic_Find(freqin->mag, idx_A, 1); 
    result->Original.Vpp = Mag_A / 2048.0f; // 正弦波直接转换 (8192点)

}




