#!/bin/bash

echo "Selecciona una de las siguientes opciones"
echo "1 - Tijeras"
echo "2 - Papel"
echo "3 - Piedra"
echo "Seleccion: "
read opcion

numRandom=$(( RANDOM %3 + 1))

if [[ $opcion -ne 1 && $opcion -ne 2 && $opcion -ne 3 ]]; then
	echo "Tiene que seleccionar entre 1, 2 o 3"
	exit 1
fi

if [[ $opcion == 1 && $numRandom == 1 ]] || [[ $opcion == 2 && $numRandom == 2 ]] || [[ $opcion == 3 && $numRandom == 3 ]]; then
	echo "Es un empate! La computadora selecciono $numRandom."
elif [[ $opcion == 1 && $numRandom == 2 ]] || [[ $opcion == 2 && $numRandom == 3 ]] || [[ $opcion == 3 && $numRandom == 1 ]]; then
	echo "Ganaste! La computadora selecciono $numRandom."
else
	echo "Perdiste... La computadora selecciono $numRandom."
fi

