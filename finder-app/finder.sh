#!/bin/bash
filesdir=$1
searchstr=$2

if [ $# -ne 2 ] ; then 
	echo "Too few/many params! You should run this command with 2 parameters - path an string"
	exit 1
fi


if [ ! -d $1 ]; then
	echo "$1 is not a valid directory!";
	exit 1
fi

faili=`grep -rl $searchstr $filesdir | wc -l`
skaits=`grep -r $searchstr $filesdir | wc -l`

echo "The number of files are $faili and the number of matching lines are $skaits"


