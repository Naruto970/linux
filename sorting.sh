#!/bin/bash -x
declare -A  Test

valid=true
counter=0

read  -p "enter the no . of a: " a
read -p "enter the value of b: " b
read -p "enter the value of c: " c
echo $a $b $c

Test[1]=$(( ($a + $b) * $c ))
 echo ${Test[Case1]}
Test[2]=$(( ($a * $b) + $c ))
echo ${Test[Case2]} 
Test[3]=$(( ($c + $a) / $b ))
echo ${Test[Case3]}
Test[4]=$(( ($a % $b) +$c ))  
echo ${Test[Case4]}

 while [ $valid ]
do
   if [ $counter -le 4 ]
  then
   Input[((counter++))]=${Test[$counter]}
   else
    {
	break
    }
  fi
   done
echo ${Input[@]}
