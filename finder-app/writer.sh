#!/bin/bash


if [ $# -ne 2 ] ; then 
	echo "You must provide exactly 2 parameters!"
	exit 1
fi

writefile=$1
writestr=$2


mkdir -p `dirname $writefile`
echo "$writestr" > $writefile
