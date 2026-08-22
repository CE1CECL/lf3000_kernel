################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/xfrm/built-in.o \
../net/xfrm/xfrm_algo.o \
../net/xfrm/xfrm_hash.o \
../net/xfrm/xfrm_input.o \
../net/xfrm/xfrm_output.o \
../net/xfrm/xfrm_policy.o \
../net/xfrm/xfrm_replay.o \
../net/xfrm/xfrm_state.o \
../net/xfrm/xfrm_sysctl.o 

C_SRCS += \
../net/xfrm/xfrm_algo.c \
../net/xfrm/xfrm_hash.c \
../net/xfrm/xfrm_input.c \
../net/xfrm/xfrm_ipcomp.c \
../net/xfrm/xfrm_output.c \
../net/xfrm/xfrm_policy.c \
../net/xfrm/xfrm_proc.c \
../net/xfrm/xfrm_replay.c \
../net/xfrm/xfrm_state.c \
../net/xfrm/xfrm_sysctl.c \
../net/xfrm/xfrm_user.c 

OBJS += \
./net/xfrm/xfrm_algo.o \
./net/xfrm/xfrm_hash.o \
./net/xfrm/xfrm_input.o \
./net/xfrm/xfrm_ipcomp.o \
./net/xfrm/xfrm_output.o \
./net/xfrm/xfrm_policy.o \
./net/xfrm/xfrm_proc.o \
./net/xfrm/xfrm_replay.o \
./net/xfrm/xfrm_state.o \
./net/xfrm/xfrm_sysctl.o \
./net/xfrm/xfrm_user.o 

C_DEPS += \
./net/xfrm/xfrm_algo.d \
./net/xfrm/xfrm_hash.d \
./net/xfrm/xfrm_input.d \
./net/xfrm/xfrm_ipcomp.d \
./net/xfrm/xfrm_output.d \
./net/xfrm/xfrm_policy.d \
./net/xfrm/xfrm_proc.d \
./net/xfrm/xfrm_replay.d \
./net/xfrm/xfrm_state.d \
./net/xfrm/xfrm_sysctl.d \
./net/xfrm/xfrm_user.d 


# Each subdirectory must supply rules for building sources it contributes
net/xfrm/%.o: ../net/xfrm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


