################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/lockd/built-in.o \
../fs/lockd/clnt4xdr.o \
../fs/lockd/clntlock.o \
../fs/lockd/clntproc.o \
../fs/lockd/clntxdr.o \
../fs/lockd/grace.o \
../fs/lockd/host.o \
../fs/lockd/lockd.o \
../fs/lockd/mon.o \
../fs/lockd/svc.o \
../fs/lockd/svc4proc.o \
../fs/lockd/svclock.o \
../fs/lockd/svcproc.o \
../fs/lockd/svcshare.o \
../fs/lockd/svcsubs.o \
../fs/lockd/xdr.o \
../fs/lockd/xdr4.o 

C_SRCS += \
../fs/lockd/clnt4xdr.c \
../fs/lockd/clntlock.c \
../fs/lockd/clntproc.c \
../fs/lockd/clntxdr.c \
../fs/lockd/grace.c \
../fs/lockd/host.c \
../fs/lockd/mon.c \
../fs/lockd/svc.c \
../fs/lockd/svc4proc.c \
../fs/lockd/svclock.c \
../fs/lockd/svcproc.c \
../fs/lockd/svcshare.c \
../fs/lockd/svcsubs.c \
../fs/lockd/xdr.c \
../fs/lockd/xdr4.c 

OBJS += \
./fs/lockd/clnt4xdr.o \
./fs/lockd/clntlock.o \
./fs/lockd/clntproc.o \
./fs/lockd/clntxdr.o \
./fs/lockd/grace.o \
./fs/lockd/host.o \
./fs/lockd/mon.o \
./fs/lockd/svc.o \
./fs/lockd/svc4proc.o \
./fs/lockd/svclock.o \
./fs/lockd/svcproc.o \
./fs/lockd/svcshare.o \
./fs/lockd/svcsubs.o \
./fs/lockd/xdr.o \
./fs/lockd/xdr4.o 

C_DEPS += \
./fs/lockd/clnt4xdr.d \
./fs/lockd/clntlock.d \
./fs/lockd/clntproc.d \
./fs/lockd/clntxdr.d \
./fs/lockd/grace.d \
./fs/lockd/host.d \
./fs/lockd/mon.d \
./fs/lockd/svc.d \
./fs/lockd/svc4proc.d \
./fs/lockd/svclock.d \
./fs/lockd/svcproc.d \
./fs/lockd/svcshare.d \
./fs/lockd/svcsubs.d \
./fs/lockd/xdr.d \
./fs/lockd/xdr4.d 


# Each subdirectory must supply rules for building sources it contributes
fs/lockd/%.o: ../fs/lockd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


