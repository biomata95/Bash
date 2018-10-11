#!/bin/bash


verifica_usuario=$1

NOWDATE=$(date +"%Y-%m-%d")
NOWTIME=$(date +"%T")
USERS=$(who | cut -d " " -f1)
TERMINAL=0
LOGIN=0

flag=false
conta_usuarios=0
for u in $USERS
do
	echo "NAME:" $u "DATA: $NOWDATE"" ""HORA: $NOWTIME"
	if [ "$u" = "$verifica_usuario" ]
	then
    	flag=true
    fi
    conta_usuarios=$((conta_usuarios+1))
done

echo "users="$conta_usuarios

if [ "$flag" = true ]
then
	echo "Usuário "$verifica_usuario" se encontra logado."
else
	echo "Usuário "$verifica_usuario "não está logado no sistema."
fi
