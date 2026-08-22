################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/dma/amba-pl08x.o \
../drivers/dma/built-in.o \
../drivers/dma/dmaengine.o 

C_SRCS += \
../drivers/dma/amba-pl08x.c \
../drivers/dma/at_hdmac.c \
../drivers/dma/coh901318.c \
../drivers/dma/coh901318_lli.c \
../drivers/dma/dmaengine.c \
../drivers/dma/dmatest.c \
../drivers/dma/dw_dmac.c \
../drivers/dma/ep93xx_dma.c \
../drivers/dma/fsldma.c \
../drivers/dma/imx-dma.c \
../drivers/dma/imx-sdma.c \
../drivers/dma/intel_mid_dma.c \
../drivers/dma/iop-adma.c \
../drivers/dma/iovlock.c \
../drivers/dma/mpc512x_dma.c \
../drivers/dma/mv_xor.c \
../drivers/dma/mxs-dma.c \
../drivers/dma/pch_dma.c \
../drivers/dma/pl330.c \
../drivers/dma/sa11x0-dma.c \
../drivers/dma/shdma.c \
../drivers/dma/sirf-dma.c \
../drivers/dma/ste_dma40.c \
../drivers/dma/ste_dma40_ll.c \
../drivers/dma/timb_dma.c \
../drivers/dma/txx9dmac.c 

OBJS += \
./drivers/dma/amba-pl08x.o \
./drivers/dma/at_hdmac.o \
./drivers/dma/coh901318.o \
./drivers/dma/coh901318_lli.o \
./drivers/dma/dmaengine.o \
./drivers/dma/dmatest.o \
./drivers/dma/dw_dmac.o \
./drivers/dma/ep93xx_dma.o \
./drivers/dma/fsldma.o \
./drivers/dma/imx-dma.o \
./drivers/dma/imx-sdma.o \
./drivers/dma/intel_mid_dma.o \
./drivers/dma/iop-adma.o \
./drivers/dma/iovlock.o \
./drivers/dma/mpc512x_dma.o \
./drivers/dma/mv_xor.o \
./drivers/dma/mxs-dma.o \
./drivers/dma/pch_dma.o \
./drivers/dma/pl330.o \
./drivers/dma/sa11x0-dma.o \
./drivers/dma/shdma.o \
./drivers/dma/sirf-dma.o \
./drivers/dma/ste_dma40.o \
./drivers/dma/ste_dma40_ll.o \
./drivers/dma/timb_dma.o \
./drivers/dma/txx9dmac.o 

C_DEPS += \
./drivers/dma/amba-pl08x.d \
./drivers/dma/at_hdmac.d \
./drivers/dma/coh901318.d \
./drivers/dma/coh901318_lli.d \
./drivers/dma/dmaengine.d \
./drivers/dma/dmatest.d \
./drivers/dma/dw_dmac.d \
./drivers/dma/ep93xx_dma.d \
./drivers/dma/fsldma.d \
./drivers/dma/imx-dma.d \
./drivers/dma/imx-sdma.d \
./drivers/dma/intel_mid_dma.d \
./drivers/dma/iop-adma.d \
./drivers/dma/iovlock.d \
./drivers/dma/mpc512x_dma.d \
./drivers/dma/mv_xor.d \
./drivers/dma/mxs-dma.d \
./drivers/dma/pch_dma.d \
./drivers/dma/pl330.d \
./drivers/dma/sa11x0-dma.d \
./drivers/dma/shdma.d \
./drivers/dma/sirf-dma.d \
./drivers/dma/ste_dma40.d \
./drivers/dma/ste_dma40_ll.d \
./drivers/dma/timb_dma.d \
./drivers/dma/txx9dmac.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/dma/%.o: ../drivers/dma/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


