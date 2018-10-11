#!/bin/bash

# programa que realiza um if basico

echo -n "Digite um valor:"

read num # lê um valor

if [ "$num" -lt 50 ]
then # testa se o valor eh meno que 50
	echo "Este valor eh menor do que 50"
else
	echo "Este valor eh maior do que 50"
fi
