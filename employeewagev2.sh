#! /bin/bash -x
value=$((RANDOM%3))
rateperhour=25;
 
case $value in 
	1 )
	echo employee is present
         workinghours=10;;
        2 )
        echo employee is parttime
	workinghours=4;; 
        * )
        echo employee is absent
  	workinghours=0;;
esac 
salary=$(($workinghours*$rateperhour))
echo $salary
