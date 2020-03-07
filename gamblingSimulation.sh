#!/bin/bash -x
#Discription:Gambling Simulation As Per UseCases
#Author:Hrishikesh M Bodake
#Since:March 7 2020 Saturday

stakes=100
day=20
game=0
isWon=1
winningGoal=150
loosingLimit=50
noOfBets=5
totalAmount=0
totalLost=0
#UC5:echo the loss or won per month

function playForDays(){
	 for (( index=0; index<$day; index++ ))
   do
      stakes=100
       while [[ $stakes -gt $loosingLimit && $stakes -lt $winningGoal ]]
      do
         if [[ $((RANDOM%2)) -eq $isWon ]]
         then
            stakes=$(($stakes+1))
         else
            stakes=$(($stakes-1))
         fi
       done

   totalAmount=$(($totalAmount+$stakes))
   done
   investedAmount=$(($day*100))
   if [[ $(($totalAmount-$investedAmount)) -lt 0 ]]
   then
      lost=$(($investedAmount-$totalAmount))
      echo "Total lost this month are: $lost"
   else
      won=$(($totalAmount-$investedAmount))
      echo "Total win this month are: $won"
   fi

}
playForDays
