#!/bin/sh

PORT=5600
HOST=ferrari.iemnet

INLOG=in.log
OUTLOG=out.log

PIPE=$(tempfile -p pipe)
rm ${PIPE}

mknod ${PIPE} p
netcat -l -p ${PORT} 0<${PIPE} | tee -a ${INLOG} | netcat ${HOST} ${PORT} | tee -a ${OUTLOG} 1>${PIPE}

rm ${PIPE}
