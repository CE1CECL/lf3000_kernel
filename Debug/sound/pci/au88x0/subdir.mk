################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/au88x0/au8810.c \
../sound/pci/au88x0/au8820.c \
../sound/pci/au88x0/au8830.c \
../sound/pci/au88x0/au88x0.c \
../sound/pci/au88x0/au88x0_a3d.c \
../sound/pci/au88x0/au88x0_a3ddata.c \
../sound/pci/au88x0/au88x0_core.c \
../sound/pci/au88x0/au88x0_eq.c \
../sound/pci/au88x0/au88x0_eqdata.c \
../sound/pci/au88x0/au88x0_game.c \
../sound/pci/au88x0/au88x0_mixer.c \
../sound/pci/au88x0/au88x0_mpu401.c \
../sound/pci/au88x0/au88x0_pcm.c \
../sound/pci/au88x0/au88x0_synth.c \
../sound/pci/au88x0/au88x0_xtalk.c 

OBJS += \
./sound/pci/au88x0/au8810.o \
./sound/pci/au88x0/au8820.o \
./sound/pci/au88x0/au8830.o \
./sound/pci/au88x0/au88x0.o \
./sound/pci/au88x0/au88x0_a3d.o \
./sound/pci/au88x0/au88x0_a3ddata.o \
./sound/pci/au88x0/au88x0_core.o \
./sound/pci/au88x0/au88x0_eq.o \
./sound/pci/au88x0/au88x0_eqdata.o \
./sound/pci/au88x0/au88x0_game.o \
./sound/pci/au88x0/au88x0_mixer.o \
./sound/pci/au88x0/au88x0_mpu401.o \
./sound/pci/au88x0/au88x0_pcm.o \
./sound/pci/au88x0/au88x0_synth.o \
./sound/pci/au88x0/au88x0_xtalk.o 

C_DEPS += \
./sound/pci/au88x0/au8810.d \
./sound/pci/au88x0/au8820.d \
./sound/pci/au88x0/au8830.d \
./sound/pci/au88x0/au88x0.d \
./sound/pci/au88x0/au88x0_a3d.d \
./sound/pci/au88x0/au88x0_a3ddata.d \
./sound/pci/au88x0/au88x0_core.d \
./sound/pci/au88x0/au88x0_eq.d \
./sound/pci/au88x0/au88x0_eqdata.d \
./sound/pci/au88x0/au88x0_game.d \
./sound/pci/au88x0/au88x0_mixer.d \
./sound/pci/au88x0/au88x0_mpu401.d \
./sound/pci/au88x0/au88x0_pcm.d \
./sound/pci/au88x0/au88x0_synth.d \
./sound/pci/au88x0/au88x0_xtalk.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/au88x0/%.o: ../sound/pci/au88x0/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


