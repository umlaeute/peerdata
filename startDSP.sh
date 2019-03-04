#!/bin/sh

PATCH=""

test -e /tmp/patch-template.pd && PATCH=/tmp/patch-template.pd

pd -guiport 5500 "$@"
