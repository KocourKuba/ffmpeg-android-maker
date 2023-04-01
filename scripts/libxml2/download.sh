#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

LIBXML2_VERSION=2.10
LIBXML2_SUBVERSION=3

downloadTarArchive \
  "libxml2" \
  "https://download.gnome.org/sources/libxml2/${LIBXML2_VERSION}/libxml2-${LIBXML2_VERSION}.${LIBXML2_SUBVERSION}.tar.xz"
