# Bash Script implementation of lucky number generator
#
# Author: Pei Hsuan Hung

# The expected maximum of lucky number
RNG=100
arr=($(seq -s ' ' 1 $RNG))

# Sieve the numbers
cnt=1
while ((cnt < ${#arr[@]}))  # Stop when no numbers could be deleted
do
	cnt=$(( ${cnt}+1 ))
	for ((j=cnt-1; j<${#arr[@]}; j=j+cnt))
	do
		unset arr[$j]
	done
	arr=(`echo ${arr[@]}`)
done

echo "Lucky numbers from 1 to ${RNG}:"
echo ${arr[@]}
