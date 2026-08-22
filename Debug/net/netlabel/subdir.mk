################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/netlabel/netlabel_addrlist.c \
../net/netlabel/netlabel_cipso_v4.c \
../net/netlabel/netlabel_domainhash.c \
../net/netlabel/netlabel_kapi.c \
../net/netlabel/netlabel_mgmt.c \
../net/netlabel/netlabel_unlabeled.c \
../net/netlabel/netlabel_user.c 

OBJS += \
./net/netlabel/netlabel_addrlist.o \
./net/netlabel/netlabel_cipso_v4.o \
./net/netlabel/netlabel_domainhash.o \
./net/netlabel/netlabel_kapi.o \
./net/netlabel/netlabel_mgmt.o \
./net/netlabel/netlabel_unlabeled.o \
./net/netlabel/netlabel_user.o 

C_DEPS += \
./net/netlabel/netlabel_addrlist.d \
./net/netlabel/netlabel_cipso_v4.d \
./net/netlabel/netlabel_domainhash.d \
./net/netlabel/netlabel_kapi.d \
./net/netlabel/netlabel_mgmt.d \
./net/netlabel/netlabel_unlabeled.d \
./net/netlabel/netlabel_user.d 


# Each subdirectory must supply rules for building sources it contributes
net/netlabel/%.o: ../net/netlabel/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


