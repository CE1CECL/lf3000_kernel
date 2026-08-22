################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/au1x/ac97c.c \
../sound/soc/au1x/db1000.c \
../sound/soc/au1x/db1200.c \
../sound/soc/au1x/dbdma2.c \
../sound/soc/au1x/dma.c \
../sound/soc/au1x/i2sc.c \
../sound/soc/au1x/psc-ac97.c \
../sound/soc/au1x/psc-i2s.c 

OBJS += \
./sound/soc/au1x/ac97c.o \
./sound/soc/au1x/db1000.o \
./sound/soc/au1x/db1200.o \
./sound/soc/au1x/dbdma2.o \
./sound/soc/au1x/dma.o \
./sound/soc/au1x/i2sc.o \
./sound/soc/au1x/psc-ac97.o \
./sound/soc/au1x/psc-i2s.o 

C_DEPS += \
./sound/soc/au1x/ac97c.d \
./sound/soc/au1x/db1000.d \
./sound/soc/au1x/db1200.d \
./sound/soc/au1x/dbdma2.d \
./sound/soc/au1x/dma.d \
./sound/soc/au1x/i2sc.d \
./sound/soc/au1x/psc-ac97.d \
./sound/soc/au1x/psc-i2s.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/au1x/%.o: ../sound/soc/au1x/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


