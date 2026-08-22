################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/nexell/nxp-i2s.c \
../sound/soc/nexell/nxp-pcm.c \
../sound/soc/nexell/nxp-rt5631.c \
../sound/soc/nexell/nxp-spdif-receiver.c \
../sound/soc/nexell/nxp-spdif-transciever.c \
../sound/soc/nexell/nxp-spdifrx.c \
../sound/soc/nexell/nxp-spdiftx.c 

OBJS += \
./sound/soc/nexell/nxp-i2s.o \
./sound/soc/nexell/nxp-pcm.o \
./sound/soc/nexell/nxp-rt5631.o \
./sound/soc/nexell/nxp-spdif-receiver.o \
./sound/soc/nexell/nxp-spdif-transciever.o \
./sound/soc/nexell/nxp-spdifrx.o \
./sound/soc/nexell/nxp-spdiftx.o 

C_DEPS += \
./sound/soc/nexell/nxp-i2s.d \
./sound/soc/nexell/nxp-pcm.d \
./sound/soc/nexell/nxp-rt5631.d \
./sound/soc/nexell/nxp-spdif-receiver.d \
./sound/soc/nexell/nxp-spdif-transciever.d \
./sound/soc/nexell/nxp-spdifrx.d \
./sound/soc/nexell/nxp-spdiftx.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/nexell/%.o: ../sound/soc/nexell/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


