#!/bin/bash

for i in {1..5}
do
	mkdir dir$i && echo "상위폴더가 만들어졌습니다."

	for j in {1..5}
	do
		mkdir dir$i/subdir$j && echo "하위폴더가 만들어졌습니다."
	done
done
