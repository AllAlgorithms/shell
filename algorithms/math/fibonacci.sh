#!/usr/bin/env bash
# run :- bash fibonacci.sh <your number>

# input fibonacci limit
limit=$1

# exit if no args provided
if [ $# -eq 0 ];then
	echo "Usage: bash fibonacci.sh <your number>"
	exit 1
fi

fibonacci() {
	prev=0
	current=1
	fib[0]=$prev
	fib[1]=$current
	i=2
	while [ $i -lt $limit ] ; do
		sum=$(( $prev + $current ))
		fib[i]=$sum
		((++i))
		prev=$current
		current=$sum
	done
	echo ${fib[*]}
}

# call function
echo "fibonacci series with $limit terms = $(fibonacci)"
