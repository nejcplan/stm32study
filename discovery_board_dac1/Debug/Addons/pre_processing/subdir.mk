################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Addons/pre_processing/pre_processing_app.c 

OBJS += \
./Addons/pre_processing/pre_processing_app.o 

C_DEPS += \
./Addons/pre_processing/pre_processing_app.d 


# Each subdirectory must supply rules for building sources it contributes
Addons/pre_processing/%.o Addons/pre_processing/%.su Addons/pre_processing/%.cyclo: ../Addons/pre_processing/%.c Addons/pre_processing/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F303xC -c -I../Core/Inc -IMiddlewares/Third_Party/ARM/CMSIS/DSP/Include -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -I../Addons/ai_app -I../Addons/pre_processing -I../Middlewares/ST/staiotcraft_pre_processing/Inc -I../Middlewares/ST/CMSIS/DSP/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Addons-2f-pre_processing

clean-Addons-2f-pre_processing:
	-$(RM) ./Addons/pre_processing/pre_processing_app.cyclo ./Addons/pre_processing/pre_processing_app.d ./Addons/pre_processing/pre_processing_app.o ./Addons/pre_processing/pre_processing_app.su

.PHONY: clean-Addons-2f-pre_processing

