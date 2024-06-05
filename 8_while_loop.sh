#!/bin/bash

# create a simple counter
counter=0

while [[ $counter -lt 11 ]] 
do
	echo "$counter"
	((counter++))
done
