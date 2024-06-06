#!/bin/bash

username=""
age=""
fullname=""

while getopts "u:a:f:" flag; do
	case "${flag}" in
		u) username=${OPTARG};;
		a) age=${OPTARG};;
		f) fullname=${OPTARG};;
	esac
done

[ $username ] && echo  "Username: $username"
[ $age ] && echo  "Age: $age"
[ $fullname ] && echo  "Fullname: $fullname"
