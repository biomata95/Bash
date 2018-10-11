#Vetor dinamico, valores  multiplicados por dois e coloca o resultado da multiplicacao em outro vetor

echo "Digite quantos valores quiser. Para encerrar a leitura tecle Crtl+D"

array=()
array2=()

while read -r item; # realizada a leitura de valores e para encerrar digite Ctrl+D
do
	array+=("$item")
done

tamanho=${#array[@]} # tamanho do vetor

for ((i=0; i<tamanho; i++)) 
do #enquanto o tamanho não for atingido os valores do vetor são mulitiplicados por 2 e colocados em outro vetor
	array2[$i]=$(( array[$i] * 2 ))
done

echo "Numero de itens: " ${#array[@]}
echo "Dados: " ${array[@]}
echo "Dados multplicados por dois: " ${array2[@]}
