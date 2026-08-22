#!/bin/bash -e
# -e=stop on any error, +e=continue on any error

set +x		# -x=debug on, +x=debug off

#
# Shell Variables, if one is not set then set a default value
#
# CPUS                  : Number of CPUS to use in a compile
# CROSS_COMPILE         : The root name of the cross compiler
# DEPLOY_PATH           : Where to place the build output
# LINUX_VERSION         : Linux version to compile
# PARENT_DIR            : The parent directory above in the build tree
# ROOTFS_PATH		: Location to build Linux modules at
# TARGET_MACH           : The default kernel image to construct

# count number of CPUS for make
if [ -z "$CPUS" ]
then
  export CPUS=$[$(echo /sys/devices/system/cpu/cpu[0-9]* | wc -w)+0]
  [ "$CPUS" -lt 1 ] && export CPUS=1
  echo "*** Using CPUS="$CPUS
fi

# check if we can use sparse
which sparse > /dev/null
if [ "$?" = "0" ]; then
        SPARSE_CHECK="C=1"
else
        echo "**** WARNING: you do not have sparse installed"
        echo "**** run: \"sudo apt-get install sparse\" to install it"
        echo ""
        SPARSE_CHECK=""
fi

# check for TARGET_MACH, use default if none provided
if [ "x$TARGET_MACH" == "x" ]; then
	export TARGET_MACH=nxp4330_cabo_defconfig
fi
echo "*** Using TARGET_MACH=$TARGET_MACH ***"

# check for CROSS_COMPILE, use default if none provided
if [ "x$CROSS_COMPILE" == "x" ]; then
        export CROSS_COMPILE=arm-angstrom-linux-uclibceabi-
        echo "CROSS_COMPILE not set, setting to $CROSS_COMPILE"
fi

# Base other directories relative to out parent dir
export PARENT_DIR=`dirname $PWD`
export GRANDPARENT_DIR=`dirname $PARENT_DIR`
echo "*** Using GRANDPARENT_DIR=$GRANDPARENT_DIR ***"

if [ "x$DEPLOY_PATH" == "x" ]; then
        export DEPLOY_PATH=$GRANDPARENT_DIR/deploy
fi

echo "*** Using DEPLOY_PATH=$DEPLOY_PATH ***"

if ! [ -d $DEPLOY_PATH ]; then
        mkdir -p $DEPLOY_PATH
fi

if [ "x$ROOTFS_PATH" == "x" ]; then
	export ROOTFS_PATH=$DEPLOY_PATH/rootfs
fi

echo "*** Using ROOTFS_PATH=$ROOTFS_PATH ***"

if ! [ -d $ROOTFS_PATH ]; then
	mkdir -p $ROOTFS_PATH
fi

# Remove deploy binaries prior to build
rm -f $DEPLOY_PATH/Image-$LINUX_VERSION
rm -f $DEPLOY_PATH/uImage-$LINUX_VERSION
rm -f $DEPLOY_PATH/modules-$LINUX_VERSION.tar
rm -rf $ROOTFS_PATH

if [ "x$LINUX_VERSION" == "x" ]; then
	LINUX_VERSION=3.4.24
fi

echo "$0: \$LINUX_VERSION='$LINUX_VERSION'"

./install.sh $LINUX_VERSION
if [ "$?" != "0" ]; then
	exit $?
fi

cp arch/arm/boot/Image $DEPLOY_PATH/Image-$LINUX_VERSION
cp arch/arm/boot/uImage $DEPLOY_PATH/uImage-$LINUX_VERSION

pushd $ROOTFS_PATH
tar -cvf $DEPLOY_PATH/modules-$LINUX_VERSION.tar ./lib/modules
popd

# compile finished sucesssfully
echo
echo "*** finished building Linux, target: $TARGET_MACH ***"
echo
