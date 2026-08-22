################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../security/selinux/ss/avtab.c \
../security/selinux/ss/conditional.c \
../security/selinux/ss/ebitmap.c \
../security/selinux/ss/hashtab.c \
../security/selinux/ss/mls.c \
../security/selinux/ss/policydb.c \
../security/selinux/ss/services.c \
../security/selinux/ss/sidtab.c \
../security/selinux/ss/status.c \
../security/selinux/ss/symtab.c 

OBJS += \
./security/selinux/ss/avtab.o \
./security/selinux/ss/conditional.o \
./security/selinux/ss/ebitmap.o \
./security/selinux/ss/hashtab.o \
./security/selinux/ss/mls.o \
./security/selinux/ss/policydb.o \
./security/selinux/ss/services.o \
./security/selinux/ss/sidtab.o \
./security/selinux/ss/status.o \
./security/selinux/ss/symtab.o 

C_DEPS += \
./security/selinux/ss/avtab.d \
./security/selinux/ss/conditional.d \
./security/selinux/ss/ebitmap.d \
./security/selinux/ss/hashtab.d \
./security/selinux/ss/mls.d \
./security/selinux/ss/policydb.d \
./security/selinux/ss/services.d \
./security/selinux/ss/sidtab.d \
./security/selinux/ss/status.d \
./security/selinux/ss/symtab.d 


# Each subdirectory must supply rules for building sources it contributes
security/selinux/ss/%.o: ../security/selinux/ss/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


