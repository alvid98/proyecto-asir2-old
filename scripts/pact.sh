#!/bin/bash
clear
echo "Lista de paquetes que se pueden actualizar: "
apt-get --just-print upgrade 2>&1 | perl -ne 'if (/Inst\s([\w,\-,\d,\.,~,:,\+]+)\s\[([\w,\-,\d,\.,~,:,\+]+)\]\s\(([\w,\-,\d,\.,~,:,\+]+)\)? /i) {print "PAQUETE: $1 INSTALADO: $2 DISPONIBLE: $3\n"}' | cut -d " " -f 1,2
lineas=$(apt-get --just-print upgrade 2>&1 | perl -ne 'if (/Inst\s([\w,\-,\d,\.,~,:,\+]+)\s\[([\w,\-,\d,\.,~,:,\+]+)\]\s\(([\w,\-,\d,\.,~,:,\+]+)\)? /i) {print "."}' | wc -l )
echo ""

read -p "¿Desea actualizar "$lineas" paquete/s? (s/n): " si
if [ $si == "s" ]; then
   apt -y upgrade
   [ $? -eq 0 ] && echo "Se han actualizado "$lineas" paquetes correctamente." || echo "Error al actualizar "$lineas" paquetes."
else
   echo "Operación cancelada."
fi
