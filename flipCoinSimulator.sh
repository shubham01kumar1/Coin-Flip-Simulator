#!/bin/bash -x

HEAD=1
TAIL=0
simulate=$((RANDOM%2))
if [ $simulate -eq $HEAD ]
then
	echo HEAD WINS
else
	echo TAIL WINS
fi
