#! /bin/bash -x
isfulltime=1
isparttime=2
value=$((RANDOM%3))
rateperhour=25;
 
case $value in 
	$isfulltime)
         workinghours=10;;
        $isparttime)
	workinghours=4;; 
        * )
  	workinghours=0;;
esac 
salary=$(($workinghours*$rateperhour))
echo $salary
