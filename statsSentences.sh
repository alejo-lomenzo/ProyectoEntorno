#!/bin/bash

ARCHIVO=$1

ORACION_ACTUAL=""

LEN_MIN=-1
LEN_MAX=0

SUMA_LONGITUDES=0
CANT_ORACIONES=0

for PALABRA in $(cat $ARCHIVO)
do
    ORACION_ACTUAL="$ORACION_ACTUAL $PALABRA"
    if [[ $PALABRA =~ .*[.?!]$ ]] # Encontramos el final de una oracion con una regex
    then
        LARGO=`echo -n $ORACION_ACTUAL | wc -m`
        SUMA_LONGITUDES=$(($SUMA_LONGITUDES + $LARGO))
        CANT_ORACIONES=$(($CANT_ORACIONES + 1))
        if [[ $LARGO -lt $LEN_MIN || $LEN_MIN -eq -1 ]]
        then
            LEN_MIN=$LARGO
            ORACION_MAS_CORTA=$ORACION_ACTUAL
        fi
        if [[ $LARGO -gt $LEN_MAX ]]
        then
            LEN_MAX=$LARGO
            ORACION_MAS_LARGA=$ORACION_ACTUAL
        fi
        ORACION_ACTUAL="" # Vaciamos el contenedor de las oraciones para comenzar con una nueva
    fi
done

if [[ LEN_MAX -eq 0 ]] # Se dara solo en caso en que no haya habido ninguna oracion
then
    echo "El archivo no contenia oraciones."
    exit 1
else
    PROMEDIO_LONGITUD=$(($SUMA_LONGITUDES / $CANT_ORACIONES))
    echo "Oracion mas larga: $ORACION_MAS_LARGA"
    echo "Oracion mas corta: $ORACION_MAS_CORTA"
    echo "Promedio de longitud de las Oraciones: $PROMEDIO_LONGITUD"
    exit 0
fi
