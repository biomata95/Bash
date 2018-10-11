# le para um array de valores e os multiplica por dois
# eh realizada uma leitura da quantidade de valores que quiser

echo -n "Digite n valores"

for ((i=0; i<5; i++))
do

	read item
	array[$i]=$item
	
done

for ((i=0; i<5; i++))
do
	array[$i]=$(( array[$i] * 2 ))

	echo "${array[$i]}"
done
