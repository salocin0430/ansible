#!/bin/bash

# 1. Generar par de claves SSH en el servidor Ansible (si no existe)
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ""

# 2. Copiar la clave pública a todos los nodos
# Nota: Esto pedirá la contraseña root de cada servidor una vez
for host in k8s-master k8s-worker1 k8s-worker2 nfs-server; do
    ssh-copy-id root@$host
done

# 3. Verificar la conexión
for host in k8s-master k8s-worker1 k8s-worker2 nfs-server; do
    echo "Verificando conexión a $host..."
    ssh root@$host "hostname"
done 