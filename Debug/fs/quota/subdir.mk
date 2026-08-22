################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/quota/built-in.o 

C_SRCS += \
../fs/quota/compat.c \
../fs/quota/dquot.c \
../fs/quota/netlink.c \
../fs/quota/quota.c \
../fs/quota/quota_tree.c \
../fs/quota/quota_v1.c \
../fs/quota/quota_v2.c 

OBJS += \
./fs/quota/compat.o \
./fs/quota/dquot.o \
./fs/quota/netlink.o \
./fs/quota/quota.o \
./fs/quota/quota_tree.o \
./fs/quota/quota_v1.o \
./fs/quota/quota_v2.o 

C_DEPS += \
./fs/quota/compat.d \
./fs/quota/dquot.d \
./fs/quota/netlink.d \
./fs/quota/quota.d \
./fs/quota/quota_tree.d \
./fs/quota/quota_v1.d \
./fs/quota/quota_v2.d 


# Each subdirectory must supply rules for building sources it contributes
fs/quota/%.o: ../fs/quota/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


