################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/base/regmap/regcache-lzo.c \
../drivers/base/regmap/regcache-rbtree.c \
../drivers/base/regmap/regcache.c \
../drivers/base/regmap/regmap-debugfs.c \
../drivers/base/regmap/regmap-i2c.c \
../drivers/base/regmap/regmap-irq.c \
../drivers/base/regmap/regmap-spi.c \
../drivers/base/regmap/regmap.c 

OBJS += \
./drivers/base/regmap/regcache-lzo.o \
./drivers/base/regmap/regcache-rbtree.o \
./drivers/base/regmap/regcache.o \
./drivers/base/regmap/regmap-debugfs.o \
./drivers/base/regmap/regmap-i2c.o \
./drivers/base/regmap/regmap-irq.o \
./drivers/base/regmap/regmap-spi.o \
./drivers/base/regmap/regmap.o 

C_DEPS += \
./drivers/base/regmap/regcache-lzo.d \
./drivers/base/regmap/regcache-rbtree.d \
./drivers/base/regmap/regcache.d \
./drivers/base/regmap/regmap-debugfs.d \
./drivers/base/regmap/regmap-i2c.d \
./drivers/base/regmap/regmap-irq.d \
./drivers/base/regmap/regmap-spi.d \
./drivers/base/regmap/regmap.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/base/regmap/%.o: ../drivers/base/regmap/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


