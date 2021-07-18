#!/bin/bash -x

HEAD=1
TAIL=0

headWins=0
tailWins=0

while [ $headWins -lt 21 ] && [ $tailWins -lt 21 ]
do
	simulate=$((RANDOM%2))
	if [ $simulate -eq $HEAD ]
	then
		((headWins++))
	else
		((tailWins++))
	fi
done

if [ $headWins -eq $tailWins ]
then
	while [ $((headWins-tailWins)) -lt 2 ] && [ $((tailWins-headWins)) -lt 2 ]
	do
		simulate=$((RANDOM%2))
		if [ $simulate -eq $HEAD ]
		then
			((headWins++))
		else
			((tailWins++))
		fi
	done
fi

if [ $headWins -gt $tailWins ]
then
	echo "HEAD Wins by: "$((headWins-tailWins))
else
	echo "TAIL Wins by: "$((tailWins-headWins))
fi
