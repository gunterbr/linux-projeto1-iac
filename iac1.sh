#!/bin/bash

echo "Criando diretórios..."

mkdir /root

echo "Criando grupos de usuários..."

groupadd GRP_ROOT

echo "Criando usuários..."

useradd root -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ROOT

echo "Especificando permissões dos diretórios...."

chown root:GRP_ROOT /root

chmod 770 /root

echo "Fim....."

