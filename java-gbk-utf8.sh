#!/bin/bash
#当前目录java文件从gbk转到utf8
#
find . -name '*.java' -exec sh -c "iconv -f GB18030 -t UTF8 {} > {}.java" \;
find . -name '*.java.java' | while read i
do
echo "$i";
mv $i $(echo $i|sed 's/\.java//')
done
