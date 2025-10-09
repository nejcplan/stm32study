################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/Parson_DataOoExchange/parson/parson.c 

OBJS += \
./Middlewares/Third_Party/Parson_DataOoExchange/parson/parson.o 

C_DEPS += \
./Middlewares/Third_Party/Parson_DataOoExchange/parson/parson.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/Parson_DataOoExchange/parson/%.o Middlewares/Third_Party/Parson_DataOoExchange/parson/%.su Middlewares/Third_Party/Parson_DataOoExchange/parson/%.cyclo: ../Middlewares/Third_Party/Parson_DataOoExchange/parson/%.c Middlewares/Third_Party/Parson_DataOoExchange/parson/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303xC -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -I../Addons/ai_app -I../Addons/pre_processing -I../Middlewares/ST/staiotcraft_pre_processing/Inc -I../Middlewares/ST/CMSIS/DSP/Include -I../Addons/PnPL/Components -I../Addons/PnPL/AppModel -I../USB_Device/Target -I../USB_Device/App -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Middlewares/ST/PnPLCompManager/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/Third_Party/Parson_DataOoExchange/parson -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-Parson_DataOoExchange-2f-parson

clean-Middlewares-2f-Third_Party-2f-Parson_DataOoExchange-2f-parson:
	-$(RM) ./Middlewares/Third_Party/Parson_DataOoExchange/parson/parson.cyclo ./Middlewares/Third_Party/Parson_DataOoExchange/parson/parson.d ./Middlewares/Third_Party/Parson_DataOoExchange/parson/parson.o ./Middlewares/Third_Party/Parson_DataOoExchange/parson/parson.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-Parson_DataOoExchange-2f-parson

