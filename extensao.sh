# o programa verifica qual eh a extensao do arquivo
#$1: significa o argumento a ser que voce deseja verificar a extensao, por exemplo: 
#./extensao arquivo.tar O $1 significa arquivo.tar

if # testa se o argumento foi digitado
 [ "$1" != "" ]; then
    echo "Elemento foi digitado"
else
    echo "Parametro vazio"
fi

nomeCompleto=$1 #nome completo do arquivo
nome="${nomeCompleto%.*}" #apenas o nome do arquivo
extensao="${nomeCompleto##*.}" # apenas a extensao do arquivo

echo "Nome completo do arquivo:" $nomeCompleto
echo "Apenas o nome:" $nome
echo "Extensao do arquivo:" $extensao

if [ "$extensao" == "zip" ]
then
	echo "Este eh um arquivo zip"
	unzip $nomeCompleto -d  $nome

fi

if [ "$extensao" == "gz" ]
then
        echo "Este eh um arquivo tar"
        tar -xvzf $nomeCompleto  

fi

if [ "$extensao" == "dpkg" ]
then
	echo "Este eh um arquivo dpkg"
	dpkg -x $nomeCompleto $nome
fi
