################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/wl1251/acx.c \
../drivers/net/wireless/wl1251/boot.c \
../drivers/net/wireless/wl1251/cmd.c \
../drivers/net/wireless/wl1251/debugfs.c \
../drivers/net/wireless/wl1251/event.c \
../drivers/net/wireless/wl1251/init.c \
../drivers/net/wireless/wl1251/io.c \
../drivers/net/wireless/wl1251/main.c \
../drivers/net/wireless/wl1251/ps.c \
../drivers/net/wireless/wl1251/rx.c \
../drivers/net/wireless/wl1251/sdio.c \
../drivers/net/wireless/wl1251/spi.c \
../drivers/net/wireless/wl1251/tx.c 

OBJS += \
./drivers/net/wireless/wl1251/acx.o \
./drivers/net/wireless/wl1251/boot.o \
./drivers/net/wireless/wl1251/cmd.o \
./drivers/net/wireless/wl1251/debugfs.o \
./drivers/net/wireless/wl1251/event.o \
./drivers/net/wireless/wl1251/init.o \
./drivers/net/wireless/wl1251/io.o \
./drivers/net/wireless/wl1251/main.o \
./drivers/net/wireless/wl1251/ps.o \
./drivers/net/wireless/wl1251/rx.o \
./drivers/net/wireless/wl1251/sdio.o \
./drivers/net/wireless/wl1251/spi.o \
./drivers/net/wireless/wl1251/tx.o 

C_DEPS += \
./drivers/net/wireless/wl1251/acx.d \
./drivers/net/wireless/wl1251/boot.d \
./drivers/net/wireless/wl1251/cmd.d \
./drivers/net/wireless/wl1251/debugfs.d \
./drivers/net/wireless/wl1251/event.d \
./drivers/net/wireless/wl1251/init.d \
./drivers/net/wireless/wl1251/io.d \
./drivers/net/wireless/wl1251/main.d \
./drivers/net/wireless/wl1251/ps.d \
./drivers/net/wireless/wl1251/rx.d \
./drivers/net/wireless/wl1251/sdio.d \
./drivers/net/wireless/wl1251/spi.d \
./drivers/net/wireless/wl1251/tx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/wl1251/%.o: ../drivers/net/wireless/wl1251/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


