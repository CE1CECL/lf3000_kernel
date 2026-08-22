################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../scripts/dtc/checks.c \
../scripts/dtc/data.c \
../scripts/dtc/dtc.c \
../scripts/dtc/flattree.c \
../scripts/dtc/fstree.c \
../scripts/dtc/livetree.c \
../scripts/dtc/srcpos.c \
../scripts/dtc/treesource.c \
../scripts/dtc/util.c 

OBJS += \
./scripts/dtc/checks.o \
./scripts/dtc/data.o \
./scripts/dtc/dtc.o \
./scripts/dtc/flattree.o \
./scripts/dtc/fstree.o \
./scripts/dtc/livetree.o \
./scripts/dtc/srcpos.o \
./scripts/dtc/treesource.o \
./scripts/dtc/util.o 

C_DEPS += \
./scripts/dtc/checks.d \
./scripts/dtc/data.d \
./scripts/dtc/dtc.d \
./scripts/dtc/flattree.d \
./scripts/dtc/fstree.d \
./scripts/dtc/livetree.d \
./scripts/dtc/srcpos.d \
./scripts/dtc/treesource.d \
./scripts/dtc/util.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/dtc/%.o: ../scripts/dtc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


