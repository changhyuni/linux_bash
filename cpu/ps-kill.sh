#!/bin/bash

if [ $# -ne 1 ]
then
        echo "프로세스 사용 : $0 [processname]"
        exit 1
fi

ps -e > /tmp/prpcesslist

awk '{ print $1": "$4 }' /tmp/processlist > /tmp/processlist2

for PROCESSINFO in 'cat /tmp/processlist2'
do
        PROCESSPID= 
