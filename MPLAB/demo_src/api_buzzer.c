/**
 * @file api_buzzer.c
 * @author 
 * @brief API Buzzer interface
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
#define BUZZER_LAT TRISCbits.TRISC5

#define BUZZER_OUTPUT 0

#define BUZZER_ON 1
#define BUZZER_OFF 0

/*--------------------------------------------
*Variable
*---------------------------------------------*/

/*--------------------------------------------abc
*Function
*---------------------------------------------*/

/**
 * initialize buzzer
 * @date 2024-02-12
 */
void API_Buzzer_init(void)
{
    /**PWM frequency resister setting*/
    PR2 = 186;

    /**PWM duty cycle setting*/
    CCPR1L = 93; //duty 50% up8bit
    CCP1CONbits.DC1B = 0;   //duty down8bit

    /**RC5 output*/
    BUZZER_LAT = BUZZER_OUTPUT;

    /**CCP1 PWM mode*/
    CCP1CONbits.CCP1M = 0b1100;


    T2CONbits.T2CKPS = 0b10;   //!timer2 prescale 1/16
}

/**
 * buzzer on
 * @date 2024-02-12
 */
void API_Buzzer_on()
{
    T2CONbits.TMR2ON = BUZZER_ON;     //!timer2 on
}

/**
 * buzzer off
 * @date 2024-02-12
 */
void API_Buzzer_off()
{
    T2CONbits.TMR2ON = BUZZER_OFF;     //!timer2 off
}