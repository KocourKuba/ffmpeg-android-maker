#!/usr/bin/env bash

CC=${FAM_CC} \
AR=${FAM_AR} \
AS=${FAM_AS} \
RANLIB=${FAM_RANLIB} \
./configure \
    --prefix=${INSTALL_DIR} \
    --host=${TARGET} \
    --with-sysroot=${SYSROOT_PATH} \
    --with-pic \
    --enable-static \
    --disable-shared \
    --without-debug \
    --without-python \
    --without-zlib \
    --without-lzma \
    --disable-fast-install || exit 1

export FFMPEG_EXTRA_LD_FLAGS="${FFMPEG_EXTRA_LD_FLAGS} -lm"

${MAKE_EXECUTABLE} clean
${MAKE_EXECUTABLE} -j${HOST_NPROC}
${MAKE_EXECUTABLE} install
