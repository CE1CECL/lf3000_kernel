################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../security/apparmor/apparmorfs.c \
../security/apparmor/audit.c \
../security/apparmor/capability.c \
../security/apparmor/context.c \
../security/apparmor/domain.c \
../security/apparmor/file.c \
../security/apparmor/ipc.c \
../security/apparmor/lib.c \
../security/apparmor/lsm.c \
../security/apparmor/match.c \
../security/apparmor/path.c \
../security/apparmor/policy.c \
../security/apparmor/policy_unpack.c \
../security/apparmor/procattr.c \
../security/apparmor/resource.c \
../security/apparmor/sid.c 

OBJS += \
./security/apparmor/apparmorfs.o \
./security/apparmor/audit.o \
./security/apparmor/capability.o \
./security/apparmor/context.o \
./security/apparmor/domain.o \
./security/apparmor/file.o \
./security/apparmor/ipc.o \
./security/apparmor/lib.o \
./security/apparmor/lsm.o \
./security/apparmor/match.o \
./security/apparmor/path.o \
./security/apparmor/policy.o \
./security/apparmor/policy_unpack.o \
./security/apparmor/procattr.o \
./security/apparmor/resource.o \
./security/apparmor/sid.o 

C_DEPS += \
./security/apparmor/apparmorfs.d \
./security/apparmor/audit.d \
./security/apparmor/capability.d \
./security/apparmor/context.d \
./security/apparmor/domain.d \
./security/apparmor/file.d \
./security/apparmor/ipc.d \
./security/apparmor/lib.d \
./security/apparmor/lsm.d \
./security/apparmor/match.d \
./security/apparmor/path.d \
./security/apparmor/policy.d \
./security/apparmor/policy_unpack.d \
./security/apparmor/procattr.d \
./security/apparmor/resource.d \
./security/apparmor/sid.d 


# Each subdirectory must supply rules for building sources it contributes
security/apparmor/%.o: ../security/apparmor/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


