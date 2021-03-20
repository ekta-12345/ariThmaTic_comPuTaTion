#!/bin/bash -x
read -p "enter fno:" a
read -p "enter sno:" b
read -p "enter tno:" c
w=$(( a + b * c ))
x=$(( a * b + c ))
y=$(( c + a / b ))
z=$(( a % b + c ))
