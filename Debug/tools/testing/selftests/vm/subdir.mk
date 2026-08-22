################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/testing/selftests/vm/hugepage-mmap.c \
../tools/testing/selftests/vm/hugepage-shm.c \
../tools/testing/selftests/vm/map_hugetlb.c 

OBJS += \
./tools/testing/selftests/vm/hugepage-mmap.o \
./tools/testing/selftests/vm/hugepage-shm.o \
./tools/testing/selftests/vm/map_hugetlb.o 

C_DEPS += \
./tools/testing/selftests/vm/hugepage-mmap.d \
./tools/testing/selftests/vm/hugepage-shm.d \
./tools/testing/selftests/vm/map_hugetlb.d 


# Each subdirectory must supply rules for building sources it contributes
tools/testing/selftests/vm/%.o: ../tools/testing/selftests/vm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


