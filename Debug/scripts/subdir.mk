################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../scripts/bin2c.c \
../scripts/conmakehash.c \
../scripts/docproc.c \
../scripts/kallsyms.c \
../scripts/pnmtologo.c \
../scripts/recordmcount.c \
../scripts/unifdef.c 

OBJS += \
./scripts/bin2c.o \
./scripts/conmakehash.o \
./scripts/docproc.o \
./scripts/kallsyms.o \
./scripts/pnmtologo.o \
./scripts/recordmcount.o \
./scripts/unifdef.o 

C_DEPS += \
./scripts/bin2c.d \
./scripts/conmakehash.d \
./scripts/docproc.d \
./scripts/kallsyms.d \
./scripts/pnmtologo.d \
./scripts/recordmcount.d \
./scripts/unifdef.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/%.o: ../scripts/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


