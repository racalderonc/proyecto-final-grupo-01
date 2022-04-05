#!/bin/bash
# grupo-##-fecha-hora.log

ARCHIVO=grupo-01-$(date +%d-%m-%Y)-$(date +%H:%M).log


for i in {1..10};do
    VAR=$(gsutil du -sh gs://crp-dev-iac-testing-bkt04/carpeta-00$i/ | awk '{printf $1}')
    if [ "$VAR" -ne "0" ];then
        echo "carpeta-00$i NO vacia" >> $ARCHIVO
    else
        echo "carpeta-00$i vacia"
    fi
done
