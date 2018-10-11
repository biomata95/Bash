# pega o nome de todos os arquivos e manda para um vetor dinamico e depois imprime o nome dos arquivos

array=() # vetor

#no comando /home/usuario/Downloads voce pode colocar o caminho da pasta que quiser
for filename in /home/usuario/Downloads*
do
	array+=${filename##*/} # adiciona o nome do arquivo para o vetor
	
done # sai do loop

echo  ${array[@]} #imprime o vetor com nome dos arquivos
