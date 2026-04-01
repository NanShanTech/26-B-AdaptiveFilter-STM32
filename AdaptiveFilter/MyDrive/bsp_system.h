/* bsp_system.h */
#ifndef __BSP_SYSTEAM_H
#define __BSP_SYSTEAM_H

/************* 1. 包含底层定义 (核心) ************/
#include "global_types.h"

/************* 2. 系统库 ************************/
#include "main.h"
#include "stm32h7xx_hal.h"
#include "stm32h7xx.h"                  // Device header
#include <math.h>
#include <arm_math.h>
#include <arm_const_structs.h>
#include "stdint.h"
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "extra_ffts.h"
#include "arm_const_structs_extra.h"
#include "arm_common_tables_extra.h"

/************* 3. 外设库 ************************/
#include "gpio.h"
#include "usart.h"
#include "adc.h"
#include "tim.h"
#include "dma.h"

/************* 4. 自定义库 (功能模块) ***********/
#include "delay.h"
#include "AD9910.h"
#include "HMI.h"
#include "sys.h"
#include "Get_Freq.h"
#include "fftana.h"
#include "SignalSeperation.h"
#include "ad9220.h"
#include "Tasks.h" 

#endif