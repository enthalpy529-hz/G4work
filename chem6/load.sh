#!/bin/bash

# 进入目标目录


# 遍历所有以0结尾的文件
for file in *c
do
    # 如果是目录则跳过
    if [ -d "$file" ]
    then
        continue
    fi

    # 在文件所在目录下执行qsub命令
    dir=`dirname "$file"`
    echo "进入目录：$dir"
#    cd "$dir"
#    qsub task.sub
#    cd ..
done