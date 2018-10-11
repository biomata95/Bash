# testa se o primeiro argumento contem alguma informacao
#$1: significa o argumento a ser que voce deseja verificar a extensao, por exemplo: 
#./parametro.sh arquivo.tar O $1 significa arquivo.tar

if [ "$1" != "" ]; then
    echo "O primeiro argumento contem alguma informacao"
else
    echo "O primeiro argumento nao contem nenhuma informacao"
fi

elemento=$1

echo "Item: " $elemento
