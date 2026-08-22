################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/ctxfi/ctamixer.c \
../sound/pci/ctxfi/ctatc.c \
../sound/pci/ctxfi/ctdaio.c \
../sound/pci/ctxfi/cthardware.c \
../sound/pci/ctxfi/cthw20k1.c \
../sound/pci/ctxfi/cthw20k2.c \
../sound/pci/ctxfi/ctimap.c \
../sound/pci/ctxfi/ctmixer.c \
../sound/pci/ctxfi/ctpcm.c \
../sound/pci/ctxfi/ctresource.c \
../sound/pci/ctxfi/ctsrc.c \
../sound/pci/ctxfi/cttimer.c \
../sound/pci/ctxfi/ctvmem.c \
../sound/pci/ctxfi/xfi.c 

OBJS += \
./sound/pci/ctxfi/ctamixer.o \
./sound/pci/ctxfi/ctatc.o \
./sound/pci/ctxfi/ctdaio.o \
./sound/pci/ctxfi/cthardware.o \
./sound/pci/ctxfi/cthw20k1.o \
./sound/pci/ctxfi/cthw20k2.o \
./sound/pci/ctxfi/ctimap.o \
./sound/pci/ctxfi/ctmixer.o \
./sound/pci/ctxfi/ctpcm.o \
./sound/pci/ctxfi/ctresource.o \
./sound/pci/ctxfi/ctsrc.o \
./sound/pci/ctxfi/cttimer.o \
./sound/pci/ctxfi/ctvmem.o \
./sound/pci/ctxfi/xfi.o 

C_DEPS += \
./sound/pci/ctxfi/ctamixer.d \
./sound/pci/ctxfi/ctatc.d \
./sound/pci/ctxfi/ctdaio.d \
./sound/pci/ctxfi/cthardware.d \
./sound/pci/ctxfi/cthw20k1.d \
./sound/pci/ctxfi/cthw20k2.d \
./sound/pci/ctxfi/ctimap.d \
./sound/pci/ctxfi/ctmixer.d \
./sound/pci/ctxfi/ctpcm.d \
./sound/pci/ctxfi/ctresource.d \
./sound/pci/ctxfi/ctsrc.d \
./sound/pci/ctxfi/cttimer.d \
./sound/pci/ctxfi/ctvmem.d \
./sound/pci/ctxfi/xfi.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/ctxfi/%.o: ../sound/pci/ctxfi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


