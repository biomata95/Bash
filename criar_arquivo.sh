#!/bin/bash


arquivo_criado=$1
 
flag=true

for entry in `ls -a`
do
	echo "arquivo: $entry"
	if [ "$entry" = "$arquivo_criado" ]
   	then
   		flag=false
  	fi
done

if [ "$flag" = true ]
then
	touch $arquivo_criado
	$(chmod 744 $arquivo_criado)
	echo "Arquivo $arquivo_criado criado com sucesso."
else
	echo "Arquivo já existente."
fi



