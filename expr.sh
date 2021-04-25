#!/bin/sh
# 使用expr来进行一些简单的数学运算
# 注意事项
echo `expr 2 + 0`
a=1099999999999
b=100
echo `expr $a + $b`

# 追加字符串到文件
echo 'echo hello world' >> expr.sh

# 读取一行并输出
read name
echo "$name"
echo hello world
