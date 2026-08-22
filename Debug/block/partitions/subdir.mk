################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../block/partitions/built-in.o \
../block/partitions/check.o \
../block/partitions/msdos.o 

C_SRCS += \
../block/partitions/acorn.c \
../block/partitions/amiga.c \
../block/partitions/atari.c \
../block/partitions/check.c \
../block/partitions/efi.c \
../block/partitions/ibm.c \
../block/partitions/karma.c \
../block/partitions/ldm.c \
../block/partitions/mac.c \
../block/partitions/msdos.c \
../block/partitions/osf.c \
../block/partitions/sgi.c \
../block/partitions/sun.c \
../block/partitions/sysv68.c \
../block/partitions/ultrix.c 

OBJS += \
./block/partitions/acorn.o \
./block/partitions/amiga.o \
./block/partitions/atari.o \
./block/partitions/check.o \
./block/partitions/efi.o \
./block/partitions/ibm.o \
./block/partitions/karma.o \
./block/partitions/ldm.o \
./block/partitions/mac.o \
./block/partitions/msdos.o \
./block/partitions/osf.o \
./block/partitions/sgi.o \
./block/partitions/sun.o \
./block/partitions/sysv68.o \
./block/partitions/ultrix.o 

C_DEPS += \
./block/partitions/acorn.d \
./block/partitions/amiga.d \
./block/partitions/atari.d \
./block/partitions/check.d \
./block/partitions/efi.d \
./block/partitions/ibm.d \
./block/partitions/karma.d \
./block/partitions/ldm.d \
./block/partitions/mac.d \
./block/partitions/msdos.d \
./block/partitions/osf.d \
./block/partitions/sgi.d \
./block/partitions/sun.d \
./block/partitions/sysv68.d \
./block/partitions/ultrix.d 


# Each subdirectory must supply rules for building sources it contributes
block/partitions/%.o: ../block/partitions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


