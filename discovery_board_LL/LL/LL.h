/*
 * LL.h
 *
 *  Created on: Oct 1, 2025
 *      Author: Nejc
 */

#ifndef LL_H_
#define LL_H_

#ifdef DEBUG
#include <stdio.h>
#define LL_DBG(...) printf(__VA_ARGS__);
#endif


void ll_gpioe_led_pe9_init(void);     // PE9 kot AF2 (TIM1_CH1)
void ll_gpioe_led_pe9_to_gpio_out(void); // PE9 kot navaden izhod (če želiš “GPIO toggle”)

// Inicializira TIM1 za PWM na CH1 (PE9) pri 1 Hz, ~50% duty.
// Pričakujemo SYSCLK=48 MHz, PCLK2=48 MHz → f_TIM1 = 48 MHz.
void ll_tim1_ch1_pwm_init_1Hz(void);

// Zaženi PWM (omogoči izhod CH1 in glavno izhodno dovoljenje MOE)
void ll_tim1_ch1_pwm_start(void);

// Po želji spremeni duty (0..ARR)
void ll_tim1_ch1_set_ccr1(uint32_t ccr);


#endif /* LL_H_ */
