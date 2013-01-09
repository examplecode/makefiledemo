#!/bin/bash 
if [ -z "$1" ]; then  
	echo "Usage envsetup.sh [android|linux|mac|ios]"
	return 1
	elif [ "$1" = "mac" ]; then
		CC=/usr/bin/gcc
		CFLAGS=""
	elif [ "$1" = "ios" ]; then
		CC="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc"
		LD="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ld"
		SYSROOT="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS5.1.sdk"
		CFLAGS=" --sysroot=$SYSROOT "
		CFLAGS+=" -arch armv7 -mcpu=cortex-a8 -std=c99 -Wall  -O3 " 
		LDFLAGS=" -L$SYSROOT/usr/lib/system"
		AR="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ar"
	elif [ "$1" = "linux" ]; then
		CC=/usr/bin/gcc
		CFLAGS=""
	elif [ "$1" = "android" ]; then
		NDKROOT=/Users/mac/develop/android-ndk-r8c
		CC=$NDKROOT/toolchains/arm-linux-androideabi-4.4.3/prebuilt/darwin-x86/bin/arm-linux-androideabi-gcc
		LD=$NDKROOT/toolchains/arm-linux-androideabi-4.4.3/prebuilt/darwin-x86/bin/arm-linux-androideabi-ld
		AR=$NDKROOT/toolchains/arm-linux-androideabi-4.4.3/prebuilt/darwin-x86/bin/arm-linux-androideabi-ar
		SYSROOT=${NDKROOT}/platforms/android-14/arch-arm 
		CFLAGS=" --sysroot=$SYSROOT"
		#CFLAGS=' -march=armv7-a '
		LDFLAGS=" -L$SYSROOT/usr/lib/system"
		#CFLAGS+=" -I/Users/mac/develop/android-ndk-r8c/toolchains/arm-linux-androideabi-4.4.3/prebuilt/darwin-x86/lib/gcc/arm-linux-androideabi/4.4.3/include "
		#CFLAGS+= " -I/Users/mac/develop/android-ndk-r8c/platforms/android-14/arch-arm/usr/include "
		#PATH=/Users/mac/develop/android-ndk-r8c/toolchains/arm-linux-androideabi-4.4.3/prebuilt/darwin-x86/libexec/gcc/arm-linux-androideabi/4.4.3:${PATH}
   	else
		echo "invalid parmamter $1"
fi

export CC CFLAGS LDFLAGS CXX LINK LDFLAGS AR PATH
