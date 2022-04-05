#!/bin/bash
#Programa que guarda el usuario y la distribucion d elinux en un archivo generado con fecha y hora

ARCHIVO=grupo-01-$(date +%d-%m-%Y)-$(date +%H:%M).log
DISTRIBUCION=$(lsb_release -a)
USUARIO=$(gcloud config list account)
#DISTRIBUCION_2=$(cat /etc/*-release)

#echo $DISTRIBUCION

echo > $ARCHIVO
echo "GRUPO 01" >> $ARCHIVO
echo $USUARIO >> $ARCHIVO
echo $DISTRIBUCION >> $ARCHIVO

