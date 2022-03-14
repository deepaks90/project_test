#!/bin/bash
array='2 4 6 7 8 9'
len=0
for i in $array
do
	len=`expr $len + 1`
done
echo " array length is $len"
