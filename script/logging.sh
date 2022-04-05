#!/bin/bash
# grupo-##-fecha-hora.log
#Programa que guarda en el log que carpetas contienen un archivo no vacio
# y que guarda el usuario y la distribucion de linux en un archivo generado con fecha y hora

ARCHIVO=grupo-01-$(date +%d-%m-%Y)-$(date +%H:%M).log

funciondatos(){
DISTRIBUCION=$(lsb_release -a)
USUARIO=$(gcloud config list account)
#DISTRIBUCION_2=$(cat /etc/*-release)

#echo $DISTRIBUCION

echo > $ARCHIVO
echo "GRUPO 01" >> $ARCHIVO
echo $USUARIO >> $ARCHIVO
echo $DISTRIBUCION >> $ARCHIVO
}


funcionvacios(){
for i in {1..10};do
    VAR=$(gsutil du -sh gs://crp-dev-iac-testing-bkt04/carpeta-00$i/ | awk '{printf $1}')
    if [ "$VAR" -ne "0" ];then
        echo "carpeta-00$i NO vacia" >> $ARCHIVO
    else
        echo "carpeta-00$i vacia"
    fi
done
}

funciondatos
funcionvacios