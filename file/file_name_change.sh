#!/bin/bash

echo -n "변경하실 파일 입력해주세요. : "
read OLD

echo -n "새로만들 파일 확장자를 입력해주세요. : "
read NEW

for FILENAME in 'ls *.OLD'
do
        mv FILENAME ${FILENAME%*OLD}$NEW
        NAME= 'echo $FILENAME | awk -F.'{ print $1 }''
        mv $FILENAME $NAME.$NEW && echo "$FILENAME 파일이 $NAME.$NEW 로 변경되었습니다. "
done
