################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../security/tomoyo/audit.c \
../security/tomoyo/common.c \
../security/tomoyo/condition.c \
../security/tomoyo/domain.c \
../security/tomoyo/environ.c \
../security/tomoyo/file.c \
../security/tomoyo/gc.c \
../security/tomoyo/group.c \
../security/tomoyo/load_policy.c \
../security/tomoyo/memory.c \
../security/tomoyo/mount.c \
../security/tomoyo/network.c \
../security/tomoyo/realpath.c \
../security/tomoyo/securityfs_if.c \
../security/tomoyo/tomoyo.c \
../security/tomoyo/util.c 

OBJS += \
./security/tomoyo/audit.o \
./security/tomoyo/common.o \
./security/tomoyo/condition.o \
./security/tomoyo/domain.o \
./security/tomoyo/environ.o \
./security/tomoyo/file.o \
./security/tomoyo/gc.o \
./security/tomoyo/group.o \
./security/tomoyo/load_policy.o \
./security/tomoyo/memory.o \
./security/tomoyo/mount.o \
./security/tomoyo/network.o \
./security/tomoyo/realpath.o \
./security/tomoyo/securityfs_if.o \
./security/tomoyo/tomoyo.o \
./security/tomoyo/util.o 

C_DEPS += \
./security/tomoyo/audit.d \
./security/tomoyo/common.d \
./security/tomoyo/condition.d \
./security/tomoyo/domain.d \
./security/tomoyo/environ.d \
./security/tomoyo/file.d \
./security/tomoyo/gc.d \
./security/tomoyo/group.d \
./security/tomoyo/load_policy.d \
./security/tomoyo/memory.d \
./security/tomoyo/mount.d \
./security/tomoyo/network.d \
./security/tomoyo/realpath.d \
./security/tomoyo/securityfs_if.d \
./security/tomoyo/tomoyo.d \
./security/tomoyo/util.d 


# Each subdirectory must supply rules for building sources it contributes
security/tomoyo/%.o: ../security/tomoyo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


