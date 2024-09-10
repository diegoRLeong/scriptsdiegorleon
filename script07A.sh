#Autor: Diego Rafael Leon Grajeda
#Fecha: 08-07-2024
#Descripcion: Estructura de un menu
#!/bin/bash
echo "Seleccione una opcion del menu"
echo "1: script01"
echo "2: script02"
echo "3: script03"
echo "4: Salir"
read n
case $n in
	1) echo "script01"
		./script01.sh ;;
	2) echo "script02"
		./script02.sh ;;
	3) echo "script03"
		./script03.sh ;;
	4) echo "Saliendo...";;
	*) echo "Opcion incorrecta";;
	esac
