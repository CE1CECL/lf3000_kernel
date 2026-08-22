################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/misc/altera-stapl/altera-comp.c \
../drivers/misc/altera-stapl/altera-jtag.c \
../drivers/misc/altera-stapl/altera-lpt.c \
../drivers/misc/altera-stapl/altera.c 

OBJS += \
./drivers/misc/altera-stapl/altera-comp.o \
./drivers/misc/altera-stapl/altera-jtag.o \
./drivers/misc/altera-stapl/altera-lpt.o \
./drivers/misc/altera-stapl/altera.o 

C_DEPS += \
./drivers/misc/altera-stapl/altera-comp.d \
./drivers/misc/altera-stapl/altera-jtag.d \
./drivers/misc/altera-stapl/altera-lpt.d \
./drivers/misc/altera-stapl/altera.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/altera-stapl/%.o: ../drivers/misc/altera-stapl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


