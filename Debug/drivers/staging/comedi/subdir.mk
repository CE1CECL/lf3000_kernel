################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/comedi/comedi_compat32.c \
../drivers/staging/comedi/comedi_fops.c \
../drivers/staging/comedi/drivers.c \
../drivers/staging/comedi/proc.c \
../drivers/staging/comedi/range.c 

OBJS += \
./drivers/staging/comedi/comedi_compat32.o \
./drivers/staging/comedi/comedi_fops.o \
./drivers/staging/comedi/drivers.o \
./drivers/staging/comedi/proc.o \
./drivers/staging/comedi/range.o 

C_DEPS += \
./drivers/staging/comedi/comedi_compat32.d \
./drivers/staging/comedi/comedi_fops.d \
./drivers/staging/comedi/drivers.d \
./drivers/staging/comedi/proc.d \
./drivers/staging/comedi/range.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/comedi/%.o: ../drivers/staging/comedi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


