################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gud/MobiCoreKernelApi/clientlib.c \
../drivers/gud/MobiCoreKernelApi/connection.c \
../drivers/gud/MobiCoreKernelApi/device.c \
../drivers/gud/MobiCoreKernelApi/main.c \
../drivers/gud/MobiCoreKernelApi/session.c 

OBJS += \
./drivers/gud/MobiCoreKernelApi/clientlib.o \
./drivers/gud/MobiCoreKernelApi/connection.o \
./drivers/gud/MobiCoreKernelApi/device.o \
./drivers/gud/MobiCoreKernelApi/main.o \
./drivers/gud/MobiCoreKernelApi/session.o 

C_DEPS += \
./drivers/gud/MobiCoreKernelApi/clientlib.d \
./drivers/gud/MobiCoreKernelApi/connection.d \
./drivers/gud/MobiCoreKernelApi/device.d \
./drivers/gud/MobiCoreKernelApi/main.d \
./drivers/gud/MobiCoreKernelApi/session.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gud/MobiCoreKernelApi/%.o: ../drivers/gud/MobiCoreKernelApi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


