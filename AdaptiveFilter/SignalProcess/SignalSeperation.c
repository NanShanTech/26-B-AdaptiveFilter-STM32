#include "bsp_system.h"

void Freq_Analysis_Split(fftdata *freqin, max_3_index *max_3, float32_t rms_b, Analysis_Result_t *result) {

    uint16_t idx1 = max_3->index[0];
    uint16_t idx2 = max_3->index[1];
    
    volatile WaveType_t type1 = Rec_wavetype(freqin, idx1);
    volatile WaveType_t type2 = Rec_wavetype(freqin, idx2);

    uint16_t idx_A, idx_B;

    if (type1 != WAVE_SINE) {
        idx_B = idx1; idx_A = idx2;
        result->Interfere.Wave_type = type1;
        result->Original.Wave_type = WAVE_SINE;
    } 
    else if (type2 != WAVE_SINE) {
        idx_B = idx2; idx_A = idx1;
        result->Interfere.Wave_type = type2;
        result->Original.Wave_type = WAVE_SINE;
    } 
    else {
        
        if (freqin->mag[idx1] > freqin->mag[idx2]) {
            idx_B = idx1; idx_A = idx2;
        } else {
            idx_B = idx2; idx_A = idx1;
        }
        result->Interfere.Wave_type = WAVE_SINE;
        result->Original.Wave_type = WAVE_SINE;
    }


    result->Original.Freq = idx_A * 5;
		
    result->Interfere.Freq = idx_B * 5;

    float32_t Mag_A = 2*Max_Harmonic_Find(freqin->mag, idx_A, 1); 
    
//    result->Original.Vpp = Mag_A / 2048.0f;

    float32_t rms_B = rms_b; 

    if (result->Interfere.Wave_type == WAVE_SQUARE) {
        result->Interfere.Vpp = rms_B * 2.0f; 
    } else if (result->Interfere.Wave_type == WAVE_TRIANGLE) {
        result->Interfere.Vpp = rms_B * 3.464101f; 
    } else {
        result->Interfere.Vpp = rms_B * 2.828427f;
    }
}




