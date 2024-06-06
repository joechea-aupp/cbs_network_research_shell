#!/bin/bash

len=7
complex=0
pass=""
args="-1c"

# getopts is a built-in command line option parser
# $OPTARG is the value of the option
while getopts l:c opt; do
	case $opt in
		l) len=$OPTARG;;
		c) complex=1;;
	esac
done

if [ $complex -eq 1 ]; then
	args+="sy"
fi

pass=$(pwgen $args $len)

if [ $? -ne 0 ]; then
	echo "Error generating password make sure you have pwgen installed."
	echo "run 'sudo apt-get install pwgen' to install it."
	exit 1
fi
echo $pass

