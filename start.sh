#!/bin/bash

JAR_PATH="/mc_server/KCauldron.jar"

if [ -z ${JAVA_Xmx} ];then
    JAVA_Xmx="2g"
    echo "[INFO] Set default Java memory ${JAVA_Xmx}."
else
    if  [[  ${JAVA_Xmx} =~ ^[1-9][0-9]*[gmk]$  ]];then
        echo "[INFO] Set Java memory ${JAVA_Xmx}."
    else
        JAVA_Xmx="2g"
        echo "[INFO] Wrong Java memory value, set default Java memory ${JAVA_Xmx}."
    fi
fi

eval "java -Xms${JAVA_Xmx} -Xmx${JAVA_Xmx} ${JAVA_OPTS} -jar ${JAR_PATH}"