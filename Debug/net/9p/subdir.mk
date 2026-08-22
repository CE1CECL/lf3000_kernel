################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/9p/client.c \
../net/9p/error.c \
../net/9p/mod.c \
../net/9p/protocol.c \
../net/9p/trans_common.c \
../net/9p/trans_fd.c \
../net/9p/trans_rdma.c \
../net/9p/trans_virtio.c \
../net/9p/util.c 

OBJS += \
./net/9p/client.o \
./net/9p/error.o \
./net/9p/mod.o \
./net/9p/protocol.o \
./net/9p/trans_common.o \
./net/9p/trans_fd.o \
./net/9p/trans_rdma.o \
./net/9p/trans_virtio.o \
./net/9p/util.o 

C_DEPS += \
./net/9p/client.d \
./net/9p/error.d \
./net/9p/mod.d \
./net/9p/protocol.d \
./net/9p/trans_common.d \
./net/9p/trans_fd.d \
./net/9p/trans_rdma.d \
./net/9p/trans_virtio.d \
./net/9p/util.d 


# Each subdirectory must supply rules for building sources it contributes
net/9p/%.o: ../net/9p/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


