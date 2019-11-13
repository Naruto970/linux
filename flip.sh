#!/bin/bash -x
let -A flipstore

read -p "enter the no. of times to flip coin" n
head=0
tail=0
hh=0
ht=0
th=0
tt=0
coin1=0
coin2=0
ttt=0
htt=0
tht=0
tth=0
hht=0
hth=0
thh=0
hhh=0

function singlet()
 {
   for (( i=0 ; i<$1 ; i++ ))
		{
			val=$((RANDOM%2))
	if [ $val -eq 0 ]
  		then 
    			(( head++ ))	
		else
   	 		(( tail++ ))
	fi
}
}

 singlet $((n)) 

echo "the value of head is" $head
echo "the value of tails is" $tail
echo "the percentages of heads and tails are as: "
	headper=$(( ($head*100) / n ))
	tailper=$(( ($tail*100) / n ))

function doublet()
{  
   for (( i=0 ; i<$1 ; i++ ))
  { 
     coin1=$((RANDOM%2))
     coin2=$((RANDOM%2))
   if [ $coin1 -eq 0 ] && [ $coin2 -eq 0 ]
     then ((hh++))
   elif [ $coin1 -eq 0 ] && [ $coin2 -eq 1 ]
        then ((ht++))
      elif [ $coin1 -eq 1 ]  && [ $coin2 -eq 0 ]
        then ((th++))
         else
            ((tt++))

   fi
}  
}

doublet $((n))

echo "hh" $hh
echo "ht" $ht
echo "th" $th
echo "tt" $tt

hhper=$(( ($hh*100) / n ))
htper=$(( ($ht*100) / n ))
thper=$(( ($th*100) / n ))
ttper=$(( ($tt*100) /n ))


function triplet()
{  
   for (( i=0 ; i<$1 ; i++ ))
  { 
     coin1=$((RANDOM%2))
     coin2=$((RANDOM%2))
     coin3=$((RANDOM%2))
   if  [ $coin1 -eq 0 ] && [ $coin2 -eq 0 ] && [ $coin3 -eq 1   ]
     then ((ttt++))
   elif [ $coin1 -eq 0 ] && [ $coin2 -eq 0 ] && [ $coin3 -eq 0  ]
        then ((htt++))
    elif [ $coin1 -eq 0 ]  && [ $coin2 -eq 1 ] && [ $coin3 -eq 1  ]
        then ((tht++))
   elif [ $coin1 -eq 0 ] && [ $coin2 -eq 1 ] && [ $coin3 -eq 0  ]
        then ((tth++))
    elif [ $coin1 -eq 1 ]  && [ $coin2 -eq 0 ] && [ $coin3 -eq 1  ]
        then ((hht++))
   elif [ $coin1 -eq 1 ] && [ $coin2 -eq 0 ] && [ $coin3 -eq 0  ]
        then ((hth++))
    elif [ $coin1 -eq 1 ] && [ $coin2 -eq 1 ] && [ $coin3 -eq 1  ]
        then ((thh++))
    else
           ((hhh++))

       fi
}  
}

triplet $((n))

tttper=$(( ($ttt * 100) / n ))
httper=$(( ($htt * 100) / n ))
thtper=$(( ($tht * 100) / n ))
tthper=$(( ($tth * 100) / n ))
hhtper=$(( ($hht * 100) / n ))
hthper=$(( ($hth * 100) / n ))
thhper=$(( ($thh * 100) / n ))
hhhper=$(( ($hhh * 100) / n ))

flipstore[hper]=$headper
flipsotre[tper]=$tailper
flipstore[hhper]=$hhper
flipstore[htper]=$htper
flipstore[thper]=$ttper
flipstore[ttper]=$thper
flipstore[tttper]=$tttper
flipstore[httper]=$httper
flipstore[thtper]=$thtper
flipstore[tthper]=$tthper
flipstore[hhtper]=$hhtper
flipstore[hthper]=$hthper
flipstore[thhper]=$thhper
flipstore[hhhper]=$hhhper

 echo ${flipstore[@]}
