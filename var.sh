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

# 语句给变量赋值
for file in $(ls /etc)
do
    echo ${file}
done

# 只读变量 不可被修改，不可被删除
x='aaa'
# readonly x
# unset x
# x='bbb'

# 字符串
# 单引号里边所有的字符都会原样输出，单引号中引用的变量是无效的
name='${str}'
echo ${name}
#双引号
#双引号里边可以有变量，双引号里边可以出现转义字符
echo "$name"

# 数组
# 在shell里边，@一般代表获取所有元素，#代表元素长度，例如数组里边
arr_demo=("a", "b", "c")
echo ${arr_demo[@]}
echo ${#arr_demo}