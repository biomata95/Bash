#!/bin/bash


string=$1

detalhes_string=$(ls -ld $string)

primeiro_caractere=${detalhes_string:0:1}

if [ "$primeiro_caractere" = "d" ]
then
	echo "Este componente eh um diretorio"
else
	echo "Este componente eh um arquivo"
fi
