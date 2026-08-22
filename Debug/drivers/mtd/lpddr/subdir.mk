################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mtd/lpddr/lpddr_cmds.c \
../drivers/mtd/lpddr/qinfo_probe.c 

OBJS += \
./drivers/mtd/lpddr/lpddr_cmds.o \
./drivers/mtd/lpddr/qinfo_probe.o 

C_DEPS += \
./drivers/mtd/lpddr/lpddr_cmds.d \
./drivers/mtd/lpddr/qinfo_probe.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mtd/lpddr/%.o: ../drivers/mtd/lpddr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


