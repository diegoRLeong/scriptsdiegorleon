#Autor: Diego Rafael Leon Grajeda
#Fecha: 10-07-2024
#Descripcion: Estructura de un menu
#!/bin/bash
echo "Seleccione una opcion del menu"
echo "1: listado"
echo "2: Fecha"
echo "3: directorio actual"
echo "4: Salir"
read n
case $n in
	1) echo "listado"
		is ;;
	2) echo "Fecha"
		date;;
	3) echo "directorio actual"
		pwd;;
	4) echo "Saliendo...";;
	*) echo "Opcion incorrecta";;
	esac
