#!/bin/bash
 

echo "Criando diretórios"

mkdir /publico
mkdir /ADM
mkdir /VEN
mkdir /SEC

echo "Criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -c "Carlos"  -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
useradd sebastiana -c "Sebastiana"  -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
useradd roberto -c "Roberto"  -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN

useradd josefina -c "Josefina"  -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
useradd amanda -c "Amanda"  -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
useradd rogerio -c "Rogerio"  -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /ADM
chown root:GRP_VEN /VEN
chown root:GRP_SEC /SEC

chmod 770 /ADM
chmod 770 /VEN
chmod 770 /SEC
chmod 777 /publico

echo "Procedimento Finalizado." 

