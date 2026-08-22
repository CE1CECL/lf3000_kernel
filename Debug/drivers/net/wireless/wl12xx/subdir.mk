################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/wl12xx/acx.c \
../drivers/net/wireless/wl12xx/boot.c \
../drivers/net/wireless/wl12xx/cmd.c \
../drivers/net/wireless/wl12xx/debugfs.c \
../drivers/net/wireless/wl12xx/event.c \
../drivers/net/wireless/wl12xx/init.c \
../drivers/net/wireless/wl12xx/io.c \
../drivers/net/wireless/wl12xx/main.c \
../drivers/net/wireless/wl12xx/ps.c \
../drivers/net/wireless/wl12xx/rx.c \
../drivers/net/wireless/wl12xx/scan.c \
../drivers/net/wireless/wl12xx/sdio.c \
../drivers/net/wireless/wl12xx/spi.c \
../drivers/net/wireless/wl12xx/testmode.c \
../drivers/net/wireless/wl12xx/tx.c \
../drivers/net/wireless/wl12xx/wl12xx_platform_data.c 

OBJS += \
./drivers/net/wireless/wl12xx/acx.o \
./drivers/net/wireless/wl12xx/boot.o \
./drivers/net/wireless/wl12xx/cmd.o \
./drivers/net/wireless/wl12xx/debugfs.o \
./drivers/net/wireless/wl12xx/event.o \
./drivers/net/wireless/wl12xx/init.o \
./drivers/net/wireless/wl12xx/io.o \
./drivers/net/wireless/wl12xx/main.o \
./drivers/net/wireless/wl12xx/ps.o \
./drivers/net/wireless/wl12xx/rx.o \
./drivers/net/wireless/wl12xx/scan.o \
./drivers/net/wireless/wl12xx/sdio.o \
./drivers/net/wireless/wl12xx/spi.o \
./drivers/net/wireless/wl12xx/testmode.o \
./drivers/net/wireless/wl12xx/tx.o \
./drivers/net/wireless/wl12xx/wl12xx_platform_data.o 

C_DEPS += \
./drivers/net/wireless/wl12xx/acx.d \
./drivers/net/wireless/wl12xx/boot.d \
./drivers/net/wireless/wl12xx/cmd.d \
./drivers/net/wireless/wl12xx/debugfs.d \
./drivers/net/wireless/wl12xx/event.d \
./drivers/net/wireless/wl12xx/init.d \
./drivers/net/wireless/wl12xx/io.d \
./drivers/net/wireless/wl12xx/main.d \
./drivers/net/wireless/wl12xx/ps.d \
./drivers/net/wireless/wl12xx/rx.d \
./drivers/net/wireless/wl12xx/scan.d \
./drivers/net/wireless/wl12xx/sdio.d \
./drivers/net/wireless/wl12xx/spi.d \
./drivers/net/wireless/wl12xx/testmode.d \
./drivers/net/wireless/wl12xx/tx.d \
./drivers/net/wireless/wl12xx/wl12xx_platform_data.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/wl12xx/%.o: ../drivers/net/wireless/wl12xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


