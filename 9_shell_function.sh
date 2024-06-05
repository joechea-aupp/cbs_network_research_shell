#!/bin/bash -x

# Define a function
function hello() {
		echo "Hello, World!"
}

# Call the function
hello

# function with arguments

function greet() {
		echo "Hello, $1, $2!"
}

greet "John" "Doe"

# function with return value
function is_even() {
		if [ $(( $1 % 2 )) -eq 0 ]; then
				echo "$1 is even."
				return 0
		else
			 echo "$1 is odd."
				return 1
		fi
}

result=$(is_even 9)
flag=$?
echo "$result"
echo "$flag"
