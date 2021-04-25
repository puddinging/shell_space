doFunc(){
    echo 'this is first func'
}

doFunc
# 带返回值
funcWithReturn(){
    echo '带返回值的函数'
    return '返回值'
}

echo funcWithReturn

# 带参数的函数
funcWithParam(){
    echo "$0"
    echo "$1"
}

echo funcWithParam 8|