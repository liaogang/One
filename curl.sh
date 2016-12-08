#!/bin/bash

if [ -a "get_html_title" ]; then
	echo ""
else
	gcc .get_html_title.cpp -o 
fi


echo "# ONE · 一个的问题索引  " > readme.md


for ((i=8; i<1555; ++i))  
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


