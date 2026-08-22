################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../scripts/dtc/libfdt/fdt.c \
../scripts/dtc/libfdt/fdt_ro.c \
../scripts/dtc/libfdt/fdt_rw.c \
../scripts/dtc/libfdt/fdt_strerror.c \
../scripts/dtc/libfdt/fdt_sw.c \
../scripts/dtc/libfdt/fdt_wip.c 

OBJS += \
./scripts/dtc/libfdt/fdt.o \
./scripts/dtc/libfdt/fdt_ro.o \
./scripts/dtc/libfdt/fdt_rw.o \
./scripts/dtc/libfdt/fdt_strerror.o \
./scripts/dtc/libfdt/fdt_sw.o \
./scripts/dtc/libfdt/fdt_wip.o 

C_DEPS += \
./scripts/dtc/libfdt/fdt.d \
./scripts/dtc/libfdt/fdt_ro.d \
./scripts/dtc/libfdt/fdt_rw.d \
./scripts/dtc/libfdt/fdt_strerror.d \
./scripts/dtc/libfdt/fdt_sw.d \
./scripts/dtc/libfdt/fdt_wip.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/dtc/libfdt/%.o: ../scripts/dtc/libfdt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


