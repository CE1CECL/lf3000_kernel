################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/ocfs2/dlmfs/dlmfs.c \
../fs/ocfs2/dlmfs/dlmfsver.c \
../fs/ocfs2/dlmfs/userdlm.c 

OBJS += \
./fs/ocfs2/dlmfs/dlmfs.o \
./fs/ocfs2/dlmfs/dlmfsver.o \
./fs/ocfs2/dlmfs/userdlm.o 

C_DEPS += \
./fs/ocfs2/dlmfs/dlmfs.d \
./fs/ocfs2/dlmfs/dlmfsver.d \
./fs/ocfs2/dlmfs/userdlm.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ocfs2/dlmfs/%.o: ../fs/ocfs2/dlmfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


