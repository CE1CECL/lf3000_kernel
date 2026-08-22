################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/infiniband/core/addr.c \
../drivers/infiniband/core/agent.c \
../drivers/infiniband/core/cache.c \
../drivers/infiniband/core/cm.c \
../drivers/infiniband/core/cma.c \
../drivers/infiniband/core/device.c \
../drivers/infiniband/core/fmr_pool.c \
../drivers/infiniband/core/iwcm.c \
../drivers/infiniband/core/mad.c \
../drivers/infiniband/core/mad_rmpp.c \
../drivers/infiniband/core/multicast.c \
../drivers/infiniband/core/netlink.c \
../drivers/infiniband/core/packer.c \
../drivers/infiniband/core/sa_query.c \
../drivers/infiniband/core/smi.c \
../drivers/infiniband/core/sysfs.c \
../drivers/infiniband/core/ucm.c \
../drivers/infiniband/core/ucma.c \
../drivers/infiniband/core/ud_header.c \
../drivers/infiniband/core/umem.c \
../drivers/infiniband/core/user_mad.c \
../drivers/infiniband/core/uverbs_cmd.c \
../drivers/infiniband/core/uverbs_main.c \
../drivers/infiniband/core/uverbs_marshall.c \
../drivers/infiniband/core/verbs.c 

OBJS += \
./drivers/infiniband/core/addr.o \
./drivers/infiniband/core/agent.o \
./drivers/infiniband/core/cache.o \
./drivers/infiniband/core/cm.o \
./drivers/infiniband/core/cma.o \
./drivers/infiniband/core/device.o \
./drivers/infiniband/core/fmr_pool.o \
./drivers/infiniband/core/iwcm.o \
./drivers/infiniband/core/mad.o \
./drivers/infiniband/core/mad_rmpp.o \
./drivers/infiniband/core/multicast.o \
./drivers/infiniband/core/netlink.o \
./drivers/infiniband/core/packer.o \
./drivers/infiniband/core/sa_query.o \
./drivers/infiniband/core/smi.o \
./drivers/infiniband/core/sysfs.o \
./drivers/infiniband/core/ucm.o \
./drivers/infiniband/core/ucma.o \
./drivers/infiniband/core/ud_header.o \
./drivers/infiniband/core/umem.o \
./drivers/infiniband/core/user_mad.o \
./drivers/infiniband/core/uverbs_cmd.o \
./drivers/infiniband/core/uverbs_main.o \
./drivers/infiniband/core/uverbs_marshall.o \
./drivers/infiniband/core/verbs.o 

C_DEPS += \
./drivers/infiniband/core/addr.d \
./drivers/infiniband/core/agent.d \
./drivers/infiniband/core/cache.d \
./drivers/infiniband/core/cm.d \
./drivers/infiniband/core/cma.d \
./drivers/infiniband/core/device.d \
./drivers/infiniband/core/fmr_pool.d \
./drivers/infiniband/core/iwcm.d \
./drivers/infiniband/core/mad.d \
./drivers/infiniband/core/mad_rmpp.d \
./drivers/infiniband/core/multicast.d \
./drivers/infiniband/core/netlink.d \
./drivers/infiniband/core/packer.d \
./drivers/infiniband/core/sa_query.d \
./drivers/infiniband/core/smi.d \
./drivers/infiniband/core/sysfs.d \
./drivers/infiniband/core/ucm.d \
./drivers/infiniband/core/ucma.d \
./drivers/infiniband/core/ud_header.d \
./drivers/infiniband/core/umem.d \
./drivers/infiniband/core/user_mad.d \
./drivers/infiniband/core/uverbs_cmd.d \
./drivers/infiniband/core/uverbs_main.d \
./drivers/infiniband/core/uverbs_marshall.d \
./drivers/infiniband/core/verbs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/infiniband/core/%.o: ../drivers/infiniband/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


