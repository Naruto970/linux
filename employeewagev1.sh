#! /bin/bash -x

y=1;
z=2;
x=$((RANDOM%3))
rateperhour=25;
 
if [ $x == $y ]
 then
	echo employee is present
    workinghours=10
elif [ $x == $z ]
	then
	workinghours=4 
else
  	echo employee is absent
  	workinghours=0
fi 

salary=$(($workinghours*$rateperhour));
