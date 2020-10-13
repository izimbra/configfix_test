#!/usr/bin/bash 
#
# Runs 'xconfig' with .config sample in this folder.
# Sets 
#
# This script expects $CONFIGFIX_PATH to be set to current location
# of a Linux kernel source tree from which configfix can be run.
# 

# Check if $CONFIGFIX_PATH is set
if [ -z ${CONFIGFIX_PATH} ]; then
    echo "Error: CONFIGFIX_PATH is not set"
    exit    
fi

# Set variables that Kconfig model depends on, and which
# are usually set in Makefiles before Kconfig is parsed.
export VERSION=5
export PATCHLEVEL=9
export SUBLEVEL=0-rc6
export KERNELVERSION=5.9.0-rc6
export CC=gcc
export CC_VERSION_TEXT=`$CC --version 2>/dev/null | head -n 1`
export ARCH=i386
export SRCARCH=x86
export srctree=. #$CONFIGFIX_PATH

# Set variable that 'cftestconfig' depends on.
export CONFIGFIX_TEST_CONFIG_DIR=$PWD
export CONFIGFIX_TEST_PROBABILITY=70

# Copy configuration sample - must be in the source tree
cp .config.70 $CONFIGFIX_PATH/.config
# Point KCONFIG_CONFIG to configuration sample
export KCONFIG_CONFIG=.config #"$PWD/.config"

# run xconfig via make
cd $CONFIGFIX_PATH
# scripts/kconfig/qconf Kconfig "$@" # pass eventual extra arguments to xconfig
make cftestconfig

# unset variables
unset CONFIGFIX_TEST_CONFIG_DIR
unset CONFIGFIX_TEST_PROBABILITY
unset KCONFIG_CONFIG
unset VERSION
unset PATCHLEVEL
unset SUBLEVEL
unset KERNELVERSION
unset CC
unset CC_VERSION_TEXT
unset ARCH
unset SRCARCH
unset srctree