#!/bin/bash

#    Gestión de Usuarios
#        Creación/Edición/Eliminación de Usuarios
#        Creación/Edición/Eliminación de Grupos
#    Gestión de Apache/Nginx
#        Configuración de VirtualHost
#        Instalación de Certificados
#    Gestión de Bases de Datos
#        Instalación y configuración del SGBD disponibles para el usuario
#    Gestión de Servicios
#        Configuración FTP
#        Configuración SSH
#        Configuración Mail
#    Gestión de Archivos
#        Configuración Permisos
#        Compartición de carpetas
#        Copiar/Mover/Eliminar archivos y/o directorios
#    Gestión de Dispositivos
#        Configuración de Disco
#    Gestión de Diagnóstico
#        Monitorización de sistema
#        Actualización de paquetes

salir=0
clear

	echo "Elija una opcion:"
	echo "1- Gestión de usuarios."
	echo "2- Gestión de Apache/Nginx."
	echo "3- Gestion de Bases de datos"
	echo "4- Gestión de servicios."
	echo "5- Gestión de Archivos."
	echo "6- Gestión de dispositivos."
	echo "7- Gestión de diagnóstico."
	echo "8- Salir."
	read -p "Opcion: " opcion

while [ $salir -eq 0 ]; do

case $opcion in
  0)
    clear
    echo "Elija una opcion:"
    echo "1- Gestión de usuarios."
    echo "2- Gestión de Apache/Nginx."
    echo "3- Gestion de Bases de datos"
    echo "4- Gestión de servicios."
    echo "5- Gestión de Archivos."
    echo "6- Gestión de dispositivos."
    echo "7- Gestión de diagnóstico."
    echo "8- Salir."
    read -p "Opción: " opcion
  ;;
  1)
    clear
    echo "1- Creación/Edición/Eliminación de Usuarios."
    echo "2- Creación/Edición/Eliminación de Grupos."
    echo "3- Atrás."
    read -p "Opción: " gesuser
    case $gesuser in
      1)
	echo "1- Crear usuario."
	echo "2- Editar usuario."
	echo "3- Eliminar usuario."
	echo "4- Atrás"
        read -p "Opción: " user
        case $user in
         1)
	  ./scripts/adduser.sh
	  read -p "Presiona ENTER para continuar..."
         ;;
         2)
	  echo "2"
	  read -p "Presiona ENTER para continuar..."
         ;;
         3)
	  ./scripts/deluser.sh
          read -p "Presiona ENTER para continuar..."
         ;;
	 4)
	  echo hola
	 ;;
        esac

      ;;
      2)
	echo "2"
      ;;
      3)
	opcion=0
      ;;
    esac
  ;;
  2)
    clear
    echo "1- Configuración de Virtualhosts."
    echo "2- Instalación de certificados."
    echo "3- Atrás."
    read -p "Opción: " apache
    case $apache in
      1)
	echo "1"
      ;;
      2)
	echo "2"
      ;;
      3)
	opcion=0
      ;;
    esac
  ;;
  3)
    clear
    echo "1- Usar mysql."
    echo "2- Exportar bases de datos."
    echo "3- Importar bases de datos."
    echo "4- Atrás."
    read -p "Opción: " bbdd
    case $bbdd in
      1)
	mysql -u root
      ;;
      2)
	echo "2"
      ;;
      3)
	echo "3"
      ;;
      4)
	opcion=0
      ;;
    esac
 ;;
  4)
    clear
    echo "1- Configuración de FTP."
    echo "2- Configuración de SSH."
    echo "3- Configuración de Mail."
    echo "4- Atrás."
    read -p "Opción: " servicios
    case $servicios in
      1)
	echo "1"
      ;;
      2)
	echo "2"
      ;;
      3)
	echo "3"
      ;;
      4)
	opcion=0
      ;;
    esac
  ;;
  5)
    clear
    echo "1- Configuración de Permisos."
    echo "2- Compartición de carpetas."
    echo "3- Copiar/Mover/Eliminar archivos y/o directorios."
    echo "4- Atrás."
    read -p "Opción: " usuario
    case $usuario in
      1)
	echo "1"
      ;;
      2)
	echo "2"
      ;;
      3)
	opcion=0
      ;;
    esac
  ;;
  6)
    clear
    echo "1- Montar/desmontar discos."
    echo "2- Crear/eliminar particiones."
    echo "3- Información de los discos."
    echo "4- Atrás."
    read -p "Opción: " discos
    case $discos in
      1)
	echo "1"
      ;;
      2)
	echo "2"
      ;;
      3)
	sh scripts/infodisco.sh
	read -p "Presiona ENTER para continuar..."
	opcion=0
      ;;
      4)
	opción=0
      ;;
    esac
  ;;
  7)
    clear
    echo "Configuración de Virtualhosts."
    echo "Instalación de certificados."
    echo "3- Atrás."
    read -p "Opción: " usuario
    case $usuario in
      1)
	echo "1"
      ;;
      2)
	echo "2"
      ;;
      3)
	opcion=0
      ;;
    esac
  ;;
  8)
    clear
    salir=1
  ;;
esac

done
