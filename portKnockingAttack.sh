#!/bin/bash

#Recebe as informações sobre o alvo
echo "Digite o range de  IP e porta  que deseja verificar na máquina alvo :"
echo "Exemplo: 192.168.1 21"
read ip portaAlvo
echo "Quantas portas serao batidas antes de tentar a conexao?"
read numPorta
echo "Digite a sequencia de portas para realizarmos as batidas:"
echo "Exemplo: 22 80 1337 37897" #Edite com a sequencia de portas desejada
read port1 port2 port3 port4

#Inciando as batidas e teste de conexão
for host in {1..254};do
	echo "--------------------------------------------------------"
	echo "Testando >>>>>> IP:"  $ip.$host
	for num in {1..4};do
		#Executando a batida
		sudo hping3 -p $port$num --syn -c 1 $ip.$host 2>/dev/null | cut -d "(" -f 1;
	done;
	#Verificando se houve conexão
	wget $ip.$host:$portaAlvo -O 2>/dev/null
	echo "-------------------------------------------------------"
done

