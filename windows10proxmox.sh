#!/bin/bash

# Cria uma VM no estilo Proxmox
qm create -n windows10 -m 4096 -c 2 -l eth0,mac=00:22:33:44:55:66

# Conecta a VM à rede
qm network connect windows10 eth0

# Inicia a VM
qm start windows10

# Instala o Windows 10
qm import iso windows10.iso
qm console windows10

# Seleciona o idioma português
selectlanguage pt-br

# Aceita os termos de uso
accepteula

# Inicia a instalação
install

# Seleciona a partição para instalar o Windows 10
selectpartition 0

# Formata a partição
format

# Instala o Windows 10
install

# Reinicia o computador
reboot

# Instala os drivers de hardware
qm import driver windows10.inf
qm console windows10

# Atualiza o Windows 10
run windowsupdate

# Reinicia o computador
reboot

# Instala os aplicativos
qm import app windows10.app
qm console windows10

# Inicializa a VM
qm start windows10