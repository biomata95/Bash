# pega o nome de todos os arquivos e manda para um vetor dinamico, os copia coloca em outra pasta

ls * #lista todos os arquivos da pasta

arquivos=/home/biomata/Documentos/Bash/* #adiciona para uma variavel o nome de todos os arquivos

cont=0 # conta a quantidade de arquivos que estão sendo copiados
for i in $arquivos  #enquanto tiver arquivos
do
	
	echo "arquivo: "  $i 
	array[$cont]=$i
	cont=$((cont+1))
	
done

tamanho=${#array[@]} # tamanho do vetor com o nome de cada arquivo

echo $tamanho

echo  "itens:" ${array[0]} # imprime os itens do vetor 

if [ -d copiados ] # testa se o diretorio copiados ja existe
then
	echo "diretorio ja existe"
	existe=/home/biomata/Documentos/Bash/copiados/* #coloca em uma variavel o caminho da pasta que será copiados 
	cont1=0
	for i in $existe
	do
        	echo "arquivo: "  $i
	        array1[$cont]=$i
        	cont1=$((cont1+1))
	done
	if [ $cont1 -eq 0 ] # testa se a pasta copiados está vazia
	then
		echo "Pasta vazia, arquivos estao sendo copiados"
		for ((i=0; i<tamanho; i++))
	        do
        	        file="${array[$i]}"
                	cp $file copiados/ # copia os arquivos do vetor e coloca na pasta copiados
        	done
	else
		echo "Pasta Cheia"
	fi
else # diretorio eh criado caso a pasta copiados não tenha sido criada
	echo "O diretorio esta sendo criado, e os arquivos copiados"
	mkdir copiados
	for ((i=0; i<tamanho; i++))
	do
		file="${array[$i]}"
		cp $file copiados/
	done
fi

echo $file
