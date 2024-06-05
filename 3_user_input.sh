#!/bin/bash

read -p "Enter your name: " name
read -p "Enter your age: " age

echo 
echo "Your name is $name and you are $age years old."

echo "Your age in the next 5 years will be $((age+5)) years old."
