#!/bin/bash

echo "Ingrese el nombre de un archivo: "
read archivo

if [ ! -f "$archivo" ]; then
	echo "Error: El archivo '$archivo' no existe."
	exit 1
fi

numLineas=$(wc -l < "$archivo")
numPalabras=$(wc -w < "$archivo")
numCaracteres=$(wc -m < "$archivo")

echo "El numero de las lineas son: $numLineas."
echo "El numero de las palabas son: $numPalabras."
echo "El numero de los caracteres son: $numCaracteres."

