#ifndef __AD9220_H
#define __AD9220_H

#include "global_types.h"
#include "fftana.h"

void AD9220_Start_DMA(uint16_t *adc_buffer, uint32_t buffer_length);
void AD9220_Stop_DMA(void);
void process_data_ad9220(const uint16_t *data_ori, fftin *data_processed);

void AD9220_ConvCpltCallback(void);

#endif