################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/rxrpc/af_rxrpc.c \
../net/rxrpc/ar-accept.c \
../net/rxrpc/ar-ack.c \
../net/rxrpc/ar-call.c \
../net/rxrpc/ar-connection.c \
../net/rxrpc/ar-connevent.c \
../net/rxrpc/ar-error.c \
../net/rxrpc/ar-input.c \
../net/rxrpc/ar-key.c \
../net/rxrpc/ar-local.c \
../net/rxrpc/ar-output.c \
../net/rxrpc/ar-peer.c \
../net/rxrpc/ar-proc.c \
../net/rxrpc/ar-recvmsg.c \
../net/rxrpc/ar-security.c \
../net/rxrpc/ar-skbuff.c \
../net/rxrpc/ar-transport.c \
../net/rxrpc/rxkad.c 

OBJS += \
./net/rxrpc/af_rxrpc.o \
./net/rxrpc/ar-accept.o \
./net/rxrpc/ar-ack.o \
./net/rxrpc/ar-call.o \
./net/rxrpc/ar-connection.o \
./net/rxrpc/ar-connevent.o \
./net/rxrpc/ar-error.o \
./net/rxrpc/ar-input.o \
./net/rxrpc/ar-key.o \
./net/rxrpc/ar-local.o \
./net/rxrpc/ar-output.o \
./net/rxrpc/ar-peer.o \
./net/rxrpc/ar-proc.o \
./net/rxrpc/ar-recvmsg.o \
./net/rxrpc/ar-security.o \
./net/rxrpc/ar-skbuff.o \
./net/rxrpc/ar-transport.o \
./net/rxrpc/rxkad.o 

C_DEPS += \
./net/rxrpc/af_rxrpc.d \
./net/rxrpc/ar-accept.d \
./net/rxrpc/ar-ack.d \
./net/rxrpc/ar-call.d \
./net/rxrpc/ar-connection.d \
./net/rxrpc/ar-connevent.d \
./net/rxrpc/ar-error.d \
./net/rxrpc/ar-input.d \
./net/rxrpc/ar-key.d \
./net/rxrpc/ar-local.d \
./net/rxrpc/ar-output.d \
./net/rxrpc/ar-peer.d \
./net/rxrpc/ar-proc.d \
./net/rxrpc/ar-recvmsg.d \
./net/rxrpc/ar-security.d \
./net/rxrpc/ar-skbuff.d \
./net/rxrpc/ar-transport.d \
./net/rxrpc/rxkad.d 


# Each subdirectory must supply rules for building sources it contributes
net/rxrpc/%.o: ../net/rxrpc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


