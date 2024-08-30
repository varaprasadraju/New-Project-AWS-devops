#!/bin/bash

#index starts from zero, size is 4

FRUITS=("Apple" "Kiwi" "Banana" "Orange")

echo "First fruit is: ${FRUITS[0]}"
echo "Second fruit is: ${FRUITS[1]}"
echo "Thirt fruit is: ${FRUITS[2]}"
echo "Fourth fruit is: ${FRUITS[3]}"

echo "All fruits is ${FRUITS[@]}"
