#!/usr/bin/env bash
# run :- bash fibonacci.sh <your number>

# Usage
[ $# -ne 1 ] && { echo "Usage: bash fibonacci.sh <your number>"; exit 1; }

fibonacci() {
	prev=0
	current=1
	fib[0]=$prev
	fib[1]=$current
	i=2
	while [ $i -lt $1 ] ; do
		sum=$(( $prev + $current ))
		fib[i]=$sum
		((++i))
		prev=$current
		current=$sum
	done
	echo ${fib[*]}
}

# call function
echo "fibonacci series with $1 terms = $(fibonacci $1)"
