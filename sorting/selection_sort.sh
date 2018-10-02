#!/bin/bash

printnumbers()
{
echo ${ARRAY[*]}
}

swap()
{
temp=${ARRAY[$1]}

ARRAY[$1]=${ARRAY[$2]}

ARRAY[$2]=$temp
}

sortnumbers()
{
for ((i=0;i<count;i++))
do
min=$i
  for ((j=i+1;j<count;j++))
  do
     if [ ${ARRAY[j]} -lt ${ARRAY[min]} ]
     then
     min=$j
     fi
  done
  swap $i $min
done
}


# Variable Initialization

echo "Enter Numbers to be Sorted : "

read -a ARRAY

count=${#ARRAY[@]}


# Main Script Starts Here

echo "---------------------------------------------------------------"

echo "Numbers Before Sort:"

printnumbers

sortnumbers

echo "Numbers After Sort: "

printnumbers

echo "---------------------------------------------------------------"

