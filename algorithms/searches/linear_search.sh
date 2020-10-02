# Bash Script implementation of linear search
#
# Author: Pei Hsuan Hung

# Perform Linear search
# Parameters: target number, array to search
linear_search() {
	target=${1} && shift
	arr=($@)

	for ((i=0; i<${#arr[@]}; i++))
	do
		if ((target == arr[i]))
		then
			echo "Target ${target} found at index ${i}"
			suc=1
			break
		fi
	done
	
	if [ -z $suc ]
	then
		echo "Target ${target} not found"
	fi
}

# The array to search
arr=(1 4 6 9 33 93 27)

# Usage for linear search
linear_search 34 ${arr[@]}
linear_search 6 ${arr[@]}
