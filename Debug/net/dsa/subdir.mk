################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/dsa/dsa.c \
../net/dsa/slave.c \
../net/dsa/tag_dsa.c \
../net/dsa/tag_edsa.c \
../net/dsa/tag_trailer.c 

OBJS += \
./net/dsa/dsa.o \
./net/dsa/slave.o \
./net/dsa/tag_dsa.o \
./net/dsa/tag_edsa.o \
./net/dsa/tag_trailer.o 

C_DEPS += \
./net/dsa/dsa.d \
./net/dsa/slave.d \
./net/dsa/tag_dsa.d \
./net/dsa/tag_edsa.d \
./net/dsa/tag_trailer.d 


# Each subdirectory must supply rules for building sources it contributes
net/dsa/%.o: ../net/dsa/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


