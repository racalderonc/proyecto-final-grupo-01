#!/bin/bash
crear_directorios() {

gsutil mb -p crp-dev-iac-testing -c STANDARD -l US-EAST4 -b on gs://crp-dev-iac-testing-bkt04 

for i in {1..9} ; do
    mkdir carpeta-00$i  
    touch carpeta-00$i/sinceramente.txt
    gsutil cp -r carpeta-00$i gs://crp-dev-iac-testing-bkt04
    echo “Creación de directorios terminado“ 
    rm -r carpeta-00$i
done
for i in {10..100} ; do
    if [ “$i” = “100” ]; then 
        mkdir carpeta-$i 
        touch carpeta-$i/sinceramente.txt
        gsutil cp -r carpeta-$i gs://crp-dev-iac-testing-bkt04
        echo “Creación de directorios terminado“ 
        rm -r carpeta-$i
    else
        mkdir carpeta-0$i 
        touch carpeta-0$i/sinceramente.txt
        gsutil cp -r carpeta-0$i gs://crp-dev-iac-testing-bkt04
        rm -r carpeta-0$i
    fi     
done 
}
crear_directorios;