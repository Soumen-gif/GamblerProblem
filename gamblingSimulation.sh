#!/bin/bash -x
#Discription:Gambling Simulation As Per UseCases
#Author:Hrishikesh M Bodake
#Since:March 7 2020 Saturday

stakes=100
day=0
game=0
#UC1:After 1 win stakes will increse by 1
function gamble(){
	while [[ $game -lt 1 ]]
	do
		stakes=$(($stakes+1))
		((game++))
	done
}
gamble
