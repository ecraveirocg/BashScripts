#!/bin/bash
#Solicita o site para o usuario
echo "HTML Parsing "
echo "Digite o nome do site: "
read site

#Baixa o index.html do site informado
wget $site

echo "----------------------------------------------------------"
#Procurando outros dominios
echo "Procurando outros dominios..."
echo "Por favor, aguarde."
grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > listaDominios
echo "----------------------------------------------------------"
#Mostra os dominios encontrados
echo "Encontramos o seguintes endereços"
for url in $(cat listaDominios);do host $url | grep "has address";done
sudo rm listaDominios && rm index.html
