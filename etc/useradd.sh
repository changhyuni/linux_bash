#!/bin/bash

echo -n "이름을 입력하세요 : "
read BASENAME
echo -n "번호를 입력하세요 : "
read STARTNUM
echo -n "새로운 유저 : "
read USERCNT

for i in `seq 1 $USERCNT`
do
	NEWUSERNAME=$BASENAME$STARTNUM
	useradd $NEWUSERNAME && echo "$NEWUSERNAME user create."
	echo "P@ssw0rd" | passwd --stdin $NEWUSERNAME && echo "password is P@ssw0rd"
	(( STARTNUM=STARTNUM+1 ))
done