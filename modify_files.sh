#!/bin/bash


# 设置语言环境以避免非法字节序列错误
export LC_CTYPE=C

# 设置要遍历的目录
DIRECTORY="/Users/mx/Desktop/Awesome-Algorithm-interview/"

# 查找目录中的所有文件并进行替换
find "$DIRECTORY" -type f ! -name "modify_files.sh" -exec sed -i '' 's/\\(/$/g; s/\\)/$/g; s/\\\[/\$\$/g; s/\\\]/\$\$/g' {} +

echo "All files have been processed."