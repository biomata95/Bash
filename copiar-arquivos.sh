#!/bin/bash

#copiar arquivos de um subdiretorio para outro diretorio

array2=()
array=$(ls -R */*.jpg)

#echo ${array[0]}


STR=${array[@]}
IFS=' ' read -ra NAMES <<< "$STR"    #Convert string to array

#Print all names from array
for i in "${NAMES[@]}"; do
    echo $i
    cp $i /home/biomata/Documentos/faces/
done

