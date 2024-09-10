# Autor: Diego Rafael Leon Grajeda
# Fecha: 08-07-2024
# Descripción: Actividad menu de opciones 
#!/bin/bash 

echo "Bienvenido al menu de gestión del sistema"
echo "Por favor seleccione una opción:"
echo "1. Mostrar el nombre de la versión de Linux que usa"
echo "2. Generar una copia de n archivos a un dispositivo de almacenamiento"
echo "3. Generar listado de los usuarios creados en el equipo"
echo "4. Mostrar en pantalla la capacidad de almacenamiento de la distribución"
echo "5. Salir"

read -p "Introduzca su opción: " opcion

case $opcion in
    1)
	clear
        echo "La versión de Linux es:"
        cat /etc/*release
	./menu.sh
        ;;
    2)
	clear
        read -p "Introduzca la ruta de los archivos a copiar: " ruta_archivos
        read -p "Introduzca la cantidad de archivos a copiar: " cantidad
        read -p "Introduzca el dispositivo de almacenamiento (ej. /dev/sdb1): " dispositivo
        ls -p $ruta_archivos | grep -v / | head -n $cantidad | xargs -I {} cp {} $dispositivo
	./menu.sh
        ;;
    3)
	clear
        echo "Listado de usuarios:"
        cut -d: -f1 /etc/passwd
	./menu.sh
        ;;
    4)
	clear
        echo "Capacidad de almacenamiento de la distribución:"
        df -h
	./menu.sh
        ;;
    5)
	clear
        echo "Saliendo del script..."
        exit 0
        ;;
    *)
	clear
        echo "Opción no válida."
        ./menu.sh
	;;
esac
