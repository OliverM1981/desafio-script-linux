#!/bin/bash

echo "Criar diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios: /publico, /adm, /ven e /sec foram criados!"

echo "Criar grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " Grupos GRP_ADM, GRP_VEN e GRP_SEC foram criados!"

echo "Criar usuários para seus respectivos grupos"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao_ -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo " Criado usuários para o grupo GRP_ADM, carlos, maria e joao_!"

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo " Criado usuários para o grupo GRP_VEN, debora, sebastiana e roberto!"

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo " Criado usuários para o grupo GRP_SEC, josefina, amanda e rogerio!"

echo "Especificar permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões aos diretórios foram especificadas!"

echo "Fim da execução do script"
