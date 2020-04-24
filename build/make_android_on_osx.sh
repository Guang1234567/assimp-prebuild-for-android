#!/usr/bin/env bash 

echo -e 	"============================== arm64-v8a =============================="

if [ ! -e "./arm64-v8a" ]
then
mkdir arm64-v8a
fi

cd	arm64-v8a

cmake -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
      -DANDROID_NDK=${ANDROID_NDK}                   \
      -DCMAKE_BUILD_TYPE=Debug                       \
      -DANDROID_NATIVE_API_LEVEL=android-24          \
      -DANDROID_STL=c++_shared                       \
      -DANDROID_ABI="arm64-v8a"                      \
      -DASSIMP_ANDROID_JNIIOSYSTEM=ON                \
      -DASSIMP_BUILD_ZLIB=ON                         \
      -DASSIMP_BUILD_TESTS=OFF                       \
      ../..

cmake --build .

cd ..

echo -e 	"============================== x86_64 =============================="

if [ ! -e "./x86_64" ]
then
mkdir x86_64
fi

cd	x86_64

cmake -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
      -DANDROID_NDK=${ANDROID_NDK}                   \
      -DCMAKE_BUILD_TYPE=Debug                       \
      -DANDROID_NATIVE_API_LEVEL=android-24          \
      -DANDROID_STL=c++_shared                       \
      -DANDROID_ABI="x86_64"                         \
      -DASSIMP_ANDROID_JNIIOSYSTEM=ON                \
      -DASSIMP_BUILD_ZLIB=ON                         \
      -DASSIMP_BUILD_TESTS=OFF                       \
      ../..

cmake --build .

cd ..


echo -e 	"============================== x86 =============================="

if [ ! -e "./x86" ]
then
mkdir x86
fi

cd	x86

cmake -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
      -DANDROID_NDK=${ANDROID_NDK}                   \
      -DCMAKE_BUILD_TYPE=Debug                       \
      -DANDROID_NATIVE_API_LEVEL=android-24          \
      -DANDROID_STL=c++_shared                       \
      -DANDROID_ABI="x86"                            \
      -DASSIMP_ANDROID_JNIIOSYSTEM=ON                \
      -DASSIMP_BUILD_ZLIB=ON                         \
      -DASSIMP_BUILD_TESTS=OFF                       \
      ../..

cmake --build .

cd ..


echo -e 	"============================== armeabi-v7a =============================="

if [ ! -e "./armeabi-v7a" ]
then
mkdir armeabi-v7a
fi

cd	armeabi-v7a

cmake -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
      -DANDROID_NDK=${ANDROID_NDK}                   \
      -DCMAKE_BUILD_TYPE=Debug                       \
      -DANDROID_NATIVE_API_LEVEL=android-24          \
      -DANDROID_STL=c++_shared                       \
      -DANDROID_ABI="armeabi-v7a"                    \
      -DASSIMP_ANDROID_JNIIOSYSTEM=ON                \
      -DASSIMP_BUILD_ZLIB=ON                         \
      -DASSIMP_BUILD_TESTS=OFF                       \
      ../..

cmake --build .

cd ..

echo -e 	"============================== armeabi-v7a with NEON =============================="

if [ ! -e "./armeabi-v7a with NEON" ]
then
mkdir "armeabi-v7a with NEON"
fi

cd	"armeabi-v7a with NEON"

cmake -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
      -DANDROID_NDK=${ANDROID_NDK}                   \
      -DCMAKE_BUILD_TYPE=Debug                       \
      -DANDROID_NATIVE_API_LEVEL=android-24          \
      -DANDROID_STL=c++_shared                       \
      -DANDROID_ABI="armeabi-v7a with NEON"          \
      -DASSIMP_ANDROID_JNIIOSYSTEM=ON                \
      -DASSIMP_BUILD_ZLIB=ON                         \
      -DASSIMP_BUILD_TESTS=OFF                       \
      ../..

cmake --build .

cd ..


:<<eof

echo -e 	"============================== armeabi-v7a with VFPV3 =============================="

if [ ! -e "./armeabi-v7a with VFPV3" ]
then
mkdir "armeabi-v7a with VFPV3"
fi

cd	"armeabi-v7a with VFPV3"

cmake -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
      -DANDROID_NDK=${ANDROID_NDK}                   \
      -DCMAKE_BUILD_TYPE=Debug                       \
      -DANDROID_NATIVE_API_LEVEL=android-24          \
      -DANDROID_STL=c++_shared                       \
      -DANDROID_ABI="armeabi-v7a with VFPV3"          \
      -DASSIMP_ANDROID_JNIIOSYSTEM=ON                \
      -DASSIMP_BUILD_ZLIB=ON                         \
      -DASSIMP_BUILD_TESTS=OFF                       \
      ../..

cmake --build .

cd ..

eof