#!/bin/bash -x
declare -A  Test

read  -p "enter the no . of a: " a
read -p "enter the value of b: " b
read -p "enter the value of c: " c
echo $a $b $c

Test[Case1]=$(( ($a + $b) * $c ))
 echo ${Test[Case1]}
Test[Case2]=$(( ($a * $b) + $c ))
echo ${Test[Case2]} 
Test[Case3]=$(( ($c + $a) / $b ))
echo ${Test[Case3]}
Test[Case4]=$(( ($a % $b) +$c ))  
echo ${Test[Case4]}

