################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/infiniband/hw/mthca/mthca_allocator.c \
../drivers/infiniband/hw/mthca/mthca_av.c \
../drivers/infiniband/hw/mthca/mthca_catas.c \
../drivers/infiniband/hw/mthca/mthca_cmd.c \
../drivers/infiniband/hw/mthca/mthca_cq.c \
../drivers/infiniband/hw/mthca/mthca_eq.c \
../drivers/infiniband/hw/mthca/mthca_mad.c \
../drivers/infiniband/hw/mthca/mthca_main.c \
../drivers/infiniband/hw/mthca/mthca_mcg.c \
../drivers/infiniband/hw/mthca/mthca_memfree.c \
../drivers/infiniband/hw/mthca/mthca_mr.c \
../drivers/infiniband/hw/mthca/mthca_pd.c \
../drivers/infiniband/hw/mthca/mthca_profile.c \
../drivers/infiniband/hw/mthca/mthca_provider.c \
../drivers/infiniband/hw/mthca/mthca_qp.c \
../drivers/infiniband/hw/mthca/mthca_reset.c \
../drivers/infiniband/hw/mthca/mthca_srq.c \
../drivers/infiniband/hw/mthca/mthca_uar.c 

OBJS += \
./drivers/infiniband/hw/mthca/mthca_allocator.o \
./drivers/infiniband/hw/mthca/mthca_av.o \
./drivers/infiniband/hw/mthca/mthca_catas.o \
./drivers/infiniband/hw/mthca/mthca_cmd.o \
./drivers/infiniband/hw/mthca/mthca_cq.o \
./drivers/infiniband/hw/mthca/mthca_eq.o \
./drivers/infiniband/hw/mthca/mthca_mad.o \
./drivers/infiniband/hw/mthca/mthca_main.o \
./drivers/infiniband/hw/mthca/mthca_mcg.o \
./drivers/infiniband/hw/mthca/mthca_memfree.o \
./drivers/infiniband/hw/mthca/mthca_mr.o \
./drivers/infiniband/hw/mthca/mthca_pd.o \
./drivers/infiniband/hw/mthca/mthca_profile.o \
./drivers/infiniband/hw/mthca/mthca_provider.o \
./drivers/infiniband/hw/mthca/mthca_qp.o \
./drivers/infiniband/hw/mthca/mthca_reset.o \
./drivers/infiniband/hw/mthca/mthca_srq.o \
./drivers/infiniband/hw/mthca/mthca_uar.o 

C_DEPS += \
./drivers/infiniband/hw/mthca/mthca_allocator.d \
./drivers/infiniband/hw/mthca/mthca_av.d \
./drivers/infiniband/hw/mthca/mthca_catas.d \
./drivers/infiniband/hw/mthca/mthca_cmd.d \
./drivers/infiniband/hw/mthca/mthca_cq.d \
./drivers/infiniband/hw/mthca/mthca_eq.d \
./drivers/infiniband/hw/mthca/mthca_mad.d \
./drivers/infiniband/hw/mthca/mthca_main.d \
./drivers/infiniband/hw/mthca/mthca_mcg.d \
./drivers/infiniband/hw/mthca/mthca_memfree.d \
./drivers/infiniband/hw/mthca/mthca_mr.d \
./drivers/infiniband/hw/mthca/mthca_pd.d \
./drivers/infiniband/hw/mthca/mthca_profile.d \
./drivers/infiniband/hw/mthca/mthca_provider.d \
./drivers/infiniband/hw/mthca/mthca_qp.d \
./drivers/infiniband/hw/mthca/mthca_reset.d \
./drivers/infiniband/hw/mthca/mthca_srq.d \
./drivers/infiniband/hw/mthca/mthca_uar.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/infiniband/hw/mthca/%.o: ../drivers/infiniband/hw/mthca/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


