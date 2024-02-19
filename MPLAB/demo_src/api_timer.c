/**
 * @file api_timer.c
 * @author 
 * @brief API Timer interface
 * @version 001
 * @date 2024-02-09
 * 
 * @copyright Copyright (c) 2024
 * 
 */


/*--------------------------------------------
*Include
*---------------------------------------------*/
#include "prj.h"

/*--------------------------------------------
*Definition
*---------------------------------------------*/
#define DEBUG_10MSEC
//#define DEBUG_1SEC

/*--------------------------------------------
*Variable
*---------------------------------------------*/

/*--------------------------------------------
*Function
*---------------------------------------------*/
/*static function*/
static void Timer1_reset(void);


/**
 * initialize timer1
 * @date 2024-02-09
 * 
 */
void API_Timer1_init(void)
{
    /**Timer1 setting*/
    T1CON = 0b00110001; //!prescale:1/8
    Timer1_reset();

    /**Timer1 interrupt*/
    PIE1bits.TMR1IE = 1;
    INTCONbits.PEIE = 1;    //!Peripheral interrupt enable
    INTCONbits.GIE = 1;     //!global interrupt enable
}

/**
 * timer1 start
 * @date 2024-02-09
 * 
 */
void API_Timer1_start(void)
{
    T1CONbits.TMR1ON = 1;
}

/**
 * timer1 interrupt
 * @date 2024-02-09
 * 
 */
void API_Timer1_interrupt(void)
{
    if(PIR1bits.TMR1IF)
    {
        //!timer1 reset
        Timer1_reset();

        g_tsys.system_time++;

        #ifdef DEBUG_10MSEC
        LED_Toggle(LED_D4);
        #endif
        
        #ifdef DEBUG_1SEC
        if(g_tsys.system_time >= 1000)
        {
            LED_Toggle(LED_D4);
        }
        #endif

        //!interrupt flag clear
        PIR1bits.TMR1IF = 0;

    }
}

/**
 * timer1 reset
 * @date 2024-02-09
 * 
 */
static void Timer1_reset(void)
{
    TMR1L = 0x69;//89 24
    TMR1H = 0xc5;//fe fa
}
