################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../kernel/irq/autoprobe.o \
../kernel/irq/built-in.o \
../kernel/irq/chip.o \
../kernel/irq/devres.o \
../kernel/irq/dummychip.o \
../kernel/irq/handle.o \
../kernel/irq/irqdesc.o \
../kernel/irq/irqdomain.o \
../kernel/irq/manage.o \
../kernel/irq/pm.o \
../kernel/irq/proc.o \
../kernel/irq/resend.o \
../kernel/irq/spurious.o 

C_SRCS += \
../kernel/irq/autoprobe.c \
../kernel/irq/chip.c \
../kernel/irq/devres.c \
../kernel/irq/dummychip.c \
../kernel/irq/generic-chip.c \
../kernel/irq/handle.c \
../kernel/irq/irqdesc.c \
../kernel/irq/irqdomain.c \
../kernel/irq/manage.c \
../kernel/irq/migration.c \
../kernel/irq/pm.c \
../kernel/irq/proc.c \
../kernel/irq/resend.c \
../kernel/irq/spurious.c 

OBJS += \
./kernel/irq/autoprobe.o \
./kernel/irq/chip.o \
./kernel/irq/devres.o \
./kernel/irq/dummychip.o \
./kernel/irq/generic-chip.o \
./kernel/irq/handle.o \
./kernel/irq/irqdesc.o \
./kernel/irq/irqdomain.o \
./kernel/irq/manage.o \
./kernel/irq/migration.o \
./kernel/irq/pm.o \
./kernel/irq/proc.o \
./kernel/irq/resend.o \
./kernel/irq/spurious.o 

C_DEPS += \
./kernel/irq/autoprobe.d \
./kernel/irq/chip.d \
./kernel/irq/devres.d \
./kernel/irq/dummychip.d \
./kernel/irq/generic-chip.d \
./kernel/irq/handle.d \
./kernel/irq/irqdesc.d \
./kernel/irq/irqdomain.d \
./kernel/irq/manage.d \
./kernel/irq/migration.d \
./kernel/irq/pm.d \
./kernel/irq/proc.d \
./kernel/irq/resend.d \
./kernel/irq/spurious.d 


# Each subdirectory must supply rules for building sources it contributes
kernel/irq/%.o: ../kernel/irq/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


