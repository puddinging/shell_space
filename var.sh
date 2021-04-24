str="abcd"
# 输出字符串的长度
echo ${#str}
# 提取子字符串
echo ${str:0:1}
# shell数组
arr_str=("red" "a2")
echo ${arr_str[1]}
# 获取所有元素
echo ${arr_str[@]}
# 获取长度
echo ${#arr_str[@]}
temp=${arr_str[0]}

# 使用变量的值作为新变量的名称
color_name="red"
red=31
color=`eval  echo '$'"${arr_str[0]}"`
echo ${color}

# 运算符
val=`expr 2 + 2`
echo "两数相加和为${val}"
a=10
b=20
temp=`expr $a + $b`
echo $temp