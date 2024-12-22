#!/bin/bash
echo .                                                    .
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""
echo "Effortless Ubuntu Maintenance: Clean, Fix, Optimize!"
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""
echo .                                                    .

# Asegurarse de que el script se ejecute con privilegios de superusuario
if [[ $EUID -ne 0 ]]; then
   echo "Este script debe ejecutarse como root" 
   exit 1
fi

# Paso 1: Actualizar la lista de paquetes
echo "Actualizando la lista de paquetes..."
sudo apt update

# Paso 2: Actualizar los paquetes instalados
echo "Actualizando los paquetes instalados..."
sudo apt upgrade -y

# Paso 3: Eliminar paquetes huérfanos (dependencias no necesarias)
echo "Eliminando paquetes huérfanos..."
sudo apt autoremove -y

# Paso 4: Reparar dependencias rotas
echo "Reparando dependencias rotas..."
sudo apt --fix-broken install -y

# Paso 5: Limpiar el caché de paquetes descargados
echo "Limpiando el caché de paquetes..."
sudo apt clean

# Paso 6: Reconfigurar cualquier paquete que necesite configuración
echo "Reconfigurando paquetes pendientes..."
sudo dpkg --configure -a

# Paso 7: Verificar si hay paquetes rotos
echo "Verificando paquetes rotos..."
dpkg -l | grep ^..r

# Paso 8: Corregir cualquier paquete roto (si existe)
echo "Corriendo corrección de paquetes rotos..."
sudo apt install -f -y

# Paso 9: Reiniciar el sistema (opcional)
echo "Reiniciando el sistema..."
sudo reboot
