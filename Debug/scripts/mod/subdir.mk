################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../scripts/mod/empty.o \
../scripts/mod/file2alias.o \
../scripts/mod/modpost.o \
../scripts/mod/sumversion.o 

C_SRCS += \
../scripts/mod/empty.c \
../scripts/mod/file2alias.c \
../scripts/mod/mk_elfconfig.c \
../scripts/mod/modpost.c \
../scripts/mod/sumversion.c 

OBJS += \
./scripts/mod/empty.o \
./scripts/mod/file2alias.o \
./scripts/mod/mk_elfconfig.o \
./scripts/mod/modpost.o \
./scripts/mod/sumversion.o 

C_DEPS += \
./scripts/mod/empty.d \
./scripts/mod/file2alias.d \
./scripts/mod/mk_elfconfig.d \
./scripts/mod/modpost.d \
./scripts/mod/sumversion.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/mod/%.o: ../scripts/mod/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


