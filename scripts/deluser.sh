#!/bin/bash
clear
echo "Usuarios creados:"
minuid=$(grep -E '^UID_MIN' /etc/login.defs | cut -d " " -f 2)
getent passwd {1000..60000} | cut -d ":" -f 1 | nl

read -p "Elija el usuario que quiere eliminar: " sel

uid=$(getent passwd {1000..60000} | cut -d ":" -f 3 | sed -n $sel'p')

user=$(getent passwd $uid | cut -d ":" -f 1)
read -p "Está seguro de que desea eliminar a "$user" (s/n)" conf

if [ $conf == "s" ]; then
	deluser $user
	[ $? -eq 0 ] && rm -r /home/$user && echo "Usuario "$user" eliminado correctamente." || echo "Error al eliminar el usuario"
else
	echo "Operación cancelada."
fi
