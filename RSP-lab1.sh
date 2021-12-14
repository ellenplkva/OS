#!/bin/bash

echo -e "RSP (rock, scissors, paper)"

while true
do

echo "Enter your figure (rock, scissors, paper) or otpustite"
read figure

# 0 - rock, 1 - scissors, 2 - paper
rand_figure=$((RANDOM % 3))


if [[ "$figure" = "rock" ]] ; then 
	if [[ "$rand_figure" = "2"  ]] ; then
		echo -e "Opponents figure is paper \nyou lose"

	elif [[ "$rand_figure" = "1" ]] ; then 
		echo -e "Opponents figure is scissors \nyou win"

	else
		echo -e "Opponents figure is rock \ndraw"
	fi

elif [[ "$figure" = "scissors" ]] ; then
	if [[ "$rand_figure" = "0" ]] ; then
		echo -e "Opponents figure is rock \nyou lose"

	elif [[ "$rand_figure" = "1" ]] ; then
		echo -e "Opponents figure is scissors \ndraw"

	else
		echo -e "Opponents figure is paper \nyou win"
	fi

elif [[ "$figure" = "paper" ]] ; then
	if [[ "$rand_figure" = "1" ]] ; then
		echo -e "Opponents figure is scissors \nyou lose"

	elif [[ "$rand_figure" = "0" ]] ; then
		echo -e "Opponents figure is rock \nyou win"

	else
		echo -e "Opponents figure is paper \ndraw"
	fi

elif [[ "$figure" = "otpustite" ]] ; then
	exit

else 
	echo incorrect command
fi
done 
