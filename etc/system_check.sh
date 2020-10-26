#!/bin/bash
while :
do
      FILENAME=log_ 'data' + '+%y%m%d%H%M%S'.log
      vmstat >> $FILENAME
      ps -ef >> $FILENAME
      df -h >> $FILENAME

      sleep 10
done