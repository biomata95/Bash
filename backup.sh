#!/bin/bash

echo -e "# Relatório de backup #" >>  bkp-$(date +"%d")$(date +"%m")$(date +"%Y").log
echo -e "Inicializado em: $(date +"%d-%m-%Y") $(date +"%T")"  >> bkp-$(date +"%d")$(date +"%m")$(date +"%Y").log

tar -czvf backup.tar.gz $@

echo -e "Finalizado em: $(date +"%d-%m-%Y") $(date +"%T")\n\n\n"  >> bkp-$(date +"%d")$(date +"%m")$(date +"%Y").log

#echo "Você passou $# parâmetros"
#argumentos=( "$@" )
#tamanho_argumentos=${#argumentos[@]}
#echo " Lista de parametros argumentos por argumento"

#for param in "$@"
#do
#	echo -e "Parametro : $param"
#done

#for ((i=0; i <= $tamanho_argumentos ; i++)); do
#	elemento=${argumentos[$i]}
#	echo $elemento
#done

