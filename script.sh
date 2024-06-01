#!/bin/bash

#añadir usuarios, asignarle una ubicación en /home, un shell predeterminado, un nombre de usuario, una descripción y luego establece una contraseña

sudo useradd -m -d /home/user1 -s /bin/bash -c "Usuario1" user1
echo "user1:Laestrella678" | chpasswd

logger "usuario 1 creado"

sudo useradd -m -d /home/user2 -s /bin/bash -c "Usuario2" user2
echo "user2:Laestrella678" | chpasswd

logger "usuario 2 creado"

sudo useradd -m -d /home/user3 -s /bin/bash -c "Usuario3" user3
echo "user3:Laestrella678" | chpasswd

logger "usuario 3 creado"

sudo useradd -m -d /home/user4 -s /bin/bash -c "Usuario4" user4
echo "user4:Laestrella678" | chpasswd

logger "usuario 4 creado"

sudo useradd -m -d /home/user5 -s /bin/bash -c "Usuario5" user5
echo "user5:Laestrella678" | chpasswd

logger "usuario 5 creado"

sudo useradd -m -d /home/user6 -s /bin/bash -c "Usuario6" user6
echo "user6:Laestrella678" | chpasswd

logger "usuario 6 creado"

#Crea grupos

sudo groupadd Desarrollo
sudo groupadd Operaciones
sudo groupadd Ingenieria

logger "grupos creados"

#Asigna usuarios a esos grupos

sudo usermod -aG Desarrollo user1
sudo usermod -aG Desarrollo user2
sudo usermod -aG Operaciones user3
sudo usermod -aG Operaciones user4
sudo usermod -aG Ingenieria user5
sudo usermod -aG Ingenieria user6

logger "usuarios asignados a sus grupos"

#Asigna permisos a cada usuario en sus respectivas ubicaciones

sudo chown user1 /home/user1
sudo chown user2 /home/user2
sudo chown user3 /home/user3
sudo chown user4 /home/user4
sudo chown user5 /home/user5
sudo chown user6 /home/user6

logger "permisos asignados a sus carpetas"