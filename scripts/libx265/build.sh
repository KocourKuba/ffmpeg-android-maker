#!/usr/bin/env bash

cd source
#Remove pthread dependence
sed -i "s/list(APPEND PLATFORM_LIBS pthread)//" CMakeLists.txt

CMAKE_BUILD_DIR=x265_build_${ANDROID_ABI}
rm -rf ${CMAKE_BUILD_DIR}
mkdir ${CMAKE_BUILD_DIR}
cd ${CMAKE_BUILD_DIR}

${CMAKE_EXECUTABLE} .. \
 -DANDROID_PLATFORM=${ANDROID_PLATFORM} \
 -DANDROID_ABI=${ANDROID_ABI} \
 -DCMAKE_TOOLCHAIN_FILE=${SCRIPTS_DIR}/libx265/android.cmake \
 -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} \
 -DENABLE_LIBNUMA=0

${MAKE_EXECUTABLE} -j${HOST_NPROC}
${MAKE_EXECUTABLE} install
