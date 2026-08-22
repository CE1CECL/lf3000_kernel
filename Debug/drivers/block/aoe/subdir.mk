################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/block/aoe/aoeblk.c \
../drivers/block/aoe/aoechr.c \
../drivers/block/aoe/aoecmd.c \
../drivers/block/aoe/aoedev.c \
../drivers/block/aoe/aoemain.c \
../drivers/block/aoe/aoenet.c 

OBJS += \
./drivers/block/aoe/aoeblk.o \
./drivers/block/aoe/aoechr.o \
./drivers/block/aoe/aoecmd.o \
./drivers/block/aoe/aoedev.o \
./drivers/block/aoe/aoemain.o \
./drivers/block/aoe/aoenet.o 

C_DEPS += \
./drivers/block/aoe/aoeblk.d \
./drivers/block/aoe/aoechr.d \
./drivers/block/aoe/aoecmd.d \
./drivers/block/aoe/aoedev.d \
./drivers/block/aoe/aoemain.d \
./drivers/block/aoe/aoenet.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/block/aoe/%.o: ../drivers/block/aoe/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


