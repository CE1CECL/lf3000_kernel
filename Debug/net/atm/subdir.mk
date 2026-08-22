################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/atm/addr.c \
../net/atm/atm_misc.c \
../net/atm/atm_sysfs.c \
../net/atm/br2684.c \
../net/atm/clip.c \
../net/atm/common.c \
../net/atm/ioctl.c \
../net/atm/lec.c \
../net/atm/mpc.c \
../net/atm/mpoa_caches.c \
../net/atm/mpoa_proc.c \
../net/atm/pppoatm.c \
../net/atm/proc.c \
../net/atm/pvc.c \
../net/atm/raw.c \
../net/atm/resources.c \
../net/atm/signaling.c \
../net/atm/svc.c 

OBJS += \
./net/atm/addr.o \
./net/atm/atm_misc.o \
./net/atm/atm_sysfs.o \
./net/atm/br2684.o \
./net/atm/clip.o \
./net/atm/common.o \
./net/atm/ioctl.o \
./net/atm/lec.o \
./net/atm/mpc.o \
./net/atm/mpoa_caches.o \
./net/atm/mpoa_proc.o \
./net/atm/pppoatm.o \
./net/atm/proc.o \
./net/atm/pvc.o \
./net/atm/raw.o \
./net/atm/resources.o \
./net/atm/signaling.o \
./net/atm/svc.o 

C_DEPS += \
./net/atm/addr.d \
./net/atm/atm_misc.d \
./net/atm/atm_sysfs.d \
./net/atm/br2684.d \
./net/atm/clip.d \
./net/atm/common.d \
./net/atm/ioctl.d \
./net/atm/lec.d \
./net/atm/mpc.d \
./net/atm/mpoa_caches.d \
./net/atm/mpoa_proc.d \
./net/atm/pppoatm.d \
./net/atm/proc.d \
./net/atm/pvc.d \
./net/atm/raw.d \
./net/atm/resources.d \
./net/atm/signaling.d \
./net/atm/svc.d 


# Each subdirectory must supply rules for building sources it contributes
net/atm/%.o: ../net/atm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


