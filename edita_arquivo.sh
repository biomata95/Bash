#!/bin/bash


nome_arquivo=$1
tamanho_arquivo=$2

tamanho_tecnico=$((tamanho_arquivo*1024*1024))

echo $tamanho_tecnico

$(dd if=/dev/zero of=$nome_arquivo bs=$tamanho_tecnico count=1)

flag=false


for entry in `ls -a`
do
	if [ "$entry" = "$nome_arquivo" ]
   	then
   		echo "$entry <- AQUI ESTA O ARQUIVO NOVO" 
   		flag=true
   	else
   		echo "$entry"
  	fi
done

if [ "$flag" = true ]
then
	echo "Arquivo $nome_arquivo criado com sucesso."
else
	echo "Erro na criação do arquivo."
fi
