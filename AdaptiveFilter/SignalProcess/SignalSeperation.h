

#ifndef H743_HAL_FREQANA_H
#define H743_HAL_FREQANA_H

#include "global_types.h"
#include "fftana.h"

void Freq_Analysis_Split(fftdata *freqin, max_3_index *max_3, float32_t rms_b, Analysis_Result_t *result) ;

float32_t Signal_A_Amplitude(float32_t rms_mix, float32_t rms_B);

float32_t Get_Total_RMS(uint16_t *pData, uint16_t len);//不去直流，直接计算混合信号的 RMS

#endif //H743_HAL_FREQANA_H