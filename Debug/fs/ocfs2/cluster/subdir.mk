################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/ocfs2/cluster/heartbeat.c \
../fs/ocfs2/cluster/masklog.c \
../fs/ocfs2/cluster/netdebug.c \
../fs/ocfs2/cluster/nodemanager.c \
../fs/ocfs2/cluster/quorum.c \
../fs/ocfs2/cluster/sys.c \
../fs/ocfs2/cluster/tcp.c \
../fs/ocfs2/cluster/ver.c 

OBJS += \
./fs/ocfs2/cluster/heartbeat.o \
./fs/ocfs2/cluster/masklog.o \
./fs/ocfs2/cluster/netdebug.o \
./fs/ocfs2/cluster/nodemanager.o \
./fs/ocfs2/cluster/quorum.o \
./fs/ocfs2/cluster/sys.o \
./fs/ocfs2/cluster/tcp.o \
./fs/ocfs2/cluster/ver.o 

C_DEPS += \
./fs/ocfs2/cluster/heartbeat.d \
./fs/ocfs2/cluster/masklog.d \
./fs/ocfs2/cluster/netdebug.d \
./fs/ocfs2/cluster/nodemanager.d \
./fs/ocfs2/cluster/quorum.d \
./fs/ocfs2/cluster/sys.d \
./fs/ocfs2/cluster/tcp.d \
./fs/ocfs2/cluster/ver.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ocfs2/cluster/%.o: ../fs/ocfs2/cluster/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


