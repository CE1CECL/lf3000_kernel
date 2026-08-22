################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/crypto/built-in.o 

C_SRCS += \
../drivers/crypto/ace.c \
../drivers/crypto/geode-aes.c \
../drivers/crypto/hifn_795x.c \
../drivers/crypto/ixp4xx_crypto.c \
../drivers/crypto/mv_cesa.c \
../drivers/crypto/n2_core.c \
../drivers/crypto/omap-aes.c \
../drivers/crypto/omap-sham.c \
../drivers/crypto/padlock-aes.c \
../drivers/crypto/padlock-sha.c \
../drivers/crypto/picoxcell_crypto.c \
../drivers/crypto/s5p-sss.c \
../drivers/crypto/talitos.c \
../drivers/crypto/tegra-aes.c 

S_UPPER_SRCS += \
../drivers/crypto/n2_asm.S 

OBJS += \
./drivers/crypto/ace.o \
./drivers/crypto/geode-aes.o \
./drivers/crypto/hifn_795x.o \
./drivers/crypto/ixp4xx_crypto.o \
./drivers/crypto/mv_cesa.o \
./drivers/crypto/n2_asm.o \
./drivers/crypto/n2_core.o \
./drivers/crypto/omap-aes.o \
./drivers/crypto/omap-sham.o \
./drivers/crypto/padlock-aes.o \
./drivers/crypto/padlock-sha.o \
./drivers/crypto/picoxcell_crypto.o \
./drivers/crypto/s5p-sss.o \
./drivers/crypto/talitos.o \
./drivers/crypto/tegra-aes.o 

C_DEPS += \
./drivers/crypto/ace.d \
./drivers/crypto/geode-aes.d \
./drivers/crypto/hifn_795x.d \
./drivers/crypto/ixp4xx_crypto.d \
./drivers/crypto/mv_cesa.d \
./drivers/crypto/n2_core.d \
./drivers/crypto/omap-aes.d \
./drivers/crypto/omap-sham.d \
./drivers/crypto/padlock-aes.d \
./drivers/crypto/padlock-sha.d \
./drivers/crypto/picoxcell_crypto.d \
./drivers/crypto/s5p-sss.d \
./drivers/crypto/talitos.d \
./drivers/crypto/tegra-aes.d 

S_UPPER_DEPS += \
./drivers/crypto/n2_asm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/crypto/%.o: ../drivers/crypto/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

drivers/crypto/%.o: ../drivers/crypto/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


