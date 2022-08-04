#!/bin/bash

FILE=$(cat $1)

for palabra in $FILE
do
	echo $palabra | grep "^[A-Z]"
done

# almacenamos todo el txto en una variable, la recorremos con el for y filtramos
# con la funcion grep las palabras que comienzen con letras mayusculas.

