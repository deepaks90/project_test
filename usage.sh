#!/bin/bash
host=`hostname`
size=`df -h . | awk -F " " '(NR>1) {print$(NF-1)}' | sed 's/%/ /g'`
if [ $size -gt 20 ]
then
	echo "the $host reached the threshold of $size%" | mail -s "disk usage" deepu.basava@gmail.com
fi
