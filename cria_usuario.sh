#!/bin/bash


usuario_criado=$1

for entry in `cut -d: -f1 /etc/passwd`
do
	if [ "$entry" = "$usuario_criado" ]
	then
		echo "Usuário já existente no sistema."
		exit 
	fi
done

useradd "$usuario_criado"
echo "Usuário cadastrado com sucesso"

for entry in `cut -d: -f1 /etc/passwd`
do
	if [ "$entry" = "$usuario_criado" ]
	then
		echo "$entry <- AQUI ESTA O NOVO USUÁRIO"
	else
		echo "$entry"
	fi
done