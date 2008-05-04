#!/bin/sh

## usage: ./startGUI.sh <hostname>


ARCHLIBDIR=$(uname -m)
./${ARCHLIBDIR}/pd-gui 5600 $1
