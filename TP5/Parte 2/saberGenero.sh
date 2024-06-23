#!/bin/bash

echo "Ingrese un nombre para saber su genero:"
read nombre

response=$(curl -s "https://api.genderize.io/?name=$nombre")

if echo "$response" | jq -e .error >/dev/null; then
        echo "Error: $(echo $response | jq -r .error.message)"
        exit 1
fi

genero=$(echo "$response" | jq -r '.gender')
probabilidad=$(echo "$response" | jq -r '.probability')

# Paso la probabilidad de 0. a entero
probabilidadCargada=$(echo "$probabilidad * 100" | bc)

if [ $genero == "female" ]; then
	echo "$nombre es de genero femenino y su probabilidad es $probabilidadCargada%."
elif [ $genero == "male" ]; then
	echo "$nombre es de genero masculino y su probabilidad es $probabilidadCargada%."
else
	echo "$nombre no tiene genero"
fi
