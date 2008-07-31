#!/bin/sh

ARCHLIBDIR=$(uname -m)

RUN_ENVIRONMENT=$(which valgrind)


${RUN_ENVIRONMENT} pd -nosound -nomidi -stderr -path ${ARCHLIBDIR}:lib:. -lib zexy -send "${SENDMESSAGE}" -open _PROXY.pd $@
