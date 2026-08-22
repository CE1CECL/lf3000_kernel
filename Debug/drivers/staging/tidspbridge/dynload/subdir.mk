################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/tidspbridge/dynload/cload.c \
../drivers/staging/tidspbridge/dynload/getsection.c \
../drivers/staging/tidspbridge/dynload/reloc.c \
../drivers/staging/tidspbridge/dynload/reloc_table_c6000.c \
../drivers/staging/tidspbridge/dynload/tramp.c \
../drivers/staging/tidspbridge/dynload/tramp_table_c6000.c 

OBJS += \
./drivers/staging/tidspbridge/dynload/cload.o \
./drivers/staging/tidspbridge/dynload/getsection.o \
./drivers/staging/tidspbridge/dynload/reloc.o \
./drivers/staging/tidspbridge/dynload/reloc_table_c6000.o \
./drivers/staging/tidspbridge/dynload/tramp.o \
./drivers/staging/tidspbridge/dynload/tramp_table_c6000.o 

C_DEPS += \
./drivers/staging/tidspbridge/dynload/cload.d \
./drivers/staging/tidspbridge/dynload/getsection.d \
./drivers/staging/tidspbridge/dynload/reloc.d \
./drivers/staging/tidspbridge/dynload/reloc_table_c6000.d \
./drivers/staging/tidspbridge/dynload/tramp.d \
./drivers/staging/tidspbridge/dynload/tramp_table_c6000.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/tidspbridge/dynload/%.o: ../drivers/staging/tidspbridge/dynload/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


