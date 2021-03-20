#!/bin/bash


declare -A operations

read -p "enter fno:" a
read -p "enter sno:" b
read -p "enter tno:" c

operations[w]=$(( $a + $b * $c ))
operations[x]=$(( $a * $b + $c ))
operations[y]=$(( $c + $a / $b ))
operations[z]=$(( $a % $b + $c ))


echo ${operations[@]}
index=0

arr=()
for i in ${operations[@]}; do

        #assign i value to array[index]
        arr[$index]=$i

        #increment index
        index=`expr $index + 1`
done
echo "Array before sorting:" ${arr[*]}

for ((i = 0; i<4; i++)) 
do
      
    for((j = 0; j<4-i-1; j++)) 
    do
      
        if [ ${arr[j]} -lt ${arr[$((j+1))]} ] 
        then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
echo "Array sorted in descending order :" ${arr[*]}
