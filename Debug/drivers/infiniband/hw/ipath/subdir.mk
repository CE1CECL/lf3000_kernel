################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/infiniband/hw/ipath/ipath_cq.c \
../drivers/infiniband/hw/ipath/ipath_diag.c \
../drivers/infiniband/hw/ipath/ipath_dma.c \
../drivers/infiniband/hw/ipath/ipath_driver.c \
../drivers/infiniband/hw/ipath/ipath_eeprom.c \
../drivers/infiniband/hw/ipath/ipath_file_ops.c \
../drivers/infiniband/hw/ipath/ipath_fs.c \
../drivers/infiniband/hw/ipath/ipath_iba6110.c \
../drivers/infiniband/hw/ipath/ipath_init_chip.c \
../drivers/infiniband/hw/ipath/ipath_intr.c \
../drivers/infiniband/hw/ipath/ipath_keys.c \
../drivers/infiniband/hw/ipath/ipath_mad.c \
../drivers/infiniband/hw/ipath/ipath_mmap.c \
../drivers/infiniband/hw/ipath/ipath_mr.c \
../drivers/infiniband/hw/ipath/ipath_qp.c \
../drivers/infiniband/hw/ipath/ipath_rc.c \
../drivers/infiniband/hw/ipath/ipath_ruc.c \
../drivers/infiniband/hw/ipath/ipath_sdma.c \
../drivers/infiniband/hw/ipath/ipath_srq.c \
../drivers/infiniband/hw/ipath/ipath_stats.c \
../drivers/infiniband/hw/ipath/ipath_sysfs.c \
../drivers/infiniband/hw/ipath/ipath_uc.c \
../drivers/infiniband/hw/ipath/ipath_ud.c \
../drivers/infiniband/hw/ipath/ipath_user_pages.c \
../drivers/infiniband/hw/ipath/ipath_user_sdma.c \
../drivers/infiniband/hw/ipath/ipath_verbs.c \
../drivers/infiniband/hw/ipath/ipath_verbs_mcast.c \
../drivers/infiniband/hw/ipath/ipath_wc_ppc64.c \
../drivers/infiniband/hw/ipath/ipath_wc_x86_64.c 

OBJS += \
./drivers/infiniband/hw/ipath/ipath_cq.o \
./drivers/infiniband/hw/ipath/ipath_diag.o \
./drivers/infiniband/hw/ipath/ipath_dma.o \
./drivers/infiniband/hw/ipath/ipath_driver.o \
./drivers/infiniband/hw/ipath/ipath_eeprom.o \
./drivers/infiniband/hw/ipath/ipath_file_ops.o \
./drivers/infiniband/hw/ipath/ipath_fs.o \
./drivers/infiniband/hw/ipath/ipath_iba6110.o \
./drivers/infiniband/hw/ipath/ipath_init_chip.o \
./drivers/infiniband/hw/ipath/ipath_intr.o \
./drivers/infiniband/hw/ipath/ipath_keys.o \
./drivers/infiniband/hw/ipath/ipath_mad.o \
./drivers/infiniband/hw/ipath/ipath_mmap.o \
./drivers/infiniband/hw/ipath/ipath_mr.o \
./drivers/infiniband/hw/ipath/ipath_qp.o \
./drivers/infiniband/hw/ipath/ipath_rc.o \
./drivers/infiniband/hw/ipath/ipath_ruc.o \
./drivers/infiniband/hw/ipath/ipath_sdma.o \
./drivers/infiniband/hw/ipath/ipath_srq.o \
./drivers/infiniband/hw/ipath/ipath_stats.o \
./drivers/infiniband/hw/ipath/ipath_sysfs.o \
./drivers/infiniband/hw/ipath/ipath_uc.o \
./drivers/infiniband/hw/ipath/ipath_ud.o \
./drivers/infiniband/hw/ipath/ipath_user_pages.o \
./drivers/infiniband/hw/ipath/ipath_user_sdma.o \
./drivers/infiniband/hw/ipath/ipath_verbs.o \
./drivers/infiniband/hw/ipath/ipath_verbs_mcast.o \
./drivers/infiniband/hw/ipath/ipath_wc_ppc64.o \
./drivers/infiniband/hw/ipath/ipath_wc_x86_64.o 

C_DEPS += \
./drivers/infiniband/hw/ipath/ipath_cq.d \
./drivers/infiniband/hw/ipath/ipath_diag.d \
./drivers/infiniband/hw/ipath/ipath_dma.d \
./drivers/infiniband/hw/ipath/ipath_driver.d \
./drivers/infiniband/hw/ipath/ipath_eeprom.d \
./drivers/infiniband/hw/ipath/ipath_file_ops.d \
./drivers/infiniband/hw/ipath/ipath_fs.d \
./drivers/infiniband/hw/ipath/ipath_iba6110.d \
./drivers/infiniband/hw/ipath/ipath_init_chip.d \
./drivers/infiniband/hw/ipath/ipath_intr.d \
./drivers/infiniband/hw/ipath/ipath_keys.d \
./drivers/infiniband/hw/ipath/ipath_mad.d \
./drivers/infiniband/hw/ipath/ipath_mmap.d \
./drivers/infiniband/hw/ipath/ipath_mr.d \
./drivers/infiniband/hw/ipath/ipath_qp.d \
./drivers/infiniband/hw/ipath/ipath_rc.d \
./drivers/infiniband/hw/ipath/ipath_ruc.d \
./drivers/infiniband/hw/ipath/ipath_sdma.d \
./drivers/infiniband/hw/ipath/ipath_srq.d \
./drivers/infiniband/hw/ipath/ipath_stats.d \
./drivers/infiniband/hw/ipath/ipath_sysfs.d \
./drivers/infiniband/hw/ipath/ipath_uc.d \
./drivers/infiniband/hw/ipath/ipath_ud.d \
./drivers/infiniband/hw/ipath/ipath_user_pages.d \
./drivers/infiniband/hw/ipath/ipath_user_sdma.d \
./drivers/infiniband/hw/ipath/ipath_verbs.d \
./drivers/infiniband/hw/ipath/ipath_verbs_mcast.d \
./drivers/infiniband/hw/ipath/ipath_wc_ppc64.d \
./drivers/infiniband/hw/ipath/ipath_wc_x86_64.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/infiniband/hw/ipath/%.o: ../drivers/infiniband/hw/ipath/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


