#Imprime apenas o numeros pares até o valor digitado

echo -n "Digite um valor:"

read num # le o valor digitado

cont=0 # contador inicializado com 0


while [ $cont -lt $num ] # enquanto o contador estiver menor que o valor digitado
do
	resto=$(($cont % 2)) # pega o resto do valor
	if [ $resto -eq "0" ] # testa se o resto eh igual a 0
	then
		echo $cont # imprime valor par
	fi
	cont=$(($cont+1)) # soma o contador
done
