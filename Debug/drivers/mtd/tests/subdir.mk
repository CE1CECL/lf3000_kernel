################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mtd/tests/mtd_nandecctest.c \
../drivers/mtd/tests/mtd_oobtest.c \
../drivers/mtd/tests/mtd_pagetest.c \
../drivers/mtd/tests/mtd_readtest.c \
../drivers/mtd/tests/mtd_speedtest.c \
../drivers/mtd/tests/mtd_stresstest.c \
../drivers/mtd/tests/mtd_subpagetest.c \
../drivers/mtd/tests/mtd_torturetest.c 

OBJS += \
./drivers/mtd/tests/mtd_nandecctest.o \
./drivers/mtd/tests/mtd_oobtest.o \
./drivers/mtd/tests/mtd_pagetest.o \
./drivers/mtd/tests/mtd_readtest.o \
./drivers/mtd/tests/mtd_speedtest.o \
./drivers/mtd/tests/mtd_stresstest.o \
./drivers/mtd/tests/mtd_subpagetest.o \
./drivers/mtd/tests/mtd_torturetest.o 

C_DEPS += \
./drivers/mtd/tests/mtd_nandecctest.d \
./drivers/mtd/tests/mtd_oobtest.d \
./drivers/mtd/tests/mtd_pagetest.d \
./drivers/mtd/tests/mtd_readtest.d \
./drivers/mtd/tests/mtd_speedtest.d \
./drivers/mtd/tests/mtd_stresstest.d \
./drivers/mtd/tests/mtd_subpagetest.d \
./drivers/mtd/tests/mtd_torturetest.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mtd/tests/%.o: ../drivers/mtd/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


