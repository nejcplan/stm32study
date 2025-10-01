################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LL/LL.c 

OBJS += \
./LL/LL.o 

C_DEPS += \
./LL/LL.d 


# Each subdirectory must supply rules for building sources it contributes
LL/%.o LL/%.su LL/%.cyclo: ../LL/%.c LL/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303xC -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Nejc/Desktop/Delo/learning/stm32study/discovery_board_LL/LL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LL

clean-LL:
	-$(RM) ./LL/LL.cyclo ./LL/LL.d ./LL/LL.o ./LL/LL.su

.PHONY: clean-LL

