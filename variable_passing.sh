#!/bin/sh
# author:jiefeng
# 参数传递
echo "Shell 传递参数实例！";
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";
echo "所有参数：$@";
echo "所有参数个数：$#";
# $@ 和 $*的区别：前者相当于三个参数，后者将其看作一个参数
for item in "$@"; do
    echo $item
done

for item in "$*"; do
    echo $item
done

# 一些特殊参数
# $# 参数个数
# $* 以一个单字符串获取所有传递的参数
# $$ 获取当前进程ID号
# $! 后台运行的最后一个进程的id号
# $@ 获取所有参数
# $- 显示shell使用的当前选项
# $? 显示最后命令的退出状态，0表示没有错误，其他任何值表示有错误