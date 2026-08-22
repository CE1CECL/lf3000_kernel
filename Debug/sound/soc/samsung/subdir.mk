################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/samsung/ac97.c \
../sound/soc/samsung/dma.c \
../sound/soc/samsung/goni_wm8994.c \
../sound/soc/samsung/h1940_uda1380.c \
../sound/soc/samsung/i2s.c \
../sound/soc/samsung/idma.c \
../sound/soc/samsung/jive_wm8750.c \
../sound/soc/samsung/littlemill.c \
../sound/soc/samsung/ln2440sbc_alc650.c \
../sound/soc/samsung/lowland.c \
../sound/soc/samsung/manta_spdif.c \
../sound/soc/samsung/manta_wm1811.c \
../sound/soc/samsung/neo1973_wm8753.c \
../sound/soc/samsung/pcm.c \
../sound/soc/samsung/rx1950_uda1380.c \
../sound/soc/samsung/s3c-i2s-v2.c \
../sound/soc/samsung/s3c2412-i2s.c \
../sound/soc/samsung/s3c24xx-i2s.c \
../sound/soc/samsung/s3c24xx_simtec.c \
../sound/soc/samsung/s3c24xx_simtec_hermes.c \
../sound/soc/samsung/s3c24xx_simtec_tlv320aic23.c \
../sound/soc/samsung/s3c24xx_uda134x.c \
../sound/soc/samsung/smartq_wm8987.c \
../sound/soc/samsung/smdk2443_wm9710.c \
../sound/soc/samsung/smdk_spdif.c \
../sound/soc/samsung/smdk_wm8580.c \
../sound/soc/samsung/smdk_wm8580pcm.c \
../sound/soc/samsung/smdk_wm8994.c \
../sound/soc/samsung/smdk_wm8994pcm.c \
../sound/soc/samsung/smdk_wm9713.c \
../sound/soc/samsung/spdif.c \
../sound/soc/samsung/speyside.c \
../sound/soc/samsung/tobermory.c 

OBJS += \
./sound/soc/samsung/ac97.o \
./sound/soc/samsung/dma.o \
./sound/soc/samsung/goni_wm8994.o \
./sound/soc/samsung/h1940_uda1380.o \
./sound/soc/samsung/i2s.o \
./sound/soc/samsung/idma.o \
./sound/soc/samsung/jive_wm8750.o \
./sound/soc/samsung/littlemill.o \
./sound/soc/samsung/ln2440sbc_alc650.o \
./sound/soc/samsung/lowland.o \
./sound/soc/samsung/manta_spdif.o \
./sound/soc/samsung/manta_wm1811.o \
./sound/soc/samsung/neo1973_wm8753.o \
./sound/soc/samsung/pcm.o \
./sound/soc/samsung/rx1950_uda1380.o \
./sound/soc/samsung/s3c-i2s-v2.o \
./sound/soc/samsung/s3c2412-i2s.o \
./sound/soc/samsung/s3c24xx-i2s.o \
./sound/soc/samsung/s3c24xx_simtec.o \
./sound/soc/samsung/s3c24xx_simtec_hermes.o \
./sound/soc/samsung/s3c24xx_simtec_tlv320aic23.o \
./sound/soc/samsung/s3c24xx_uda134x.o \
./sound/soc/samsung/smartq_wm8987.o \
./sound/soc/samsung/smdk2443_wm9710.o \
./sound/soc/samsung/smdk_spdif.o \
./sound/soc/samsung/smdk_wm8580.o \
./sound/soc/samsung/smdk_wm8580pcm.o \
./sound/soc/samsung/smdk_wm8994.o \
./sound/soc/samsung/smdk_wm8994pcm.o \
./sound/soc/samsung/smdk_wm9713.o \
./sound/soc/samsung/spdif.o \
./sound/soc/samsung/speyside.o \
./sound/soc/samsung/tobermory.o 

C_DEPS += \
./sound/soc/samsung/ac97.d \
./sound/soc/samsung/dma.d \
./sound/soc/samsung/goni_wm8994.d \
./sound/soc/samsung/h1940_uda1380.d \
./sound/soc/samsung/i2s.d \
./sound/soc/samsung/idma.d \
./sound/soc/samsung/jive_wm8750.d \
./sound/soc/samsung/littlemill.d \
./sound/soc/samsung/ln2440sbc_alc650.d \
./sound/soc/samsung/lowland.d \
./sound/soc/samsung/manta_spdif.d \
./sound/soc/samsung/manta_wm1811.d \
./sound/soc/samsung/neo1973_wm8753.d \
./sound/soc/samsung/pcm.d \
./sound/soc/samsung/rx1950_uda1380.d \
./sound/soc/samsung/s3c-i2s-v2.d \
./sound/soc/samsung/s3c2412-i2s.d \
./sound/soc/samsung/s3c24xx-i2s.d \
./sound/soc/samsung/s3c24xx_simtec.d \
./sound/soc/samsung/s3c24xx_simtec_hermes.d \
./sound/soc/samsung/s3c24xx_simtec_tlv320aic23.d \
./sound/soc/samsung/s3c24xx_uda134x.d \
./sound/soc/samsung/smartq_wm8987.d \
./sound/soc/samsung/smdk2443_wm9710.d \
./sound/soc/samsung/smdk_spdif.d \
./sound/soc/samsung/smdk_wm8580.d \
./sound/soc/samsung/smdk_wm8580pcm.d \
./sound/soc/samsung/smdk_wm8994.d \
./sound/soc/samsung/smdk_wm8994pcm.d \
./sound/soc/samsung/smdk_wm9713.d \
./sound/soc/samsung/spdif.d \
./sound/soc/samsung/speyside.d \
./sound/soc/samsung/tobermory.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/samsung/%.o: ../sound/soc/samsung/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


