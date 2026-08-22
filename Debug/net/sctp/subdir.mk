################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/sctp/associola.c \
../net/sctp/auth.c \
../net/sctp/bind_addr.c \
../net/sctp/chunk.c \
../net/sctp/command.c \
../net/sctp/debug.c \
../net/sctp/endpointola.c \
../net/sctp/input.c \
../net/sctp/inqueue.c \
../net/sctp/ipv6.c \
../net/sctp/objcnt.c \
../net/sctp/output.c \
../net/sctp/outqueue.c \
../net/sctp/primitive.c \
../net/sctp/probe.c \
../net/sctp/proc.c \
../net/sctp/protocol.c \
../net/sctp/sm_make_chunk.c \
../net/sctp/sm_sideeffect.c \
../net/sctp/sm_statefuns.c \
../net/sctp/sm_statetable.c \
../net/sctp/socket.c \
../net/sctp/ssnmap.c \
../net/sctp/sysctl.c \
../net/sctp/transport.c \
../net/sctp/tsnmap.c \
../net/sctp/ulpevent.c \
../net/sctp/ulpqueue.c 

OBJS += \
./net/sctp/associola.o \
./net/sctp/auth.o \
./net/sctp/bind_addr.o \
./net/sctp/chunk.o \
./net/sctp/command.o \
./net/sctp/debug.o \
./net/sctp/endpointola.o \
./net/sctp/input.o \
./net/sctp/inqueue.o \
./net/sctp/ipv6.o \
./net/sctp/objcnt.o \
./net/sctp/output.o \
./net/sctp/outqueue.o \
./net/sctp/primitive.o \
./net/sctp/probe.o \
./net/sctp/proc.o \
./net/sctp/protocol.o \
./net/sctp/sm_make_chunk.o \
./net/sctp/sm_sideeffect.o \
./net/sctp/sm_statefuns.o \
./net/sctp/sm_statetable.o \
./net/sctp/socket.o \
./net/sctp/ssnmap.o \
./net/sctp/sysctl.o \
./net/sctp/transport.o \
./net/sctp/tsnmap.o \
./net/sctp/ulpevent.o \
./net/sctp/ulpqueue.o 

C_DEPS += \
./net/sctp/associola.d \
./net/sctp/auth.d \
./net/sctp/bind_addr.d \
./net/sctp/chunk.d \
./net/sctp/command.d \
./net/sctp/debug.d \
./net/sctp/endpointola.d \
./net/sctp/input.d \
./net/sctp/inqueue.d \
./net/sctp/ipv6.d \
./net/sctp/objcnt.d \
./net/sctp/output.d \
./net/sctp/outqueue.d \
./net/sctp/primitive.d \
./net/sctp/probe.d \
./net/sctp/proc.d \
./net/sctp/protocol.d \
./net/sctp/sm_make_chunk.d \
./net/sctp/sm_sideeffect.d \
./net/sctp/sm_statefuns.d \
./net/sctp/sm_statetable.d \
./net/sctp/socket.d \
./net/sctp/ssnmap.d \
./net/sctp/sysctl.d \
./net/sctp/transport.d \
./net/sctp/tsnmap.d \
./net/sctp/ulpevent.d \
./net/sctp/ulpqueue.d 


# Each subdirectory must supply rules for building sources it contributes
net/sctp/%.o: ../net/sctp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


