################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/tidspbridge/core/chnl_sm.c \
../drivers/staging/tidspbridge/core/dsp-clock.c \
../drivers/staging/tidspbridge/core/io_sm.c \
../drivers/staging/tidspbridge/core/msg_sm.c \
../drivers/staging/tidspbridge/core/sync.c \
../drivers/staging/tidspbridge/core/tiomap3430.c \
../drivers/staging/tidspbridge/core/tiomap3430_pwr.c \
../drivers/staging/tidspbridge/core/tiomap_io.c \
../drivers/staging/tidspbridge/core/ue_deh.c \
../drivers/staging/tidspbridge/core/wdt.c 

OBJS += \
./drivers/staging/tidspbridge/core/chnl_sm.o \
./drivers/staging/tidspbridge/core/dsp-clock.o \
./drivers/staging/tidspbridge/core/io_sm.o \
./drivers/staging/tidspbridge/core/msg_sm.o \
./drivers/staging/tidspbridge/core/sync.o \
./drivers/staging/tidspbridge/core/tiomap3430.o \
./drivers/staging/tidspbridge/core/tiomap3430_pwr.o \
./drivers/staging/tidspbridge/core/tiomap_io.o \
./drivers/staging/tidspbridge/core/ue_deh.o \
./drivers/staging/tidspbridge/core/wdt.o 

C_DEPS += \
./drivers/staging/tidspbridge/core/chnl_sm.d \
./drivers/staging/tidspbridge/core/dsp-clock.d \
./drivers/staging/tidspbridge/core/io_sm.d \
./drivers/staging/tidspbridge/core/msg_sm.d \
./drivers/staging/tidspbridge/core/sync.d \
./drivers/staging/tidspbridge/core/tiomap3430.d \
./drivers/staging/tidspbridge/core/tiomap3430_pwr.d \
./drivers/staging/tidspbridge/core/tiomap_io.d \
./drivers/staging/tidspbridge/core/ue_deh.d \
./drivers/staging/tidspbridge/core/wdt.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/tidspbridge/core/%.o: ../drivers/staging/tidspbridge/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


