# proyecto-asir2
Trabajo de fin de grado asir2

# Descripción

Script que incluye todas las herramientas necesarias para la administración de linux sin la necesidad de saber los comandos que se usarian en su defecto.
# Introducción del proyecto:

El proyecto pretende crear una manera fácil y rapida de administrar un sistema linux.
# Finalidad

Facilitar al usuario administrador las tareas habituales de gestión de servidores sin necesidad de tener que ser un especialista en el manejo de comandos. 
Usando la herramienta, se ahorraria un tiempo considerable en la administración del servidor.
# Objetivos

El script permitirá a los administradores de sistemas actuar sobre las principales funciones del equipo:

    Gestión de Usuarios
        Creación/Edición/Eliminación de Usuarios
        Creación/Edición/Eliminación de Grupos
    Gestión de Apache/Nginx
        Configuración de VirtualHost
        Instalación de Certificados
    Gestión de Bases de Datos
        Instalación y configuración del SGBD disponibles para el usuario
    Gestión de Servicios
        Configuración FTP
        Configuración SSH
        Configuración Mail
    Gestión de Archivos
        Configuración Permisos
        Compartición de carpetas
        Copiar/Mover/Eliminar archivos y/o directorios
    Gestión de Dispositivos
        Configuración de Disco
    Gestión de Diagnóstico
        Monitorización de sistema
        Actualización de paquetes

# Medios hardware y software a utilizar

Este proyecto se encarga de la parte de administración de sistemas linux con el uso de un script que sea capaz de configurar lo necesario sin la necesidad de ayuda extra.

Para el desarrollo se utilizará un entorno linux en el que se escribirán los scripts. Como entorno de pruebas se utilizará un servidor remoto dentro de una red local (una pequeña máquina conectada al router de casa) con las siguientes características:

    Intel(R) Celeron(R) CPU J1800 @ 2.41 GHz
    SO: Linux 5.9.0-0.bpo.2-amd64
    RAM: 8Gb

# Planificación

Si se aprueba el anteproyecto se comenzará con el desarrollo en varias fases:

    Fase de planificación y diseño:
        Planificación de la estructura del script
        Planificación del diseño de la interfaz
    Fase de desarrollo:
        Desarrollo del script con las diferentes funcionalidades.
    Fase de Despliegue
        Acceso a ssh a un servidor
        Copiado de la herramienta
        Instalación script

Teniendo hasta la entrega y presentación del proyecto 12 semanas, el tiempo disponible se reparte de la siguiente manera:

    Planificación y Diseño: 2 semanas
    Desarrollo: 8 semanas
    Despliegue: 2 semanas
    
    
# API

El conjunto de scripts puede ser usado como api para una aplicación web que estará desarrollando un alumno de Desarrollo de Aplicaciones Web.
