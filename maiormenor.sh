#!/bin/bash


echo "Digite o primeiro valor"

read val1

echo "Digite o segundo valor"

read val2

if [ $val1 -gt $val2 ]
then 
	echo "a variavel $val1 eh maior que $val2"

elif [ $val1 -lt $val2 ]
then
	echo "a variavel $val2 eh maior que $val1"
else
	echo "as variaveis sao iguais"
fi