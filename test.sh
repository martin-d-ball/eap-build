#!/bin/bash
a=$1
b=$2
# Lexicographic (greater than, less than) comparison.
if [ "$a" -ge "$b" ]; then
    echo "$a is lexicographically smaller or equal to $b"
elif [ "$a" -le "$b" ]; then
    echo "$b is lexicographically smaller than $a"
else
    echo "Strings are equal"
fi
