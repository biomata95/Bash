# realiza um while no qual voce digita um valor, eh serao impressos todos os valores 
# de 0 até o valor digitado

echo -n "Digite um valor:"

read num # le um determinado valor

cont=0 # contador começa com 0

while [ $cont -lt $num ] # enquanto o contador estiver menor que o valor digitado faça... 
do
	cont=$(($cont+1)) # soma o contador
	echo $cont # imprime valor
done
