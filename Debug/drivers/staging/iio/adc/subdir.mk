################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/adc/ad7192.c \
../drivers/staging/iio/adc/ad7280a.c \
../drivers/staging/iio/adc/ad7291.c \
../drivers/staging/iio/adc/ad7298_core.c \
../drivers/staging/iio/adc/ad7298_ring.c \
../drivers/staging/iio/adc/ad7476_core.c \
../drivers/staging/iio/adc/ad7476_ring.c \
../drivers/staging/iio/adc/ad7606_core.c \
../drivers/staging/iio/adc/ad7606_par.c \
../drivers/staging/iio/adc/ad7606_ring.c \
../drivers/staging/iio/adc/ad7606_spi.c \
../drivers/staging/iio/adc/ad7780.c \
../drivers/staging/iio/adc/ad7793.c \
../drivers/staging/iio/adc/ad7816.c \
../drivers/staging/iio/adc/ad7887_core.c \
../drivers/staging/iio/adc/ad7887_ring.c \
../drivers/staging/iio/adc/ad799x_core.c \
../drivers/staging/iio/adc/ad799x_ring.c \
../drivers/staging/iio/adc/adt7310.c \
../drivers/staging/iio/adc/adt7410.c \
../drivers/staging/iio/adc/lpc32xx_adc.c \
../drivers/staging/iio/adc/max1363_core.c \
../drivers/staging/iio/adc/max1363_ring.c 

OBJS += \
./drivers/staging/iio/adc/ad7192.o \
./drivers/staging/iio/adc/ad7280a.o \
./drivers/staging/iio/adc/ad7291.o \
./drivers/staging/iio/adc/ad7298_core.o \
./drivers/staging/iio/adc/ad7298_ring.o \
./drivers/staging/iio/adc/ad7476_core.o \
./drivers/staging/iio/adc/ad7476_ring.o \
./drivers/staging/iio/adc/ad7606_core.o \
./drivers/staging/iio/adc/ad7606_par.o \
./drivers/staging/iio/adc/ad7606_ring.o \
./drivers/staging/iio/adc/ad7606_spi.o \
./drivers/staging/iio/adc/ad7780.o \
./drivers/staging/iio/adc/ad7793.o \
./drivers/staging/iio/adc/ad7816.o \
./drivers/staging/iio/adc/ad7887_core.o \
./drivers/staging/iio/adc/ad7887_ring.o \
./drivers/staging/iio/adc/ad799x_core.o \
./drivers/staging/iio/adc/ad799x_ring.o \
./drivers/staging/iio/adc/adt7310.o \
./drivers/staging/iio/adc/adt7410.o \
./drivers/staging/iio/adc/lpc32xx_adc.o \
./drivers/staging/iio/adc/max1363_core.o \
./drivers/staging/iio/adc/max1363_ring.o 

C_DEPS += \
./drivers/staging/iio/adc/ad7192.d \
./drivers/staging/iio/adc/ad7280a.d \
./drivers/staging/iio/adc/ad7291.d \
./drivers/staging/iio/adc/ad7298_core.d \
./drivers/staging/iio/adc/ad7298_ring.d \
./drivers/staging/iio/adc/ad7476_core.d \
./drivers/staging/iio/adc/ad7476_ring.d \
./drivers/staging/iio/adc/ad7606_core.d \
./drivers/staging/iio/adc/ad7606_par.d \
./drivers/staging/iio/adc/ad7606_ring.d \
./drivers/staging/iio/adc/ad7606_spi.d \
./drivers/staging/iio/adc/ad7780.d \
./drivers/staging/iio/adc/ad7793.d \
./drivers/staging/iio/adc/ad7816.d \
./drivers/staging/iio/adc/ad7887_core.d \
./drivers/staging/iio/adc/ad7887_ring.d \
./drivers/staging/iio/adc/ad799x_core.d \
./drivers/staging/iio/adc/ad799x_ring.d \
./drivers/staging/iio/adc/adt7310.d \
./drivers/staging/iio/adc/adt7410.d \
./drivers/staging/iio/adc/lpc32xx_adc.d \
./drivers/staging/iio/adc/max1363_core.d \
./drivers/staging/iio/adc/max1363_ring.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/adc/%.o: ../drivers/staging/iio/adc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


