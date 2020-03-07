#!/bin/bash -x
#Discription:Gambling Simulation As Per UseCases
#Author:Hrishikesh M Bodake
#Since:March 7 2020 Saturday
stakes=100
day=20
isWon=1
winningGoal=150
loosingLimit=50
noOfBets=5
lCounter=0
luckyDay=0
unLuckyDay=0
maxWinCount=0
maxLostCount=0
totalAmount=0
totalLost=0
#UC5:echo the loss or won per month

function playForDays(){
	 for (( index=1; index<=$day; index++ ))
   do
      stakes=100
       while [[ $stakes -gt $loosingLimit && $stakes -lt $winningGoal ]]
      do
         if [[ $((RANDOM%2)) -eq $isWon ]]
         then
            stakes=$(($stakes+1))
				((wCounter++))
         else
            stakes=$(($stakes-1))
				((lCounter++))
         fi
       done
	totalAmount=$(($totalAmount+$stakes))

	if [[ $wCounter > $maxWinCount ]]
	then
		maxWinCount=$wCounter
		luckyDay=$index
	elif [[ $lCounter > $maxLostCount ]]
	then
		maxLostCount=$lCounter
		unLuckyDay=$index
	fi
   done
	echo "Lucky day => $luckyDay"
	echo "Unlucky day => $unLuckyDay"
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
