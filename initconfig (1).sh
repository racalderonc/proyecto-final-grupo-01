#!/bin/bash

crear_directorios() {
gsutil mb -p crp-dev-iac-testing -c STANDARD -l US -b on gs://prueba-equipo-grupo1


for i in {1..9} ; do
    mkdir carpeta-#00$i  
    touch carpeta-#00$i/sinceramente.txt
    gsutil cp -r carpeta-#00$i gs://prueba-equipo-grupo1
    echo “Creación de directorios terminado“ 
    rm -r carpeta-#00$i
done

for i in {10..100} ; do

if [ “$i” = “100” ]; then 
    mkdir carpeta-#$i 
    touch carpeta-#$i/sinceramente.txt
    gsutil cp -r carpeta-#$i gs://prueba-equipo-grupo1
    echo “Creación de directorios terminado“ 
    rm -r carpeta-#$i
else
    mkdir carpeta-#0$i 
    touch carpeta-#0$i/sinceramente.txt
    gsutil cp -r carpeta-#0$i  gs://prueba-equipo-grupo1
	rm -r carpeta-#0$i
fi 

    
done 
}

crear_directorios;
