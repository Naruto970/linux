#! /bin/bash -x
ispresent=1
isparttime=2
emprateperhour=20;
workdays=20
maxworkhoursinmonth=4

totalworkdays=0
totalworkhours=0

Totalhours=0
counter=0
function getworkhours()
{ 
 case $1 in $ispresent)
   workhours=10;;
    $isparttime)
   workhours=4;;
   *)
    workhours=0;;
esac
echo $workhours
}

function wage()
{
    wage=$(( $1 * $emprateperhour ))
    echo $wage
}
while [[ $totalworkhours -lt  $maxworkhoursinmonth 
&&
 $totalworkdays -lt $workdays ]]
 do
   (( totalworkdays++ ))
  workhours="$( getworkhours $((RANDOM%3)) )"
  wageperday="$( wage  $(($workhours)) )"
   Employee[ ((counter++)) ]=$wageperday
 totalworkhours=$(($totalworkhours+$workhours))
done
  totalwage=$(($totalworkhours*$emprateperhour))
Employee[ ((counter++)) ]=$totalwage
echo ${Employee[@]}













