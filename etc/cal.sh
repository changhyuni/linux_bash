#!/bin/bash

echo -n "input num1 : "
read NUM1

echo -n "input num2 : "
read NUM2

echo -n "input operator 1)+ 2)- 3)* 4)/ :"
read OPER


case $OPER in
1) echo "$NUM1 + $NUM2 = 'expr $NUM1 + $NUM2'";;
2) echo "$NUM1 - $NUM2 = 'expr $NUM1 - $NUM2'";;
3) echo "$NUM1 * $NUM2 = 'expr $NUM1 \* $NUM2'";;
4) echo "$NUM1 / $NUM2 = 'expr $NUM1 / $NUM2'";;
*) echo "fuckyou"
esac
