################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/xfs/kmem.c \
../fs/xfs/uuid.c \
../fs/xfs/xfs_acl.c \
../fs/xfs/xfs_alloc.c \
../fs/xfs/xfs_alloc_btree.c \
../fs/xfs/xfs_aops.c \
../fs/xfs/xfs_attr.c \
../fs/xfs/xfs_attr_leaf.c \
../fs/xfs/xfs_bit.c \
../fs/xfs/xfs_bmap.c \
../fs/xfs/xfs_bmap_btree.c \
../fs/xfs/xfs_btree.c \
../fs/xfs/xfs_buf.c \
../fs/xfs/xfs_buf_item.c \
../fs/xfs/xfs_da_btree.c \
../fs/xfs/xfs_dfrag.c \
../fs/xfs/xfs_dir2.c \
../fs/xfs/xfs_dir2_block.c \
../fs/xfs/xfs_dir2_data.c \
../fs/xfs/xfs_dir2_leaf.c \
../fs/xfs/xfs_dir2_node.c \
../fs/xfs/xfs_dir2_sf.c \
../fs/xfs/xfs_discard.c \
../fs/xfs/xfs_dquot.c \
../fs/xfs/xfs_dquot_item.c \
../fs/xfs/xfs_error.c \
../fs/xfs/xfs_export.c \
../fs/xfs/xfs_extfree_item.c \
../fs/xfs/xfs_file.c \
../fs/xfs/xfs_filestream.c \
../fs/xfs/xfs_fs_subr.c \
../fs/xfs/xfs_fsops.c \
../fs/xfs/xfs_globals.c \
../fs/xfs/xfs_ialloc.c \
../fs/xfs/xfs_ialloc_btree.c \
../fs/xfs/xfs_iget.c \
../fs/xfs/xfs_inode.c \
../fs/xfs/xfs_inode_item.c \
../fs/xfs/xfs_ioctl.c \
../fs/xfs/xfs_ioctl32.c \
../fs/xfs/xfs_iomap.c \
../fs/xfs/xfs_iops.c \
../fs/xfs/xfs_itable.c \
../fs/xfs/xfs_log.c \
../fs/xfs/xfs_log_cil.c \
../fs/xfs/xfs_log_recover.c \
../fs/xfs/xfs_message.c \
../fs/xfs/xfs_mount.c \
../fs/xfs/xfs_mru_cache.c \
../fs/xfs/xfs_qm.c \
../fs/xfs/xfs_qm_bhv.c \
../fs/xfs/xfs_qm_syscalls.c \
../fs/xfs/xfs_quotaops.c \
../fs/xfs/xfs_rename.c \
../fs/xfs/xfs_rtalloc.c \
../fs/xfs/xfs_rw.c \
../fs/xfs/xfs_stats.c \
../fs/xfs/xfs_super.c \
../fs/xfs/xfs_sync.c \
../fs/xfs/xfs_sysctl.c \
../fs/xfs/xfs_trace.c \
../fs/xfs/xfs_trans.c \
../fs/xfs/xfs_trans_ail.c \
../fs/xfs/xfs_trans_buf.c \
../fs/xfs/xfs_trans_dquot.c \
../fs/xfs/xfs_trans_extfree.c \
../fs/xfs/xfs_trans_inode.c \
../fs/xfs/xfs_utils.c \
../fs/xfs/xfs_vnodeops.c \
../fs/xfs/xfs_xattr.c 

OBJS += \
./fs/xfs/kmem.o \
./fs/xfs/uuid.o \
./fs/xfs/xfs_acl.o \
./fs/xfs/xfs_alloc.o \
./fs/xfs/xfs_alloc_btree.o \
./fs/xfs/xfs_aops.o \
./fs/xfs/xfs_attr.o \
./fs/xfs/xfs_attr_leaf.o \
./fs/xfs/xfs_bit.o \
./fs/xfs/xfs_bmap.o \
./fs/xfs/xfs_bmap_btree.o \
./fs/xfs/xfs_btree.o \
./fs/xfs/xfs_buf.o \
./fs/xfs/xfs_buf_item.o \
./fs/xfs/xfs_da_btree.o \
./fs/xfs/xfs_dfrag.o \
./fs/xfs/xfs_dir2.o \
./fs/xfs/xfs_dir2_block.o \
./fs/xfs/xfs_dir2_data.o \
./fs/xfs/xfs_dir2_leaf.o \
./fs/xfs/xfs_dir2_node.o \
./fs/xfs/xfs_dir2_sf.o \
./fs/xfs/xfs_discard.o \
./fs/xfs/xfs_dquot.o \
./fs/xfs/xfs_dquot_item.o \
./fs/xfs/xfs_error.o \
./fs/xfs/xfs_export.o \
./fs/xfs/xfs_extfree_item.o \
./fs/xfs/xfs_file.o \
./fs/xfs/xfs_filestream.o \
./fs/xfs/xfs_fs_subr.o \
./fs/xfs/xfs_fsops.o \
./fs/xfs/xfs_globals.o \
./fs/xfs/xfs_ialloc.o \
./fs/xfs/xfs_ialloc_btree.o \
./fs/xfs/xfs_iget.o \
./fs/xfs/xfs_inode.o \
./fs/xfs/xfs_inode_item.o \
./fs/xfs/xfs_ioctl.o \
./fs/xfs/xfs_ioctl32.o \
./fs/xfs/xfs_iomap.o \
./fs/xfs/xfs_iops.o \
./fs/xfs/xfs_itable.o \
./fs/xfs/xfs_log.o \
./fs/xfs/xfs_log_cil.o \
./fs/xfs/xfs_log_recover.o \
./fs/xfs/xfs_message.o \
./fs/xfs/xfs_mount.o \
./fs/xfs/xfs_mru_cache.o \
./fs/xfs/xfs_qm.o \
./fs/xfs/xfs_qm_bhv.o \
./fs/xfs/xfs_qm_syscalls.o \
./fs/xfs/xfs_quotaops.o \
./fs/xfs/xfs_rename.o \
./fs/xfs/xfs_rtalloc.o \
./fs/xfs/xfs_rw.o \
./fs/xfs/xfs_stats.o \
./fs/xfs/xfs_super.o \
./fs/xfs/xfs_sync.o \
./fs/xfs/xfs_sysctl.o \
./fs/xfs/xfs_trace.o \
./fs/xfs/xfs_trans.o \
./fs/xfs/xfs_trans_ail.o \
./fs/xfs/xfs_trans_buf.o \
./fs/xfs/xfs_trans_dquot.o \
./fs/xfs/xfs_trans_extfree.o \
./fs/xfs/xfs_trans_inode.o \
./fs/xfs/xfs_utils.o \
./fs/xfs/xfs_vnodeops.o \
./fs/xfs/xfs_xattr.o 

