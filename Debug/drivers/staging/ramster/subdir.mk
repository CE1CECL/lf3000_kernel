################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/ramster/r2net.c \
../drivers/staging/ramster/tmem.c \
../drivers/staging/ramster/xvmalloc.c \
../drivers/staging/ramster/zcache-main.c 

OBJS += \
./drivers/staging/ramster/r2net.o \
./drivers/staging/ramster/tmem.o \
./drivers/staging/ramster/xvmalloc.o \
./drivers/staging/ramster/zcache-main.o 

C_DEPS += \
./drivers/staging/ramster/r2net.d \
./drivers/staging/ramster/tmem.d \
./drivers/staging/ramster/xvmalloc.d \
./drivers/staging/ramster/zcache-main.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/ramster/%.o: ../drivers/staging/ramster/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


