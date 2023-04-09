#!/bin/bash

# 复制build文件夹到1到100
for i in $(seq 1 50)
do
#    rm -r "./${i}"
    cp -r ./build "./${i}"
    # 创建pos.txt并将文件夹名称写入其中
    echo "${i}" > "./${i}/pos.txt"
done