C_DEPS += \
./fs/xfs/kmem.d \
./fs/xfs/uuid.d \
./fs/xfs/xfs_acl.d \
./fs/xfs/xfs_alloc.d \
./fs/xfs/xfs_alloc_btree.d \
./fs/xfs/xfs_aops.d \
./fs/xfs/xfs_attr.d \
./fs/xfs/xfs_attr_leaf.d \
./fs/xfs/xfs_bit.d \
./fs/xfs/xfs_bmap.d \
./fs/xfs/xfs_bmap_btree.d \
./fs/xfs/xfs_btree.d \
./fs/xfs/xfs_buf.d \
./fs/xfs/xfs_buf_item.d \
./fs/xfs/xfs_da_btree.d \
./fs/xfs/xfs_dfrag.d \
./fs/xfs/xfs_dir2.d \
./fs/xfs/xfs_dir2_block.d \
./fs/xfs/xfs_dir2_data.d \
./fs/xfs/xfs_dir2_leaf.d \
./fs/xfs/xfs_dir2_node.d \
./fs/xfs/xfs_dir2_sf.d \
./fs/xfs/xfs_discard.d \
./fs/xfs/xfs_dquot.d \
./fs/xfs/xfs_dquot_item.d \
./fs/xfs/xfs_error.d \
./fs/xfs/xfs_export.d \
./fs/xfs/xfs_extfree_item.d \
./fs/xfs/xfs_file.d \
./fs/xfs/xfs_filestream.d \
./fs/xfs/xfs_fs_subr.d \
./fs/xfs/xfs_fsops.d \
./fs/xfs/xfs_globals.d \
./fs/xfs/xfs_ialloc.d \
./fs/xfs/xfs_ialloc_btree.d \
./fs/xfs/xfs_iget.d \
./fs/xfs/xfs_inode.d \
./fs/xfs/xfs_inode_item.d \
./fs/xfs/xfs_ioctl.d \
./fs/xfs/xfs_ioctl32.d \
./fs/xfs/xfs_iomap.d \
./fs/xfs/xfs_iops.d \
./fs/xfs/xfs_itable.d \
./fs/xfs/xfs_log.d \
./fs/xfs/xfs_log_cil.d \
./fs/xfs/xfs_log_recover.d \
./fs/xfs/xfs_message.d \
./fs/xfs/xfs_mount.d \
./fs/xfs/xfs_mru_cache.d \
./fs/xfs/xfs_qm.d \
./fs/xfs/xfs_qm_bhv.d \
./fs/xfs/xfs_qm_syscalls.d \
./fs/xfs/xfs_quotaops.d \
./fs/xfs/xfs_rename.d \
./fs/xfs/xfs_rtalloc.d \
./fs/xfs/xfs_rw.d \
./fs/xfs/xfs_stats.d \
./fs/xfs/xfs_super.d \
./fs/xfs/xfs_sync.d \
./fs/xfs/xfs_sysctl.d \
./fs/xfs/xfs_trace.d \
./fs/xfs/xfs_trans.d \
./fs/xfs/xfs_trans_ail.d \
./fs/xfs/xfs_trans_buf.d \
./fs/xfs/xfs_trans_dquot.d \
./fs/xfs/xfs_trans_extfree.d \
./fs/xfs/xfs_trans_inode.d \
./fs/xfs/xfs_utils.d \
./fs/xfs/xfs_vnodeops.d \
./fs/xfs/xfs_xattr.d 


# Each subdirectory must supply rules for building sources it contributes
fs/xfs/%.o: ../fs/xfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


