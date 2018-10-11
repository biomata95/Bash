# le para um array de valores e os multiplica por dois
# eh realizada uma leitura de 5 valores

echo -n "Digite 5 valores:"

for ((i=0; i<5; i++))
do
	read item # leitura de 5 valores
	array[$i]=$item # coloca os valores no array
done

echo "imprime" # os imprime

for ((i=0; i<5; i++)) 
do #impressao dos valores
	echo "${array[$i]}"
done
