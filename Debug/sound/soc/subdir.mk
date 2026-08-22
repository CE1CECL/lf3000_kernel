################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/soc-cache.c \
../sound/soc/soc-core.c \
../sound/soc/soc-dapm.c \
../sound/soc/soc-dmaengine-pcm.c \
../sound/soc/soc-io.c \
../sound/soc/soc-jack.c \
../sound/soc/soc-pcm.c \
../sound/soc/soc-utils.c 

OBJS += \
./sound/soc/soc-cache.o \
./sound/soc/soc-core.o \
./sound/soc/soc-dapm.o \
./sound/soc/soc-dmaengine-pcm.o \
./sound/soc/soc-io.o \
./sound/soc/soc-jack.o \
./sound/soc/soc-pcm.o \
./sound/soc/soc-utils.o 

C_DEPS += \
./sound/soc/soc-cache.d \
./sound/soc/soc-core.d \
./sound/soc/soc-dapm.d \
./sound/soc/soc-dmaengine-pcm.d \
./sound/soc/soc-io.d \
./sound/soc/soc-jack.d \
./sound/soc/soc-pcm.d \
./sound/soc/soc-utils.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/%.o: ../sound/soc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


