#!/usr/bin/env bash
# run :- bash factorial.sh <your number>

#first argument
counter=$1

# exit if no args provided
if [ $# -eq 0 ];then
	echo "Usage: bash factorial.sh <your number>"
	exit 1
fi

factorial() {
	fact=1
	temp=$counter
	while [ $temp -gt 0 ] #while counter > 0
	do
		fact=$(( $fact * $temp ))
		temp=$(( $temp - 1 ))
	done
	echo "$fact"
}

# call function
echo "factorial of $counter = $(factorial)"
