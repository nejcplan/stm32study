################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/staiotcraft_pre_processing/Src/pre_processing_core.c \
../Middlewares/ST/staiotcraft_pre_processing/Src/sys_functions.c 

OBJS += \
./Middlewares/ST/staiotcraft_pre_processing/Src/pre_processing_core.o \
./Middlewares/ST/staiotcraft_pre_processing/Src/sys_functions.o 

C_DEPS += \
./Middlewares/ST/staiotcraft_pre_processing/Src/pre_processing_core.d \
./Middlewares/ST/staiotcraft_pre_processing/Src/sys_functions.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/staiotcraft_pre_processing/Src/%.o Middlewares/ST/staiotcraft_pre_processing/Src/%.su Middlewares/ST/staiotcraft_pre_processing/Src/%.cyclo: ../Middlewares/ST/staiotcraft_pre_processing/Src/%.c Middlewares/ST/staiotcraft_pre_processing/Src/subdir.mk
	$(error unable to generate command line)

clean: clean-Middlewares-2f-ST-2f-staiotcraft_pre_processing-2f-Src

clean-Middlewares-2f-ST-2f-staiotcraft_pre_processing-2f-Src:
	-$(RM) ./Middlewares/ST/staiotcraft_pre_processing/Src/pre_processing_core.cyclo ./Middlewares/ST/staiotcraft_pre_processing/Src/pre_processing_core.d ./Middlewares/ST/staiotcraft_pre_processing/Src/pre_processing_core.o ./Middlewares/ST/staiotcraft_pre_processing/Src/pre_processing_core.su ./Middlewares/ST/staiotcraft_pre_processing/Src/sys_functions.cyclo ./Middlewares/ST/staiotcraft_pre_processing/Src/sys_functions.d ./Middlewares/ST/staiotcraft_pre_processing/Src/sys_functions.o ./Middlewares/ST/staiotcraft_pre_processing/Src/sys_functions.su

.PHONY: clean-Middlewares-2f-ST-2f-staiotcraft_pre_processing-2f-Src

