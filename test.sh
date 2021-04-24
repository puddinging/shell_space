#!/bin/sh
echo "hello world"
cmd=$1
echo "${cmd}"

if [ "${cmd}" == "-i" ]; then
    echo "你输入了第一个参数，这个参数是$2"
fi
