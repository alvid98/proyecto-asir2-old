#!/bin/bash
clear
echo "Lista de paquetes que se pueden actualizar: "
apt-get --just-print upgrade 2>&1 | perl -ne 'if (/Inst\s([\w,\-,\d,\.,~,:,\+]+)\s\[([\w,\-,\d,\.,~,:,\+]+)\]\s\(([\w,\-,\d,\.,~,:,\+]+)\)? /i) {print "PROGRAM: $1 INSTALLED: $2 AVAILABLE: $3\n"}' | cut -d " " -f 1,2
lineas=$(apt-get --just-print upgrade 2>&1 | perl -ne 'if (/Inst\s([\w,\-,\d,\.,~,:,\+]+)\s\[([\w,\-,\d,\.,~,:,\+]+)\]\s\(([\w,\-,\d,\.,~,:,\+]+)\)? /i) {print "PROGRAM: $1 INSTALLED: $2 AVAILABLE: $3\n"}' | wc -l )
echo ""

read -p "¿Desea actualizar "$lineas" paquete/s? (s/n): " si
if [ $si == "s" ]; then
   apt -y upgrade
   [ $? -eq 0 ] && echo "Se han actualizado "$lineas" paquetes correctamente." || echo "Error al actualizar "$lineas" paquetes."
else
   echo "Operación cancelada."
fi
