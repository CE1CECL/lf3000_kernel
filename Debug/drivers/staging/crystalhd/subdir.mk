################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/crystalhd/crystalhd_cmds.c \
../drivers/staging/crystalhd/crystalhd_hw.c \
../drivers/staging/crystalhd/crystalhd_lnx.c \
../drivers/staging/crystalhd/crystalhd_misc.c 

OBJS += \
./drivers/staging/crystalhd/crystalhd_cmds.o \
./drivers/staging/crystalhd/crystalhd_hw.o \
./drivers/staging/crystalhd/crystalhd_lnx.o \
./drivers/staging/crystalhd/crystalhd_misc.o 

C_DEPS += \
./drivers/staging/crystalhd/crystalhd_cmds.d \
./drivers/staging/crystalhd/crystalhd_hw.d \
./drivers/staging/crystalhd/crystalhd_lnx.d \
./drivers/staging/crystalhd/crystalhd_misc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/crystalhd/%.o: ../drivers/staging/crystalhd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


