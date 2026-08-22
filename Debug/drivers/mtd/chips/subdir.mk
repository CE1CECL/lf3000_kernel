################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mtd/chips/cfi_cmdset_0001.c \
../drivers/mtd/chips/cfi_cmdset_0002.c \
../drivers/mtd/chips/cfi_cmdset_0020.c \
../drivers/mtd/chips/cfi_probe.c \
../drivers/mtd/chips/cfi_util.c \
../drivers/mtd/chips/chipreg.c \
../drivers/mtd/chips/gen_probe.c \
../drivers/mtd/chips/jedec_probe.c \
../drivers/mtd/chips/map_absent.c \
../drivers/mtd/chips/map_ram.c \
../drivers/mtd/chips/map_rom.c 

OBJS += \
./drivers/mtd/chips/cfi_cmdset_0001.o \
./drivers/mtd/chips/cfi_cmdset_0002.o \
./drivers/mtd/chips/cfi_cmdset_0020.o \
./drivers/mtd/chips/cfi_probe.o \
./drivers/mtd/chips/cfi_util.o \
./drivers/mtd/chips/chipreg.o \
./drivers/mtd/chips/gen_probe.o \
./drivers/mtd/chips/jedec_probe.o \
./drivers/mtd/chips/map_absent.o \
./drivers/mtd/chips/map_ram.o \
./drivers/mtd/chips/map_rom.o 

C_DEPS += \
./drivers/mtd/chips/cfi_cmdset_0001.d \
./drivers/mtd/chips/cfi_cmdset_0002.d \
./drivers/mtd/chips/cfi_cmdset_0020.d \
./drivers/mtd/chips/cfi_probe.d \
./drivers/mtd/chips/cfi_util.d \
./drivers/mtd/chips/chipreg.d \
./drivers/mtd/chips/gen_probe.d \
./drivers/mtd/chips/jedec_probe.d \
./drivers/mtd/chips/map_absent.d \
./drivers/mtd/chips/map_ram.d \
./drivers/mtd/chips/map_rom.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mtd/chips/%.o: ../drivers/mtd/chips/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


