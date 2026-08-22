################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/sbe-2t3e3/cpld.c \
../drivers/staging/sbe-2t3e3/ctrl.c \
../drivers/staging/sbe-2t3e3/dc.c \
../drivers/staging/sbe-2t3e3/exar7250.c \
../drivers/staging/sbe-2t3e3/exar7300.c \
../drivers/staging/sbe-2t3e3/intr.c \
../drivers/staging/sbe-2t3e3/io.c \
../drivers/staging/sbe-2t3e3/main.c \
../drivers/staging/sbe-2t3e3/maps.c \
../drivers/staging/sbe-2t3e3/module.c \
../drivers/staging/sbe-2t3e3/netdev.c 

OBJS += \
./drivers/staging/sbe-2t3e3/cpld.o \
./drivers/staging/sbe-2t3e3/ctrl.o \
./drivers/staging/sbe-2t3e3/dc.o \
./drivers/staging/sbe-2t3e3/exar7250.o \
./drivers/staging/sbe-2t3e3/exar7300.o \
./drivers/staging/sbe-2t3e3/intr.o \
./drivers/staging/sbe-2t3e3/io.o \
./drivers/staging/sbe-2t3e3/main.o \
./drivers/staging/sbe-2t3e3/maps.o \
./drivers/staging/sbe-2t3e3/module.o \
./drivers/staging/sbe-2t3e3/netdev.o 

C_DEPS += \
./drivers/staging/sbe-2t3e3/cpld.d \
./drivers/staging/sbe-2t3e3/ctrl.d \
./drivers/staging/sbe-2t3e3/dc.d \
./drivers/staging/sbe-2t3e3/exar7250.d \
./drivers/staging/sbe-2t3e3/exar7300.d \
./drivers/staging/sbe-2t3e3/intr.d \
./drivers/staging/sbe-2t3e3/io.d \
./drivers/staging/sbe-2t3e3/main.d \
./drivers/staging/sbe-2t3e3/maps.d \
./drivers/staging/sbe-2t3e3/module.d \
./drivers/staging/sbe-2t3e3/netdev.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/sbe-2t3e3/%.o: ../drivers/staging/sbe-2t3e3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


