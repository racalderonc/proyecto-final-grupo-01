#!/bin/bash
#Se coloco un time de 0.5 para q pasase rapido el muestreo de los archivos

echo "Desea mostrar el contenido de los archivos? (Y/N)"
read -r a
if [ "$a" = "Y" -o "$a" = "y" ]; then
    echo "Escogiste que SI, ahi van los archivos";
    for i in {1..100};do
        if [ $i -lt 10 ]; then
            gsutil cat gs://crp-dev-iac-testing-bkt04/carpeta-00$i/sinceramente.txt
        fi
        if [ $i -gt 9 -a $i -lt 100 ]; then
            gsutil cat gs://crp-dev-iac-testing-bkt04/carpeta-0$i/sinceramente.txt
        fi
        if [ $i -eq 100 ]; then
            gsutil cat gs://crp-dev-iac-testing-bkt04/carpeta-$i/sinceramente.txt
        fi
        sleep 0.5
    done 
else 
    echo "Escogiste que NO";
fi