/*
 * LL.c
 *
 *  Created on: Oct 1, 2025
 *      Author: Nejc
 */

#include "main.h"

#include "LL.h"

void ll_init() {
	LL_DBG("Init LL\n");
}


void ll_gpioe_led_pe9_init(void)
{
    // 1) omogoči uro za GPIOE
    RCC->AHBENR |= RCC_AHBENR_GPIOEEN;

    // 2) PE9 = Alternate Function (10b v MODER)
    GPIOE->MODER &= ~(0x3u << (9*2));
    GPIOE->MODER |=  (0x2u << (9*2));   // AF

    // 3) Izberi AF2 za PE9 (TIM1_CH1 je AF2 na F303)
    //    PE9 je v AFRH (pini 8..15), polje za pin9 so biti [7:4]
    GPIOE->AFR[1] &= ~(0xFu << 4);
    GPIOE->AFR[1] |=  (0x2u << 4);      // AF2

    // Opcijsko: push-pull, brez pull-up/down, nizka hitrost (LED ne rabi več)
    GPIOE->OTYPER &= ~(1u << 9);
    GPIOE->PUPDR  &= ~(0x3u << (9*2));
    GPIOE->OSPEEDR &= ~(0x3u << (9*2));
}

void ll_gpioe_led_pe9_to_gpio_out(void)
{
    RCC->AHBENR |= RCC_AHBENR_GPIOEEN;
    GPIOE->MODER &= ~(0x3u << (9*2));
    GPIOE->MODER |=  (0x1u << (9*2));   // Output
    GPIOE->OTYPER &= ~(1u << 9);
    GPIOE->PUPDR  &= ~(0x3u << (9*2));
}

// Izbira frekvence (48 MHz ura timerja):
// f_PWM = f_TIM / ((PSC+1)*(ARR+1))
// Tukaj: PSC=59999, ARR=799  → f_PWM = 48e6 / (60000*800) = 1 Hz
#define TIM1_PSC   (59999u)
#define TIM1_ARR   (799u)
#define TIM1_CCR1  ((TIM1_ARR+1)/2)  // ~50% duty = 400

void ll_tim1_ch1_pwm_init_1Hz(void)
{
    // 1) Omogoči uro za TIM1 (APB2) in za SYSCFG/AF če bi jo rabil
    RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;

    // 2) Uro za GPIOE in PE9 AF2 (TIM1_CH1) nastavimo v ll_gpioe_led_pe9_init()
    //    (Kliči to funkcijo v main.c pred inicializacijo timerja.)

    // 3) Konfiguriraj bazni števec
    TIM1->PSC = TIM1_PSC;
    TIM1->ARR = TIM1_ARR;

    // 4) PWM na CH1: nastavi način OC1M = 110 (PWM mode 1), omogoči preload
    // CCMR1: OC1M biti [6:4], OC1PE bit [3]
    TIM1->CCMR1 &= ~(TIM_CCMR1_OC1M | TIM_CCMR1_OC1PE);
    TIM1->CCMR1 |=  (6u << TIM_CCMR1_OC1M_Pos) | TIM_CCMR1_OC1PE;

    // 5) Začetna širina pulza (duty)
    TIM1->CCR1 = TIM1_CCR1;

    // 6) Omogoči izhod CH1
    TIM1->CCER &= ~TIM_CCER_CC1P;  // aktivno visoko
    TIM1->CCER |=  TIM_CCER_CC1E;

    // 7) Ker je TIM1 “advanced timer”, mora biti omogočen še glavni izhod MOE v BDTR
    TIM1->BDTR |= TIM_BDTR_MOE;

    // 8) Omogoči auto-reload preload (ARPE) in zaženi števec
    TIM1->CR1 |= TIM_CR1_ARPE;
    TIM1->EGR |= TIM_EGR_UG;   // posodobi shadow registre (PSC/ARR/CCR)
}

void ll_tim1_ch1_pwm_start(void)
{
    TIM1->CR1 |= TIM_CR1_CEN;  // counter enable
}

void ll_tim1_ch1_set_ccr1(uint32_t ccr)
{
    if (ccr > TIM1->ARR) ccr = TIM1->ARR;
    TIM1->CCR1 = ccr;
    TIM1->EGR |= TIM_EGR_UG;   // posodobi
}
