#!/bin/bash
#skript laseb arvutada kui palju mahub bussi
#Küsin palju reisijaid ja kohti

read -r -p "Mitu reisijat on grupis: " reisijad 
read -r -p "Mitu kohta on bussis: " kohad 

#Arvutan busside arvu ja ülejäägi

bussid=$(expr "$reisijad" / "$kohad")
ylejaak=$(expr "$reisijad" % "$kohad") 

#Annan vastuse

echo "Täielikult täidetud busse: $bussid"
echo "Maha jäänud reisijad: $ylejaak"
