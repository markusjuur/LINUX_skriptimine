#!/bin/bash 
#Skript küsib kasutaja käest tema nime ning teretab teda 

read -r -p "Sisesta eesnimi: " eesnimi
read -r -p "Sisesta perekonnanimi: " perekonnanimi

echo "Tere $eesnimi $perekonnanimi"
