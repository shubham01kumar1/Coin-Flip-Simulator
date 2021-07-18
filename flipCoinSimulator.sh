#!/bin/bash -x

HEAD=1
TAIL=0

headWins=0
tailWins=0
for((i=0;i<10;i++))
do
	simulate=$((RANDOM%2))
	if [ $simulate -eq $HEAD ]
	then
		((headWins++))
	else
		((tailWins++))
fi
done

echo head wins:$headWins
echo tail wins:$tailWins
