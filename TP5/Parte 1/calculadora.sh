#!/bin/bash

echo "Selecciona dos nomeros para la calculadora: "
echo "El primero: "
read num1
echo "El segundo: "
read num2

echo "Ahora selecciona una de las siguientes opciones: "
echo "1 - Sumar"
echo "2 - Restar"
echo "3 - Multiplicacion"
echo "4 - Division"
echo "Tu seleccion: "
read opcion

case $opcion in
	1)
		suma=$( echo "$num1 + $num2" | bc )
		echo "La suma entre $num1 y $num2 es $suma."
		;;
	2)
                resta=$( echo "$num1 - $num2" | bc )
                echo "La resta entre $num1 y $num2 es $resta."
                ;;
        3)
                multiplicacion=$( echo "$num1 * $num2" | bc )
                echo "La multiplicacion entre $num1 y $num2 es $multiplicacion."
                ;;
        4)
		if [ $num2 == 0 ]; then
			echo "No se puede hacer ya que el segundo numero es 0."
		else
	        	division=$( echo "scale=2; $num1 / $num2" | bc )
                	echo "La division entre $num1 y $num2 es $division ."
		fi
                ;;
        *)
                echo "Ingresaste mal, las opciones son 1, 2, 3 y 4."
                ;;
esac


