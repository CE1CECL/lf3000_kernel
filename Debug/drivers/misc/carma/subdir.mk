################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/misc/carma/built-in.o 

C_SRCS += \
../drivers/misc/carma/carma-fpga-program.c \
../drivers/misc/carma/carma-fpga.c 

OBJS += \
./drivers/misc/carma/carma-fpga-program.o \
./drivers/misc/carma/carma-fpga.o 

C_DEPS += \
./drivers/misc/carma/carma-fpga-program.d \
./drivers/misc/carma/carma-fpga.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/carma/%.o: ../drivers/misc/carma/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


