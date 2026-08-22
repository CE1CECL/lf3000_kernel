################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/infiniband/hw/ehca/ehca_av.c \
../drivers/infiniband/hw/ehca/ehca_cq.c \
../drivers/infiniband/hw/ehca/ehca_eq.c \
../drivers/infiniband/hw/ehca/ehca_hca.c \
../drivers/infiniband/hw/ehca/ehca_irq.c \
../drivers/infiniband/hw/ehca/ehca_main.c \
../drivers/infiniband/hw/ehca/ehca_mcast.c \
../drivers/infiniband/hw/ehca/ehca_mrmw.c \
../drivers/infiniband/hw/ehca/ehca_pd.c \
../drivers/infiniband/hw/ehca/ehca_qp.c \
../drivers/infiniband/hw/ehca/ehca_reqs.c \
../drivers/infiniband/hw/ehca/ehca_sqp.c \
../drivers/infiniband/hw/ehca/ehca_uverbs.c \
../drivers/infiniband/hw/ehca/hcp_if.c \
../drivers/infiniband/hw/ehca/hcp_phyp.c \
../drivers/infiniband/hw/ehca/ipz_pt_fn.c 

OBJS += \
./drivers/infiniband/hw/ehca/ehca_av.o \
./drivers/infiniband/hw/ehca/ehca_cq.o \
./drivers/infiniband/hw/ehca/ehca_eq.o \
./drivers/infiniband/hw/ehca/ehca_hca.o \
./drivers/infiniband/hw/ehca/ehca_irq.o \
./drivers/infiniband/hw/ehca/ehca_main.o \
./drivers/infiniband/hw/ehca/ehca_mcast.o \
./drivers/infiniband/hw/ehca/ehca_mrmw.o \
./drivers/infiniband/hw/ehca/ehca_pd.o \
./drivers/infiniband/hw/ehca/ehca_qp.o \
./drivers/infiniband/hw/ehca/ehca_reqs.o \
./drivers/infiniband/hw/ehca/ehca_sqp.o \
./drivers/infiniband/hw/ehca/ehca_uverbs.o \
./drivers/infiniband/hw/ehca/hcp_if.o \
./drivers/infiniband/hw/ehca/hcp_phyp.o \
./drivers/infiniband/hw/ehca/ipz_pt_fn.o 

C_DEPS += \
./drivers/infiniband/hw/ehca/ehca_av.d \
./drivers/infiniband/hw/ehca/ehca_cq.d \
./drivers/infiniband/hw/ehca/ehca_eq.d \
./drivers/infiniband/hw/ehca/ehca_hca.d \
./drivers/infiniband/hw/ehca/ehca_irq.d \
./drivers/infiniband/hw/ehca/ehca_main.d \
./drivers/infiniband/hw/ehca/ehca_mcast.d \
./drivers/infiniband/hw/ehca/ehca_mrmw.d \
./drivers/infiniband/hw/ehca/ehca_pd.d \
./drivers/infiniband/hw/ehca/ehca_qp.d \
./drivers/infiniband/hw/ehca/ehca_reqs.d \
./drivers/infiniband/hw/ehca/ehca_sqp.d \
./drivers/infiniband/hw/ehca/ehca_uverbs.d \
./drivers/infiniband/hw/ehca/hcp_if.d \
./drivers/infiniband/hw/ehca/hcp_phyp.d \
./drivers/infiniband/hw/ehca/ipz_pt_fn.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/infiniband/hw/ehca/%.o: ../drivers/infiniband/hw/ehca/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


