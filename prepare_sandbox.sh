#!/bin/sh

TARGETDIR=/tmp/sandbox
SOURCEDIR=.

mkdir -p ${TARGETDIR}
cp ${SOURCEDIR}/sandbox/* ${TARGETDIR}/
cp ${SOURCEDIR}/$(uname -m)/* ${TARGETDIR}




