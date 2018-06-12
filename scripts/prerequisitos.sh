#!/bin/bash



# Network
# -------
# Cuando se está planeando tener acceso desde el exterior al servidor y a
# las instancias, este es un buen momento para configurar adecuadamente
# los ajustes de red. Añadir una IP estática a tu tarjeta de red y deshabilitar
# NetworkManager son buenas ideas.
sudo systemctl disable firewalld
sudo systemctl stop firewalld
sudo systemctl disable NetworkManager
sudo systemctl stop NetworkManager
sudo systemctl enable network
sudo systemctl start network

# Advanced Networking
# -------------------
# El siguiente método debería permitir a cualquier máquina de la red tener
# acceso a las instancias lanzadas a través de sus IPs flotantes.
# Inicialmente, sigue las insrucciones base, 
