read a #comando que realiza a leitura do valor a
read b #comando que realiza a leitura do valor b


soma=$((a+b))
subtracao=$((a-b))
divisao=$((a/b))
multiplicacao=$((a*b))


echo "Soma:" $soma
echo "Subtracao:" $subtracao
echo "Divisao" $divisao
echo "Multiplicacao:" $multiplicacao
echo "sqrt($a)" | bc -l  # realiza a raiz quadrada do valor a
