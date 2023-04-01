#!/usr/bin/env bash

LIBFDKAAC_VERSION=2.0.2

source ${SCRIPTS_DIR}/common-functions.sh

downloadTarArchive \
  "libfdk-aac" \
  "https://sourceforge.net/projects/opencore-amr/files/fdk-aac/fdk-aac-${LIBFDKAAC_VERSION}.tar.gz"
