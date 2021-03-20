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

echo "Array is :" ${arr[*]}
