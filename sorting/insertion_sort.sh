#!/bin/bash

#                      Define Functions Here                        #
#####################################################################

printnumbers()
{
echo ${ARRAY[*]}
}

sortnumbers()
{
for((i=1;i<count;i++))
do
   Temp=${ARRAY[i]}
   j=$((i-1))
   while [ $Temp -lt ${ARRAY[j]} ]
   do
      ARRAY[j+1]=${ARRAY[j]}
      let j--
      if [ $j == -1 ]
      then
         break
      fi
   done
   ARRAY[j+1]=$Temp
done
}

#                       Variable Initialization                     #
#####################################################################

echo "Enter numbers to be sorted"

read -a ARRAY

count=${#ARRAY[@]}

#                       Main Script Starts Here                     #
#####################################################################

echo "---------------------------------------------------------------"

echo "Numbers Before Sort:"

printnumbers

sortnumbers

echo "Numbers After Sort: "

printnumbers

echo "---------------------------------------------------------------"
