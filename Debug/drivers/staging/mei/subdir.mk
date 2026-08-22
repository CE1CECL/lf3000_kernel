################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/mei/init.c \
../drivers/staging/mei/interface.c \
../drivers/staging/mei/interrupt.c \
../drivers/staging/mei/iorw.c \
../drivers/staging/mei/main.c \
../drivers/staging/mei/mei-amt-version.c \
../drivers/staging/mei/wd.c 

OBJS += \
./drivers/staging/mei/init.o \
./drivers/staging/mei/interface.o \
./drivers/staging/mei/interrupt.o \
./drivers/staging/mei/iorw.o \
./drivers/staging/mei/main.o \
./drivers/staging/mei/mei-amt-version.o \
./drivers/staging/mei/wd.o 

C_DEPS += \
./drivers/staging/mei/init.d \
./drivers/staging/mei/interface.d \
./drivers/staging/mei/interrupt.d \
./drivers/staging/mei/iorw.d \
./drivers/staging/mei/main.d \
./drivers/staging/mei/mei-amt-version.d \
./drivers/staging/mei/wd.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/mei/%.o: ../drivers/staging/mei/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


