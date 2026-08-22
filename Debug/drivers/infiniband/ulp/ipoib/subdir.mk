################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/infiniband/ulp/ipoib/ipoib_cm.c \
../drivers/infiniband/ulp/ipoib/ipoib_ethtool.c \
../drivers/infiniband/ulp/ipoib/ipoib_fs.c \
../drivers/infiniband/ulp/ipoib/ipoib_ib.c \
../drivers/infiniband/ulp/ipoib/ipoib_main.c \
../drivers/infiniband/ulp/ipoib/ipoib_multicast.c \
../drivers/infiniband/ulp/ipoib/ipoib_verbs.c \
../drivers/infiniband/ulp/ipoib/ipoib_vlan.c 

OBJS += \
./drivers/infiniband/ulp/ipoib/ipoib_cm.o \
./drivers/infiniband/ulp/ipoib/ipoib_ethtool.o \
./drivers/infiniband/ulp/ipoib/ipoib_fs.o \
./drivers/infiniband/ulp/ipoib/ipoib_ib.o \
./drivers/infiniband/ulp/ipoib/ipoib_main.o \
./drivers/infiniband/ulp/ipoib/ipoib_multicast.o \
./drivers/infiniband/ulp/ipoib/ipoib_verbs.o \
./drivers/infiniband/ulp/ipoib/ipoib_vlan.o 

C_DEPS += \
./drivers/infiniband/ulp/ipoib/ipoib_cm.d \
./drivers/infiniband/ulp/ipoib/ipoib_ethtool.d \
./drivers/infiniband/ulp/ipoib/ipoib_fs.d \
./drivers/infiniband/ulp/ipoib/ipoib_ib.d \
./drivers/infiniband/ulp/ipoib/ipoib_main.d \
./drivers/infiniband/ulp/ipoib/ipoib_multicast.d \
./drivers/infiniband/ulp/ipoib/ipoib_verbs.d \
./drivers/infiniband/ulp/ipoib/ipoib_vlan.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/infiniband/ulp/ipoib/%.o: ../drivers/infiniband/ulp/ipoib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


