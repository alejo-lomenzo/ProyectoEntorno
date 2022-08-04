#!/bin/bash

RESULTADO=$( grep -v "\S" $1 | grep -v "\a" | wc -l)

echo "La cantidad de lineas en blanco en el archivo $1 es de $RESULTADO."

# "\S" machea las lineas con algun caracter
# "\s" machea las lineas con espacios en blanco
# -v invierte la seleccion

