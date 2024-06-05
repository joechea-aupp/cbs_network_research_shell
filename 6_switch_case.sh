#!/bin/bash

echo "to continue, please type y or n"
read option

# | is use to indicate the OR condition
# ;; is use to indicate the end of the case
# esac is use to indicate the end of the case statement
case $option in
	y|Y)
		echo "you choose to continue"
		;;
	n|N)
		echo "you choose to exit"
		;;
	*)
		echo "invalid option"
		;;
esac
