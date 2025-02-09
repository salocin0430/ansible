#!/bin/bash

# Crear la estructura base
mkdir -p ansible
cd ansible

# Crear directorios principales
mkdir -p inventory group_vars roles

# Crear directorios para roles
mkdir -p roles/{common,master,workers,nfs}/{tasks,handlers,templates,files}

# Crear archivos base
touch ansible.cfg
touch inventory/hosts
touch group_vars/all.yml
touch site.yml 