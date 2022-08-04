# TP_Final_EdP 

##  Trabajo Práctico Final - Entorno de Programación - TUIA 2022

El proyecto consiste en generar un contenedor que al ejecutarse presente un menú de opciones de filtrados (mini aplicaciones creadas a partir de bash scripts) de un archivo de texto dado.  
Para el mismo, se editó un Dockerfile y se construyó una imagen, a partir de la cual se ejecutará el contenedor.
 
##  Pasos de ejecución del contenedor:
1. Ingresar en una terminal:
2. $git clon https://github.com/alejo-lomenzo/ProyectoEntorno.git
3. $cd ProyectoEntorno
4. $ docker build --tag tpedp .
5. $ docker run -it --rm tpedp

# A continuación, una vez que ya hemos ejecutado el contenedor, figurará un menú de la siguiente manera:

_1. Stat Words_  
_2. Stats Usage Words_  
_3. Find Names_  
_4. Stat Sentences_  
_5. Blank Lines Counter_  
_6. Exit_  

Ingresamos la opción deseada para analizar el texto (números del 1 al 6) o salimos con el 6.

# Siguiendo nuestro caso, seleccionamos, por ejemplo, la opción 2 (Stats Usage Words) y a continuación veremos el resultado:

Please select the script to run:2

- Con 9 repeticion(es): orci
- Con 9 repeticion(es): eget
- Con 9 repeticion(es): amet
- Con 9 repeticion(es): Donec
- Con 7 repeticion(es): vitae
- Con 7 repeticion(es): tincidunt
- Con 6 repeticion(es): ultrices
- Con 6 repeticion(es): quam
- Con 6 repeticion(es): posuere
- Con 6 repeticion(es): neque
 
Luego, aparecerá en pantalla la frase: "Please select the script to run:"
En el caso que elijamos la opcion 6 el pograma finalizaria automaticamente.

## Descripción de las funciones:
~~~
1. Stat Words
Indicador estadístico de longitud de palabras. 
- Palabra más corta
- Palabra más larga 
- Promedio de longitud
~~~
~~~
2. Stats Usage Words
Lista las 10 palabras más usadas. 
Se consideran palabras de 4 o más carateres.
~~~
~~~
3. Find Names
Lista de nombres propios. 
Se consideran las palabras del tipo Nnnnnnnnn, aunque no sea un nombre propio realmente.
~~~
~~~
4. Stat Sentences
Indicador estadístico de longitud de oraciones. 
- Oración más corta
- Oración más larga 
- Promedio de longitud
~~~
~~~
5. Blank Lines Counter
Indica cuántas líneas vacías hay en el archivo.
Una línea con sólo espacios en blanco no se considera línea vacía.
~~~
~~~
6. Exit
Salir de la aplicación.
~~~






