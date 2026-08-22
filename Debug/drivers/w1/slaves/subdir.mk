################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/w1/slaves/w1_bq27000.c \
../drivers/w1/slaves/w1_ds2408.c \
../drivers/w1/slaves/w1_ds2423.c \
../drivers/w1/slaves/w1_ds2431.c \
../drivers/w1/slaves/w1_ds2433.c \
../drivers/w1/slaves/w1_ds2760.c \
../drivers/w1/slaves/w1_ds2780.c \
../drivers/w1/slaves/w1_ds2781.c \
../drivers/w1/slaves/w1_ds2784.c \
../drivers/w1/slaves/w1_smem.c \
../drivers/w1/slaves/w1_therm.c 

OBJS += \
./drivers/w1/slaves/w1_bq27000.o \
./drivers/w1/slaves/w1_ds2408.o \
./drivers/w1/slaves/w1_ds2423.o \
./drivers/w1/slaves/w1_ds2431.o \
./drivers/w1/slaves/w1_ds2433.o \
./drivers/w1/slaves/w1_ds2760.o \
./drivers/w1/slaves/w1_ds2780.o \
./drivers/w1/slaves/w1_ds2781.o \
./drivers/w1/slaves/w1_ds2784.o \
./drivers/w1/slaves/w1_smem.o \
./drivers/w1/slaves/w1_therm.o 

C_DEPS += \
./drivers/w1/slaves/w1_bq27000.d \
./drivers/w1/slaves/w1_ds2408.d \
./drivers/w1/slaves/w1_ds2423.d \
./drivers/w1/slaves/w1_ds2431.d \
./drivers/w1/slaves/w1_ds2433.d \
./drivers/w1/slaves/w1_ds2760.d \
./drivers/w1/slaves/w1_ds2780.d \
./drivers/w1/slaves/w1_ds2781.d \
./drivers/w1/slaves/w1_ds2784.d \
./drivers/w1/slaves/w1_smem.d \
./drivers/w1/slaves/w1_therm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/w1/slaves/%.o: ../drivers/w1/slaves/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


