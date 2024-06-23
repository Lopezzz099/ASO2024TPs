#!/bin/bash

inicio=0
final=0
ejecutado=0
tiempoAcumulado=0

while true; do
	echo "Selecciona una de las siguientes opciones: "
	echo "1 - Iniciar cronometro"
	echo "2 - Detener cronometro"
	echo "3 - Reiniciar cronometro"
	echo "4 - Salir del programa"
	read opcion

	case $opcion in
		1)
			if [ $ejecutado == 0 ]; then
				inicio=$(date +%s)
				ejecutado=1
				echo "Cronometro iniciado"
			else
				echo "El cronometro esta ejecutado"
			fi
			;;
		2)
			if [ $ejecutado == 1 ]; then
				ejecutado=0
				final=$(date +%s)
				tiempo=$(($final - $inicio))
				tiempoAcumulado=$(($final - $inicio + $tiempoAcumulado))
				echo "El tiempo fue de $tiempo."
				echo "El tiempo total es de $tiempoAcumulado."
			else
				echo "El cronometro no esta ejecutado"
			fi
			;;
		3)
			inicio=0
			final=0
			ejecutado=0
			tiempoAcumulado=0
			echo "Cronometro reiniciado"
			;;
		4)
			echo "Saliendo del programa..."
			exit 1
			;;
		*)
			echo "Error, tiene que seleccionar una opcion de las siguientes: 1, 2, 3 o 4."
			;;
	esac
done
