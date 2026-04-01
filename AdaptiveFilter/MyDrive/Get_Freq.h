#ifndef __FREQUENCY_MEASURE_H
#define __FREQUENCY_MEASURE_H

#include "global_types.h"




void FreqMeasure_Init(void);

void FreqMeasure_Process(float *pFreq);

void FreqMeasure_Count_Handler(uint16_t GPIO_Pin);

#endif