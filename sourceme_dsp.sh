
#pd -guiport 5500 -lib /home/zmoelnig/pd/peerdata/x86_64/zexy /tmp/sandbox/patch.pd

pd -guiport 5500 -lib zexy:iemlib1:iemlib2 -send "pd dsp 1" /tmp/sandbox/patch.pd
