#include "sample_app_task_scheduler.h"

TimerData_TypeDef TimerData = {0};
uint16_t wAppLastTimerTicks = 0;

/**
 * @brief 获取系统当前 1ms Tick (对接 STM32 HAL)
 */
uint16_t ST_GetTimerTick(void)
{
    return (uint16_t)(HAL_GetTick() & 0xFFFF);
}

/**
 * @brief 计算流逝时间（处理 16 位溢出回零情况）
 */
uint16_t ST_GetElapasedTime(uint16_t wLastTick)
{
    uint16_t ticks = ST_GetTimerTick();
    if (ticks >= wLastTick)
    {
        return (ticks - wLastTick);
    }
    else
    {
        return (uint16_t)(ticks + (65536UL - wLastTick));
    }
}

/**
 * @brief 主调度器：需在 main 的 while(1) 中调用
 */
void SampleAppTaskScheduler(void)
{
    uint16_t wNumTicks = ST_GetElapasedTime(wAppLastTimerTicks);

    if (wNumTicks > 0)
    {
        /* 更新基准时间 */
        wAppLastTimerTicks = (wAppLastTimerTicks + wNumTicks) & 0xFFFF;
        TimerData.w1msCount += wNumTicks;

        /* --- 1ms 任务周期 --- */
        SampleAppTask1ms();

        /* --- 10ms 任务周期 --- */
        if (TimerData.w1msCount >= NUM_1MS_COUNTS_FOR_10MS)
        {
            TimerData.w10msCount += (TimerData.w1msCount / NUM_1MS_COUNTS_FOR_10MS);
            TimerData.w1msCount %= NUM_1MS_COUNTS_FOR_10MS; /* 误差补偿 */
            SampleAppTask10ms();

            /* --- 100ms 任务周期 --- */
            if (TimerData.w10msCount >= NUM_10MS_COUNTS_FOR_100MS)
            {
                TimerData.w100msCount += (TimerData.w10msCount / NUM_10MS_COUNTS_FOR_100MS);
                TimerData.w10msCount %= NUM_10MS_COUNTS_FOR_100MS;
                SampleAppTask100ms();

                /* --- 1sec 任务周期 --- */
                if (TimerData.w100msCount >= NUM_100MS_COUNTS_FOR_1SEC)
                {
                    TimerData.w100msCount %= NUM_100MS_COUNTS_FOR_1SEC;
                    SampleAppTask1sec();
                }
            }
        }
    }
}

/************************** 任务实现区 **************************/
/* 你可以直接在下面写代码，或者在其他文件重写这些函数 */

__attribute__((weak)) void SampleAppTask1ms(void)
{
    /* 1ms 任务代码 */
}

__attribute__((weak)) void SampleAppTask10ms(void)
{
    /* 10ms 任务代码（如：按键扫描、测频刷新） */
}

__attribute__((weak)) void SampleAppTask100ms(void)
{
    /* 100ms 任务代码（如：显示屏刷新、FFT计算） */
}

__attribute__((weak)) void SampleAppTask1sec(void)
{
    /* 1s 任务代码（如：LED 心跳灯） */
}