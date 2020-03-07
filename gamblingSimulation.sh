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
totalWon=0
totalLost=0
#UC4:Play for 20 days and calculate total won or lost
function gamble(){
		while [[ $stakes -gt $loosingLimit && $stakes -lt $winningGoal ]]
		do
			if [[ $((RANDOM%2)) -eq $isWon ]]
			then
				stakes=$(($stakes+1))
			else
				stakes=$(($stakes-1))
			fi
				((game++))
		done
		echo $stakes
}
function playForDays(){
	for (( index=0; index<$day; index++ ))
	do
		totalWon=$(($totalWon+$( gamble )))
	done
}
playForDays
