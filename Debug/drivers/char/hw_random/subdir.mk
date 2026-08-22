################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/char/hw_random/built-in.o \
../drivers/char/hw_random/core.o \
../drivers/char/hw_random/rng-core.o 

C_SRCS += \
../drivers/char/hw_random/amd-rng.c \
../drivers/char/hw_random/atmel-rng.c \
../drivers/char/hw_random/core.c \
../drivers/char/hw_random/geode-rng.c \
../drivers/char/hw_random/intel-rng.c \
../drivers/char/hw_random/ixp4xx-rng.c \
../drivers/char/hw_random/mxc-rnga.c \
../drivers/char/hw_random/n2-drv.c \
../drivers/char/hw_random/nomadik-rng.c \
../drivers/char/hw_random/octeon-rng.c \
../drivers/char/hw_random/omap-rng.c \
../drivers/char/hw_random/pasemi-rng.c \
../drivers/char/hw_random/picoxcell-rng.c \
../drivers/char/hw_random/ppc4xx-rng.c \
../drivers/char/hw_random/timeriomem-rng.c \
../drivers/char/hw_random/tx4939-rng.c \
../drivers/char/hw_random/via-rng.c \
../drivers/char/hw_random/virtio-rng.c 

S_UPPER_SRCS += \
../drivers/char/hw_random/n2-asm.S 

OBJS += \
./drivers/char/hw_random/amd-rng.o \
./drivers/char/hw_random/atmel-rng.o \
./drivers/char/hw_random/core.o \
./drivers/char/hw_random/geode-rng.o \
./drivers/char/hw_random/intel-rng.o \
./drivers/char/hw_random/ixp4xx-rng.o \
./drivers/char/hw_random/mxc-rnga.o \
./drivers/char/hw_random/n2-asm.o \
./drivers/char/hw_random/n2-drv.o \
./drivers/char/hw_random/nomadik-rng.o \
./drivers/char/hw_random/octeon-rng.o \
./drivers/char/hw_random/omap-rng.o \
./drivers/char/hw_random/pasemi-rng.o \
./drivers/char/hw_random/picoxcell-rng.o \
./drivers/char/hw_random/ppc4xx-rng.o \
./drivers/char/hw_random/timeriomem-rng.o \
./drivers/char/hw_random/tx4939-rng.o \
./drivers/char/hw_random/via-rng.o \
./drivers/char/hw_random/virtio-rng.o 

C_DEPS += \
./drivers/char/hw_random/amd-rng.d \
./drivers/char/hw_random/atmel-rng.d \
./drivers/char/hw_random/core.d \
./drivers/char/hw_random/geode-rng.d \
./drivers/char/hw_random/intel-rng.d \
./drivers/char/hw_random/ixp4xx-rng.d \
./drivers/char/hw_random/mxc-rnga.d \
./drivers/char/hw_random/n2-drv.d \
./drivers/char/hw_random/nomadik-rng.d \
./drivers/char/hw_random/octeon-rng.d \
./drivers/char/hw_random/omap-rng.d \
./drivers/char/hw_random/pasemi-rng.d \
./drivers/char/hw_random/picoxcell-rng.d \
./drivers/char/hw_random/ppc4xx-rng.d \
./drivers/char/hw_random/timeriomem-rng.d \
./drivers/char/hw_random/tx4939-rng.d \
./drivers/char/hw_random/via-rng.d \
./drivers/char/hw_random/virtio-rng.d 

S_UPPER_DEPS += \
./drivers/char/hw_random/n2-asm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/char/hw_random/%.o: ../drivers/char/hw_random/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

drivers/char/hw_random/%.o: ../drivers/char/hw_random/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


