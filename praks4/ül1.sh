#!/bin/bash

#küsin kasutaja käest arvu

read -r -p "Sisesta üks täisarv: " taisarv

#Vaatan kas number on paaris või mitte

arv=$(( $taisarv % 2 )) 
if [ $arv -eq 0 ]
then 
	echo "$taisarv on paaris"
else
	echo "$taisarv on paaritu"
fi
