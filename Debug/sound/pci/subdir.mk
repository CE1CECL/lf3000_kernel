################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/ad1889.c \
../sound/pci/ak4531_codec.c \
../sound/pci/als300.c \
../sound/pci/als4000.c \
../sound/pci/atiixp.c \
../sound/pci/atiixp_modem.c \
../sound/pci/azt3328.c \
../sound/pci/bt87x.c \
../sound/pci/cmipci.c \
../sound/pci/cs4281.c \
../sound/pci/cs5530.c \
../sound/pci/ens1370.c \
../sound/pci/ens1371.c \
../sound/pci/es1938.c \
../sound/pci/es1968.c \
../sound/pci/fm801.c \
../sound/pci/intel8x0.c \
../sound/pci/intel8x0m.c \
../sound/pci/maestro3.c \
../sound/pci/rme32.c \
../sound/pci/rme96.c \
../sound/pci/sis7019.c \
../sound/pci/sonicvibes.c \
../sound/pci/via82xx.c \
../sound/pci/via82xx_modem.c 

OBJS += \
./sound/pci/ad1889.o \
./sound/pci/ak4531_codec.o \
./sound/pci/als300.o \
./sound/pci/als4000.o \
./sound/pci/atiixp.o \
./sound/pci/atiixp_modem.o \
./sound/pci/azt3328.o \
./sound/pci/bt87x.o \
./sound/pci/cmipci.o \
./sound/pci/cs4281.o \
./sound/pci/cs5530.o \
./sound/pci/ens1370.o \
./sound/pci/ens1371.o \
./sound/pci/es1938.o \
./sound/pci/es1968.o \
./sound/pci/fm801.o \
./sound/pci/intel8x0.o \
./sound/pci/intel8x0m.o \
./sound/pci/maestro3.o \
./sound/pci/rme32.o \
./sound/pci/rme96.o \
./sound/pci/sis7019.o \
./sound/pci/sonicvibes.o \
./sound/pci/via82xx.o \
./sound/pci/via82xx_modem.o 

C_DEPS += \
./sound/pci/ad1889.d \
./sound/pci/ak4531_codec.d \
./sound/pci/als300.d \
./sound/pci/als4000.d \
./sound/pci/atiixp.d \
./sound/pci/atiixp_modem.d \
./sound/pci/azt3328.d \
./sound/pci/bt87x.d \
./sound/pci/cmipci.d \
./sound/pci/cs4281.d \
./sound/pci/cs5530.d \
./sound/pci/ens1370.d \
./sound/pci/ens1371.d \
./sound/pci/es1938.d \
./sound/pci/es1968.d \
./sound/pci/fm801.d \
./sound/pci/intel8x0.d \
./sound/pci/intel8x0m.d \
./sound/pci/maestro3.d \
./sound/pci/rme32.d \
./sound/pci/rme96.d \
./sound/pci/sis7019.d \
./sound/pci/sonicvibes.d \
./sound/pci/via82xx.d \
./sound/pci/via82xx_modem.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/%.o: ../sound/pci/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


