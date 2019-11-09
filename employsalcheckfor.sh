#! /bin/bash -x
ispresent=1
isparttime=2
isabsent=3
rateperhour=25;
days=20
  for((i=1 ; $i<=$days ; i++))
do
     value=$((RANDOM%3))
  case $value in
        $ispresent )
           workinghours=10;;
        $isparttime )
 	   workinghours=4;;
        * )
  	   workinghours=0;;
  esac
 	  salary=$(($salary+$(($workinghours*$rateperhour))))
done

