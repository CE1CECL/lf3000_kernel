################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/blackfin/bf5xx-ac97-pcm.c \
../sound/soc/blackfin/bf5xx-ac97.c \
../sound/soc/blackfin/bf5xx-ad1836.c \
../sound/soc/blackfin/bf5xx-ad193x.c \
../sound/soc/blackfin/bf5xx-ad1980.c \
../sound/soc/blackfin/bf5xx-ad73311.c \
../sound/soc/blackfin/bf5xx-i2s-pcm.c \
../sound/soc/blackfin/bf5xx-i2s.c \
../sound/soc/blackfin/bf5xx-sport.c \
../sound/soc/blackfin/bf5xx-ssm2602.c \
../sound/soc/blackfin/bf5xx-tdm-pcm.c \
../sound/soc/blackfin/bf5xx-tdm.c \
../sound/soc/blackfin/bfin-eval-adau1373.c \
../sound/soc/blackfin/bfin-eval-adau1701.c \
../sound/soc/blackfin/bfin-eval-adav80x.c 

OBJS += \
./sound/soc/blackfin/bf5xx-ac97-pcm.o \
./sound/soc/blackfin/bf5xx-ac97.o \
./sound/soc/blackfin/bf5xx-ad1836.o \
./sound/soc/blackfin/bf5xx-ad193x.o \
./sound/soc/blackfin/bf5xx-ad1980.o \
./sound/soc/blackfin/bf5xx-ad73311.o \
./sound/soc/blackfin/bf5xx-i2s-pcm.o \
./sound/soc/blackfin/bf5xx-i2s.o \
./sound/soc/blackfin/bf5xx-sport.o \
./sound/soc/blackfin/bf5xx-ssm2602.o \
./sound/soc/blackfin/bf5xx-tdm-pcm.o \
./sound/soc/blackfin/bf5xx-tdm.o \
./sound/soc/blackfin/bfin-eval-adau1373.o \
./sound/soc/blackfin/bfin-eval-adau1701.o \
./sound/soc/blackfin/bfin-eval-adav80x.o 

C_DEPS += \
./sound/soc/blackfin/bf5xx-ac97-pcm.d \
./sound/soc/blackfin/bf5xx-ac97.d \
./sound/soc/blackfin/bf5xx-ad1836.d \
./sound/soc/blackfin/bf5xx-ad193x.d \
./sound/soc/blackfin/bf5xx-ad1980.d \
./sound/soc/blackfin/bf5xx-ad73311.d \
./sound/soc/blackfin/bf5xx-i2s-pcm.d \
./sound/soc/blackfin/bf5xx-i2s.d \
./sound/soc/blackfin/bf5xx-sport.d \
./sound/soc/blackfin/bf5xx-ssm2602.d \
./sound/soc/blackfin/bf5xx-tdm-pcm.d \
./sound/soc/blackfin/bf5xx-tdm.d \
./sound/soc/blackfin/bfin-eval-adau1373.d \
./sound/soc/blackfin/bfin-eval-adau1701.d \
./sound/soc/blackfin/bfin-eval-adav80x.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/blackfin/%.o: ../sound/soc/blackfin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


