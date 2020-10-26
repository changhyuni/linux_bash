#!/bin/bash

if [ -f test.txt.bak ]
then
        echo " 백업 파일 확인했습니다. "
else
        cp test.txt test.txt.bak
        echo " 백업 파일 생성중입니다..."
        exit 0
fi

if [ -f test.txt ]
then    
        if diff test.txt test.txt.bak 1 > /dev/null 2>&1        
        then
                echo "파일 체크를 완료했습니다."
        else
                echo "파일 교체중.."
                cp test.txt.bak test.txt && echo "복구중.."
        fi
else
        echo "파일이 없습니다..!"
fi






echo "복사할 파일을 알려주세요."
read GET

POSTS=./ 

for i in $GET; do
    cp $GET $POSTS
    diff $GET $POSTS
done

