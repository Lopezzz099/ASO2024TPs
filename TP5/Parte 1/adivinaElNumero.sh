#!/bin/bash

numRandom=$(( RANDOM % 100 + 1))

echo "Selecciona un numero del 1 al 100"
echo "Si le erras te voy indicando si es mayor o menor el numero"

# Inicializo la variable
numAdivinar=0

while [ $numAdivinar -ne $numRandom ]; do
	echo "Selecciona el numero: "
	read numAdivinar
	if [ $numAdivinar -gt $numRandom ]; then 
		echo "El numero random es menor al numero seleccionado"
	fi
	if [ $numAdivinar -lt $numRandom ]; then 
		echo "El numero random es mayor al numero seleccionado"
	fi
done

echo "Encontraste el numero! Era $numRandom"
