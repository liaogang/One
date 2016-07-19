#!/bin/bash

echo "# ONE · 一个的问题索引  " > readme.md

for ((i=8; i<1414; ++i))  
do  

if [ -a "$i" ]; then
echo "finded $i"
else
echo "curl $i"
curl -O http://wufazhuce.com/question/$i
fi

	title=`./getHtmlTitle $i`
	echo $title
	echo "1. [$title](http://wufazhuce.com/question/$i)  ">>readme.md

done  


