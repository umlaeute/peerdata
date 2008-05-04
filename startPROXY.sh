#!/bin/sh

ARCHLIBDIR=$(uname -m)

pd -nosound -nomidi -stderr -path ${ARCHLIBDIR}:lib:. -lib zexy -send "${SENDMESSAGE}" -open _PROXY.pd $@
