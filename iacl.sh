#!/bin/bash

echo "Criando os Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os Grupos de Usuários..."

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando os Usuários e adicionando aos grupos..."

useradd carlos -c "Carlos" -s /bin/bash -p $(openssl passwd Senha123) -m -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -p $(openssl passwd Senha123) -m -G GRP_ADM
userdd joao -c "Joao" -s /bin/bash -p $(openssl passwd Senha123) -m -G GRP_ADM

useradd debora -c "Debora" -s /bin/bash -p $(openssl passwd Senha123) -m -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -p $(openssl passwd Senha123) -m -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -p $(openssl passwd Senha123) -m -G GRP_VEN

adduser josefina -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123) -m -G GRP_SEC
adduser amanda -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123) -m -G GRP_SEC
adduser rogerio -c "Rogerio" -s /bin/bash -p $(openssl passwd Senha123) -m -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado criação."
