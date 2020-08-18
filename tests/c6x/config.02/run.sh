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

# Point KCONFIG_CONFIG to configuration sample
export KCONFIG_CONFIG="$PWD/.config"

# Set variables that Kconfig model depends on, and which
# are usually set in Makefiles before Kconfig is parsed.
export VERSION=5
export PATCHLEVEL=3
export SUBLEVEL=0
export KERNELVERSION=5.3.0
export CC=gcc
export CC_VERSION_TEXT=`$CC --version 2>/dev/null | head -n 1`
export ARCH=c6x
export SRCARCH=c6x
export srctree=. #$CONFIGFIX_PATH

cd $CONFIGFIX_PATH

# pass eventual extra arguments to xconfig
scripts/kconfig/qconf Kconfig "$@"

# unset variables
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