#!/bin/bash


echo "Criando usuários do sistema...."

useradd root -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G root
passwd root -e

echo "Finalizado!!"

