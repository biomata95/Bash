#!/bin/bash


arquivos=$(find -type f -name "backup*" ! -name ".sh")

if [ "$arquivos" = "" ]
then
	echo "Não há backup existente. Será criado o primeiro.\n\n"
	tar -czvf backup1.tar.gz $@
else
	i=0
	for param in $(find -type f -name "backup*")
	do
		if [ ${param:8:1} != "." ]
		then
			echo ${param:8:1}
			posicao=${param:8:1}
			break
		fi
	done
	tar -czvf backup$((posicao+1)).tar.gz $@
	echo "Backup novo criado."
fi
