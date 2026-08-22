################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/acpi/apei/apei-base.c \
../drivers/acpi/apei/cper.c \
../drivers/acpi/apei/einj.c \
../drivers/acpi/apei/erst-dbg.c \
../drivers/acpi/apei/erst.c \
../drivers/acpi/apei/ghes.c \
../drivers/acpi/apei/hest.c 

OBJS += \
./drivers/acpi/apei/apei-base.o \
./drivers/acpi/apei/cper.o \
./drivers/acpi/apei/einj.o \
./drivers/acpi/apei/erst-dbg.o \
./drivers/acpi/apei/erst.o \
./drivers/acpi/apei/ghes.o \
./drivers/acpi/apei/hest.o 

C_DEPS += \
./drivers/acpi/apei/apei-base.d \
./drivers/acpi/apei/cper.d \
./drivers/acpi/apei/einj.d \
./drivers/acpi/apei/erst-dbg.d \
./drivers/acpi/apei/erst.d \
./drivers/acpi/apei/ghes.d \
./drivers/acpi/apei/hest.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/acpi/apei/%.o: ../drivers/acpi/apei/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


