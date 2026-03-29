#ifndef SAMPLE_APP_TASK_SCHEDULER_H
#define SAMPLE_APP_TASK_SCHEDULER_H

#include "main.h"  /* 必须包含，用于获取 HAL_GetTick 和硬件定义 */

/************************** 时间片阈值配置 **************************/
#define NUM_1MS_COUNTS_FOR_10MS    (10U)
#define NUM_10MS_COUNTS_FOR_100MS  (10U)
#define NUM_100MS_COUNTS_FOR_1SEC  (10U)
#define NUM_1SEC_COUNTS_FOR_1MIN   (60U)

/************************** 调度器数据结构 **************************/
typedef struct
{
    uint16_t w1msCount;    /* 1ms 累计器 */
    uint16_t w10msCount;   /* 10ms 累计器 */
    uint16_t w100msCount;  /* 100ms 累计器 */
    uint16_t w1secCount;   /* 1秒 累计器 */
} TimerData_TypeDef;

/* 全局变量声明 */
extern TimerData_TypeDef TimerData;
extern uint16_t wAppLastTimerTicks;

/* 调度核心函数 */
void SampleAppTaskScheduler(void);
uint16_t ST_GetTimerTick(void);
uint16_t ST_GetElapasedTime(uint16_t wLastTick);

/* 任务钩子函数（在 .c 中实现） */
void SampleAppTask1ms(void);
void SampleAppTask10ms(void);
void SampleAppTask100ms(void);
void SampleAppTask1sec(void);

#endif /* SAMPLE_APP_TASK_SCHEDULER_H */