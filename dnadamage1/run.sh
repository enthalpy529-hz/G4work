#!/bin/bash

# 复制build文件夹到1到100
for i in $(seq 1 50)
do
#    rm -r "./${i}"
    qsub task.
done