# escreve de 1 até 20, no numero digitado o loop para

echo -n "Digite um valor de 1 a 20:"

read num # lê um valor

for((i=0; i<=20; i++)) 
do # realiza o for
	if [ $i -eq $num ] # se o valor corrente da iteracao eh  menor que 20
	then
		break # sai do programa
	else
		echo $i # imprime valor
	fi
done
