#!/bin/bash

for i in {1..30}
do
	if [[ $((i % 3)) == 0 && $((i % 5)) == 0 ]]; then
		echo "$i: FizzBuzz"
	elif [ $((i%3)) == 0 ]; then
		echo "$i: Fizz"
	elif [ $((i%5)) == 0 ]; then
		echo "$i: Buzz"
	else
		echo "$i"
	fi
done
