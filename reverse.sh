#!/bin/bash
echo "enter the file name"
read file
count=`cat -n $file | wc -l`
while [ $count -gt 0 ]
do
	output=`head -$count $file | tail -1`
	echo "$output"
	count=`expr $count - 1`
done
