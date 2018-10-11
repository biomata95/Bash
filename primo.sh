# este programa testa se um valor eh primo


echo -n "Digite um valor:"

read num # le um valor

i=2 # valor do divisor

cont=0 # conta o numero de divisoes perfeitas

while [ $i -lt $num ] # enquanto o divisor eh menor que o valor digitado...
do
	resto=$((num%i)) # resto da divisao, ou seja, modulo
	if [ $resto -eq 0 ] # se o resto da divisao atual for 0 conta como divisao perfeita
	then
		cont=$((cont+1))
	fi
	i=$((i+1)) # soma o divisor
done

if [ $cont -eq 0 ] # testa para saber se houve alguma divisao perfeita, se ocorreu uma divisao perfeita o numero eh primo senao e nao-eh
then 
	echo "Primo"
else
	echo "Nao eh primo"
fi
