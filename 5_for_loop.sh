#!/bin/bash

# loop within an array

fruits=("apple" "banana" "cherry")

for fruit in ${fruits[@]}; do
	echo "Fruit: $fruit"
done

# loop with index and value
for index in ${!fruits[@]}; do
	echo "Index: $index, Fruit: ${fruits[$index]}"
done

# loop with associate array
declare -A fruits_price=(["apple"]=100 ["banana"]=50 ["cherry"]=200)

for fruit in ${!fruits_price[@]}; do
	echo "Fruit: $fruit, Price: ${fruits_price[$fruit]}"
done

# loop in range of numbers
for i in {1..5}; do
	echo "Number: $i"
done

# break and skip loop
for i in {1..20}; do
	if [ $i -eq 5 ]; then
		echo "Skipping number 5"
		continue
	fi
	if [ $i -gt 7 ]; then
		echo "Breaking at the $i"
		break
	fi
	echo "Number: $i"
done


name="John"

for n in "$name"; do
	echo "Name: $n"
done
