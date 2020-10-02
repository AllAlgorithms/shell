# Bash Script implementation of binary search
#
# Author: Pei Hsuan Hung

# Perform Binary search
# Parameters: target number, array to search 
binary_search() {
	target=${1} && shift
	arr=($@)
	arr_head=0
	arr_tail=$(( ${#arr[@]} - 1 ))

	while ((arr_head != arr_tail))
	do
		mid=$(( (arr_head+arr_tail)/2 ))
		if (( arr[mid] == target ))
		then
			arr_head=$mid
			break
		elif (( arr[mid] < target ))
		then
			arr_head=$(( mid + 1 ))
		else
			arr_tail=$mid
		fi
	done

	# Print the result
	if (( arr[$arr_head] == target ))
	then
		echo "Found target ${target} at index ${arr_head}"
	else
		echo "Target ${target} not found"
	fi
}

# The array to search
arr=(1 4 7 19 34 45 60 78)

# Usage for binary_search
binary_search 99 ${arr[@]}
binary_search 4 ${arr[@]} 
