################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/mpi/generic_mpih-add1.c \
../lib/mpi/generic_mpih-lshift.c \
../lib/mpi/generic_mpih-mul1.c \
../lib/mpi/generic_mpih-mul2.c \
../lib/mpi/generic_mpih-mul3.c \
../lib/mpi/generic_mpih-rshift.c \
../lib/mpi/generic_mpih-sub1.c \
../lib/mpi/mpi-add.c \
../lib/mpi/mpi-bit.c \
../lib/mpi/mpi-cmp.c \
../lib/mpi/mpi-div.c \
../lib/mpi/mpi-gcd.c \
../lib/mpi/mpi-inline.c \
../lib/mpi/mpi-inv.c \
../lib/mpi/mpi-mpow.c \
../lib/mpi/mpi-mul.c \
../lib/mpi/mpi-pow.c \
../lib/mpi/mpi-scan.c \
../lib/mpi/mpicoder.c \
../lib/mpi/mpih-cmp.c \
../lib/mpi/mpih-div.c \
../lib/mpi/mpih-mul.c \
../lib/mpi/mpiutil.c 

OBJS += \
./lib/mpi/generic_mpih-add1.o \
./lib/mpi/generic_mpih-lshift.o \
./lib/mpi/generic_mpih-mul1.o \
./lib/mpi/generic_mpih-mul2.o \
./lib/mpi/generic_mpih-mul3.o \
./lib/mpi/generic_mpih-rshift.o \
./lib/mpi/generic_mpih-sub1.o \
./lib/mpi/mpi-add.o \
./lib/mpi/mpi-bit.o \
./lib/mpi/mpi-cmp.o \
./lib/mpi/mpi-div.o \
./lib/mpi/mpi-gcd.o \
./lib/mpi/mpi-inline.o \
./lib/mpi/mpi-inv.o \
./lib/mpi/mpi-mpow.o \
./lib/mpi/mpi-mul.o \
./lib/mpi/mpi-pow.o \
./lib/mpi/mpi-scan.o \
./lib/mpi/mpicoder.o \
./lib/mpi/mpih-cmp.o \
./lib/mpi/mpih-div.o \
./lib/mpi/mpih-mul.o \
./lib/mpi/mpiutil.o 

C_DEPS += \
./lib/mpi/generic_mpih-add1.d \
./lib/mpi/generic_mpih-lshift.d \
./lib/mpi/generic_mpih-mul1.d \
./lib/mpi/generic_mpih-mul2.d \
./lib/mpi/generic_mpih-mul3.d \
./lib/mpi/generic_mpih-rshift.d \
./lib/mpi/generic_mpih-sub1.d \
./lib/mpi/mpi-add.d \
./lib/mpi/mpi-bit.d \
./lib/mpi/mpi-cmp.d \
./lib/mpi/mpi-div.d \
./lib/mpi/mpi-gcd.d \
./lib/mpi/mpi-inline.d \
./lib/mpi/mpi-inv.d \
./lib/mpi/mpi-mpow.d \
./lib/mpi/mpi-mul.d \
./lib/mpi/mpi-pow.d \
./lib/mpi/mpi-scan.d \
./lib/mpi/mpicoder.d \
./lib/mpi/mpih-cmp.d \
./lib/mpi/mpih-div.d \
./lib/mpi/mpih-mul.d \
./lib/mpi/mpiutil.d 


# Each subdirectory must supply rules for building sources it contributes
lib/mpi/%.o: ../lib/mpi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


