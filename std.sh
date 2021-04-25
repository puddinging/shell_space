#!/bin/sh
# command > file 将命令的返回值定向到file
# whoami > file

# wc -l < file

# 读取输入文件，并将返回值重定向到输出文件中
# wc -l < inputFile > outputFile

# stdio 标准输入文件 文件描述符0
# stdout 标准输出文件 文件描述符1
# stderr 标准错误文件 文件描述符2
# stderr 2>>outputFile
wc -l > outputFile 2>&1