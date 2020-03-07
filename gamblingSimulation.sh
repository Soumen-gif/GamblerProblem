#!/bin/bash -x
#Discription:Gambling Simulation As Per UseCases
#Author:Hrishikesh M Bodake
#Since:March 7 2020 Saturday

stakes=100
day=0
game=0
isWon=1
noOfBets=5
#UC2:Win is getting decided by randomly
function gamble(){
	while [[ $game -lt $noOfBets ]]
	do
		if [[ $((RANDOM%2)) -eq $isWon ]]
		then
			stakes=$(($stakes+1))
		else
			stakes=$(($stakes-1))
		fi
			((game++))
	done
}
gamble
