#!/bin/bash


ARCHIVO=$1

LEN_MIN=-1
LEN_MAX=0

CANT_CARACTERES=0
CANT_PALABRAS=0


for PALABRA in $(cat $ARCHIVO | grep -oE "\w+") # Iterando por las palabras del archivo
do
    LARGO=`echo -n $PALABRA | wc -m`
    if [[ $LARGO -lt $LEN_MIN || $LEN_MIN -eq -1 ]]
    then
        LEN_MIN=$LARGO
        PALABRA_MAS_CORTA=$PALABRA
    fi
    if [[ $LARGO -gt $LEN_MAX ]]
    then
        LEN_MAX=$LARGO
        PALABRA_MAS_LARGA=$PALABRA
    fi

    CANT_PALABRAS=$(($CANT_PALABRAS + 1))
    CANT_CARACTERES=$(($CANT_CARACTERES+$LARGO))
done

if [[ LEN_MAX -eq 0 ]] # Se dara solo en caso en que no haya habido ninguna palabra
then
    echo "El archivo no contenia palabras."
    exit 1
else
    PROMEDIO_LONGITUD=$(($CANT_CARACTERES / $CANT_PALABRAS))
    echo "Palabra mas larga: $PALABRA_MAS_LARGA"
    echo "Palabra mas corta: $PALABRA_MAS_CORTA"
    echo "Promedio de longitud de las palabras: $PROMEDIO_LONGITUD"
    exit 0
fi
