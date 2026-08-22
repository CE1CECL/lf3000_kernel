################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/pnp/card.c \
../drivers/pnp/core.c \
../drivers/pnp/driver.c \
../drivers/pnp/interface.c \
../drivers/pnp/manager.c \
../drivers/pnp/quirks.c \
../drivers/pnp/resource.c \
../drivers/pnp/support.c \
../drivers/pnp/system.c 

OBJS += \
./drivers/pnp/card.o \
./drivers/pnp/core.o \
./drivers/pnp/driver.o \
./drivers/pnp/interface.o \
./drivers/pnp/manager.o \
./drivers/pnp/quirks.o \
./drivers/pnp/resource.o \
./drivers/pnp/support.o \
./drivers/pnp/system.o 

C_DEPS += \
./drivers/pnp/card.d \
./drivers/pnp/core.d \
./drivers/pnp/driver.d \
./drivers/pnp/interface.d \
./drivers/pnp/manager.d \
./drivers/pnp/quirks.d \
./drivers/pnp/resource.d \
./drivers/pnp/support.d \
./drivers/pnp/system.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/pnp/%.o: ../drivers/pnp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


