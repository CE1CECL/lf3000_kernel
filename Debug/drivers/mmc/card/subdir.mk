################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/mmc/card/block.o \
../drivers/mmc/card/built-in.o \
../drivers/mmc/card/mmc_block.o \
../drivers/mmc/card/queue.o 

C_SRCS += \
../drivers/mmc/card/block.c \
../drivers/mmc/card/mmc_test.c \
../drivers/mmc/card/queue.c \
../drivers/mmc/card/sdio_uart.c 

OBJS += \
./drivers/mmc/card/block.o \
./drivers/mmc/card/mmc_test.o \
./drivers/mmc/card/queue.o \
./drivers/mmc/card/sdio_uart.o 

C_DEPS += \
./drivers/mmc/card/block.d \
./drivers/mmc/card/mmc_test.d \
./drivers/mmc/card/queue.d \
./drivers/mmc/card/sdio_uart.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mmc/card/%.o: ../drivers/mmc/card/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


