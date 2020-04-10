#!/bin/bash
make mrproper
export ANDROID_AARCH64=./Toolchain/google_gcc/aarch64-linux-android-4.9/bin/
export ARCH=arm64
export SUBARCH=arm64
export PATH=$PATH:$ANDROID_AARCH64
export CROSS_COMPILE=aarch64-linux-android-
mkdir out
make O=out KCFLAGS=-mno-android star2qlte_chn_open_defconfig
make -j4 o=out KCFLAGS=-mno-android
cp out/arch/arm64/boot/Image /arch/arm64/boot/Image