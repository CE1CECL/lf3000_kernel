################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/davinci/davinci-evm.c \
../sound/soc/davinci/davinci-i2s.c \
../sound/soc/davinci/davinci-mcasp.c \
../sound/soc/davinci/davinci-pcm.c \
../sound/soc/davinci/davinci-sffsdr.c \
../sound/soc/davinci/davinci-vcif.c 

OBJS += \
./sound/soc/davinci/davinci-evm.o \
./sound/soc/davinci/davinci-i2s.o \
./sound/soc/davinci/davinci-mcasp.o \
./sound/soc/davinci/davinci-pcm.o \
./sound/soc/davinci/davinci-sffsdr.o \
./sound/soc/davinci/davinci-vcif.o 

C_DEPS += \
./sound/soc/davinci/davinci-evm.d \
./sound/soc/davinci/davinci-i2s.d \
./sound/soc/davinci/davinci-mcasp.d \
./sound/soc/davinci/davinci-pcm.d \
./sound/soc/davinci/davinci-sffsdr.d \
./sound/soc/davinci/davinci-vcif.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/davinci/%.o: ../sound/soc/davinci/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


