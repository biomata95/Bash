#!/bin/bash

val=$1
echo "$val"

if [ $val -lt 0 ]
then
	echo "O valor de entrada eh negativo."
elif [ $val -gt 0 ]
then
	echo "O valor de entrada eh positivo."
else
	echo "O valor eh nulo."
fi