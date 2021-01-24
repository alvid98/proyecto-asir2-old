#!/bin/bash
clear

echo "Creación de usuario:"

read -p "Introduzca suario: " username
read -s -p "Introduzca contraseña: " password
echo ""
egrep "^$username" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
	echo "$username ya existe!"
	exit 1
else
	pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
	useradd -m -p "$pass" "$username"
	[ $? -eq 0 ] && echo "Usuario "$user" creado correctamente." || echo "Error al añadir el usuario!"
fi


