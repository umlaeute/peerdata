#!/bin/sh

echo "this does not yet work in a reliable way!"
echo "please use startPROXY.sh and startDSP.sh separately"
echo
exit 

TALKBACKPORT=5555

function port_blocked() {
 netstat -lnu | awk '{print $4}' | grep -w $1 > /dev/null 2>&1
}

function get_port_pid() {
 netstat -lnup | grep -w ${TALKBACKPORT} | awk '{split($6, A, "/"); print A[1]}' 2>/dev/null
}

function kill_port() {
  local tbport
  tbport=$1
  while port_blocked ${tbport}
  do
    RUNNINGPID=$(get_port_pid ${tbport})
    if [ "x${RUNNINGPID}" = "x" ]; then
      echo no port to kill
      return
    fi
    echo killing ${RUNNINGPID}
    kill -KILL ${RUNNINGPID}
  done
}

function dostart_engine() {
 echo "do start engine..."
 pdreceive ${TALKBACKPORT} udp | while read line
 do
   ./startDSP.sh 
   echo "quitting pd"
   echo "pd quit;" | pdsend 5500
   echo "quitting pdreceive: $$ and $(get_port_pid)"
   kill_port ${TALKBACKPORT}
   exit
 done
}

echo "checking port"
kill_port ${TALKBACKPORT}

echo "starting engine"
dostart_engine &

echo "start proxy"
SENDMESSAGE="PROXY_startDSP bang" ./startPROXY.sh

