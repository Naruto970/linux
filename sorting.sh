#!/bin/bash -x

declare -A Test


read  -p "enter the no . of a: " a
read -p "enter the value of b: " b
read -p "enter the value of c: " c
echo $a $b $c

Test[Case1]=$(( ($a + $b) * $c ))
 echo ${Test[Case1]}
