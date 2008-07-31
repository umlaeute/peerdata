#!/bin/sh

TARGETDIR=/tmp/sandbox
SOURCEDIR=.

mkdir -p ${TARGETDIR}
cp ${SOURCEDIR}/sandbox/patch.pd.template ${TARGETDIR}/patch.pd

cp ${SOURCEDIR}/action/*.pd ${TARGETDIR}/

cp ${SOURCEDIR}/x86_64/* ${TARGETDIR}
cp ${SOURCEDIR}/misc/* ${TARGETDIR}




