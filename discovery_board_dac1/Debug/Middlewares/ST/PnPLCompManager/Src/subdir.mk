################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/PnPLCompManager/Src/IPnPLComponent.c \
../Middlewares/ST/PnPLCompManager/Src/PnPLCompManager.c 

OBJS += \
./Middlewares/ST/PnPLCompManager/Src/IPnPLComponent.o \
./Middlewares/ST/PnPLCompManager/Src/PnPLCompManager.o 

C_DEPS += \
./Middlewares/ST/PnPLCompManager/Src/IPnPLComponent.d \
./Middlewares/ST/PnPLCompManager/Src/PnPLCompManager.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/PnPLCompManager/Src/%.o Middlewares/ST/PnPLCompManager/Src/%.su Middlewares/ST/PnPLCompManager/Src/%.cyclo: ../Middlewares/ST/PnPLCompManager/Src/%.c Middlewares/ST/PnPLCompManager/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303xC -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -I../Addons/ai_app -I../Addons/pre_processing -I../Middlewares/ST/staiotcraft_pre_processing/Inc -I../Middlewares/ST/CMSIS/DSP/Include -I../Addons/PnPL/Components -I../Addons/PnPL/AppModel -I../USB_Device/Target -I../USB_Device/App -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Middlewares/ST/PnPLCompManager/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/Third_Party/Parson_DataOoExchange/parson -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-PnPLCompManager-2f-Src

clean-Middlewares-2f-ST-2f-PnPLCompManager-2f-Src:
	-$(RM) ./Middlewares/ST/PnPLCompManager/Src/IPnPLComponent.cyclo ./Middlewares/ST/PnPLCompManager/Src/IPnPLComponent.d ./Middlewares/ST/PnPLCompManager/Src/IPnPLComponent.o ./Middlewares/ST/PnPLCompManager/Src/IPnPLComponent.su ./Middlewares/ST/PnPLCompManager/Src/PnPLCompManager.cyclo ./Middlewares/ST/PnPLCompManager/Src/PnPLCompManager.d ./Middlewares/ST/PnPLCompManager/Src/PnPLCompManager.o ./Middlewares/ST/PnPLCompManager/Src/PnPLCompManager.su

.PHONY: clean-Middlewares-2f-ST-2f-PnPLCompManager-2f-Src

