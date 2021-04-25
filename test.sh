#!/bin/sh
echo "hello world"
num1=100
num2=200
if test $[num1] -eq $[num2]
then
    echo '两数相等'
else 
    echo '两数不相等'
fi