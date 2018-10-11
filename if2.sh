# este programa le dois valores, o num e num2. E depois realiza a soma entre num e num2 e faz um teste para saber se o resultado da soma eh igual a 100

echo -n "Digite um valor:"

read num # le primeiro valor

echo -n "Digite outro valor:"

read num2 # le segundo valor

num3=$((num+num2)) # soma os dois valores

if [ "$num3" -eq 100 ] # testa se a soma eh igual a 100
then
	echo "A soma dos dois valores eh igual a 100, " $num3 
else
	echo "A soma dos dois valores eh diferente de 100, " $num3
fi
