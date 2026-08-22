################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/xgifb/XGI_main_26.c \
../drivers/staging/xgifb/vb_init.c \
../drivers/staging/xgifb/vb_setmode.c \
../drivers/staging/xgifb/vb_util.c 

OBJS += \
./drivers/staging/xgifb/XGI_main_26.o \
./drivers/staging/xgifb/vb_init.o \
./drivers/staging/xgifb/vb_setmode.o \
./drivers/staging/xgifb/vb_util.o 

C_DEPS += \
./drivers/staging/xgifb/XGI_main_26.d \
./drivers/staging/xgifb/vb_init.d \
./drivers/staging/xgifb/vb_setmode.d \
./drivers/staging/xgifb/vb_util.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/xgifb/%.o: ../drivers/staging/xgifb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


