################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mtd/onenand/generic.c \
../drivers/mtd/onenand/omap2.c \
../drivers/mtd/onenand/onenand_base.c \
../drivers/mtd/onenand/onenand_bbt.c \
../drivers/mtd/onenand/onenand_sim.c \
../drivers/mtd/onenand/samsung.c 

OBJS += \
./drivers/mtd/onenand/generic.o \
./drivers/mtd/onenand/omap2.o \
./drivers/mtd/onenand/onenand_base.o \
./drivers/mtd/onenand/onenand_bbt.o \
./drivers/mtd/onenand/onenand_sim.o \
./drivers/mtd/onenand/samsung.o 

C_DEPS += \
./drivers/mtd/onenand/generic.d \
./drivers/mtd/onenand/omap2.d \
./drivers/mtd/onenand/onenand_base.d \
./drivers/mtd/onenand/onenand_bbt.d \
./drivers/mtd/onenand/onenand_sim.d \
./drivers/mtd/onenand/samsung.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mtd/onenand/%.o: ../drivers/mtd/onenand/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


