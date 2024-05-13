1)
    a) Se puede notar que el archivo "sinhilos.py" tarda mas tiempo en ejecutarse (alrededor de 5seg) que el archivo "conhilos.py" (alrededor de 4seg). Era predecible que el archivo "conhilos.py" se cargue mas rapido porque utiliza threading (los hilos), que sirven para operaciones concurrentes dentro de un solo proceso.
    b)Lo comparamos y pudimos ver que los tiempos de ejecucion son parecidos, ya que, lo unico que va variando son los milisegundos.
    c)Antes de descomentar las lineas comentadas, el valor daba 0 y el tiempo de ejecucion era milisegundos (menor que 1seg) pero una vez descomentado tomo mas tiempo (alrededor de 2seg) y daba un resultado tanto positivo y negativo e iba variando demasiado. Esto ocurre porque al descomentar el ciclo for, le agrega una carga a la CPU lo que aumenta el tiempo de ejecucion.
2)
    a)Codigo en funcionamiento.
    b) <img src="./DiagramaRegionesCriticasDiagram.drawio.png">