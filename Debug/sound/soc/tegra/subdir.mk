################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/tegra/tegra_alc5632.c \
../sound/soc/tegra/tegra_asoc_utils.c \
../sound/soc/tegra/tegra_das.c \
../sound/soc/tegra/tegra_i2s.c \
../sound/soc/tegra/tegra_pcm.c \
../sound/soc/tegra/tegra_spdif.c \
../sound/soc/tegra/tegra_wm8903.c \
../sound/soc/tegra/trimslice.c 

OBJS += \
./sound/soc/tegra/tegra_alc5632.o \
./sound/soc/tegra/tegra_asoc_utils.o \
./sound/soc/tegra/tegra_das.o \
./sound/soc/tegra/tegra_i2s.o \
./sound/soc/tegra/tegra_pcm.o \
./sound/soc/tegra/tegra_spdif.o \
./sound/soc/tegra/tegra_wm8903.o \
./sound/soc/tegra/trimslice.o 

C_DEPS += \
./sound/soc/tegra/tegra_alc5632.d \
./sound/soc/tegra/tegra_asoc_utils.d \
./sound/soc/tegra/tegra_das.d \
./sound/soc/tegra/tegra_i2s.d \
./sound/soc/tegra/tegra_pcm.d \
./sound/soc/tegra/tegra_spdif.d \
./sound/soc/tegra/tegra_wm8903.d \
./sound/soc/tegra/trimslice.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/tegra/%.o: ../sound/soc/tegra/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


