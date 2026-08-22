################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/sis/init.c \
../drivers/video/sis/init301.c \
../drivers/video/sis/initextlfb.c \
../drivers/video/sis/sis_accel.c \
../drivers/video/sis/sis_main.c 

OBJS += \
./drivers/video/sis/init.o \
./drivers/video/sis/init301.o \
./drivers/video/sis/initextlfb.o \
./drivers/video/sis/sis_accel.o \
./drivers/video/sis/sis_main.o 

C_DEPS += \
./drivers/video/sis/init.d \
./drivers/video/sis/init301.d \
./drivers/video/sis/initextlfb.d \
./drivers/video/sis/sis_accel.d \
./drivers/video/sis/sis_main.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/sis/%.o: ../drivers/video/sis/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


