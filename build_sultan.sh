#!/bin/bash

export TOOLCHAINY=~/android/toolchains/gcc-14.2.0-nolibc/aarch64-linux/bin

make CROSS_COMPILE=$TOOLCHAINY/aarch64-linux- CC=$TOOLCHAINY/aarch64-linux-gcc -j$(nproc --all) zumapro_defconfig
make CROSS_COMPILE=$TOOLCHAINY/aarch64-linux- CC=$TOOLCHAINY/aarch64-linux-gcc -j$(nproc --all)

#rm AnyKernel/Image.lz4
#rm AnyKernel/dtb

#cp out/arch/arm64/boot/Image.lz4 AnyKernel/Image.lz4
#cat out/google-devices/zumapro/dts/*.dtb > AnyKernel/dtb
#cd AnyKernel/
#current_date_time="`date +%Y%m%d%H%M%S`";

#zip -0 -r ../SULTAN_KSU_$current_date_time.zip *
