#!/bin/bash
#skript laseb arvutada kui palju mahub bussi
#Küsin palju reisijaid ja kohti

read -r -p "Mitu reisijat on grupis: " reisijad 
read -r -p "Mitu kohta on bussis: " kohad 

#Arvutan busside arvu ja ülejäägi

bussid=$(expr "$reisijad" / "$kohad")
ylejaak=$(expr "$reisijad" % "$kohad")
 
#arvutan kas on vaja busse juurde 

if [ $ylejaak -eq 0 ]
then 
	echo "Täidetud bussid: $bussid" 
else
	busse=$(expr "$bussid" + 1)
	echo "Vajaminevaid busse: $busse"
fi
 
