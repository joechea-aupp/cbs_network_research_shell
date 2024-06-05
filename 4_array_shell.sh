#!/bin/bash

# declare and initialize an index array
my_array=("apple" "banana" "cherry")

echo "$my_array"
# this will only get the first element of the array
echo "${my_array}"
# sam as above
echo "${my_array[@]}"
# this will get all the elements of the array, in bash, the @ symbol is used to get all the elements of the array.
echo "${!my_array[@]}"
# if added ! before the array name, it will get all the indexes of the array.
echo "${#my_array[@]}"
# if added # before the array name, it will get the length of the array.
echo "${my_array[2]}"
# access array element by index position
my_array+=("grape")
echo "${my_array[@]}"

# add an element to the first of the array
my_array[0]="orange"
echo "${my_array[@]}"

# remove element from an array
unset 'my_array[2]'
# unset my_array[2]
# the quote and without quote are the same, it just with quote it is more error proof with space value
echo "${my_array[@]}"

# array slicing
# slice the array from index 1 to 3
echo "${my_array[@]:1:3}"
# slice the array from index 2 to the end
echo "${my_array[@]:2}"
# slice the array from the last 2 to the first index
echo "${my_array[@]:(-2)}" 

array_b=(1 2 3)
echo "${array_b[@]}"

# associated array
declare -A user_info

user_info[name]="John"
user_info[age]=30
user_info[city]="New York"

echo "${user_info[name]}"
echo "user info length: ${#user_info[@]}"

for key in "${!user_info[@]}"; do
	echo "$key: ${user_info[$key]}"
done 
