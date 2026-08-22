################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gud/MobiCoreDriver/api.c \
../drivers/gud/MobiCoreDriver/logging.c \
../drivers/gud/MobiCoreDriver/main.c \
../drivers/gud/MobiCoreDriver/mem.c \
../drivers/gud/MobiCoreDriver/ops.c \
../drivers/gud/MobiCoreDriver/pm.c 

OBJS += \
./drivers/gud/MobiCoreDriver/api.o \
./drivers/gud/MobiCoreDriver/logging.o \
./drivers/gud/MobiCoreDriver/main.o \
./drivers/gud/MobiCoreDriver/mem.o \
./drivers/gud/MobiCoreDriver/ops.o \
./drivers/gud/MobiCoreDriver/pm.o 

C_DEPS += \
./drivers/gud/MobiCoreDriver/api.d \
./drivers/gud/MobiCoreDriver/logging.d \
./drivers/gud/MobiCoreDriver/main.d \
./drivers/gud/MobiCoreDriver/mem.d \
./drivers/gud/MobiCoreDriver/ops.d \
./drivers/gud/MobiCoreDriver/pm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gud/MobiCoreDriver/%.o: ../drivers/gud/MobiCoreDriver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


