#!/bin/bash
#

#Küsin kasutaja käest mis OS ta soovib

osch=0
echo "1. Unix (Sun Os)"
echo "2. Linux (Red Hat)"
echo -n "Select your os choice [1 or 2]? "

#Kirjutan mis ta valis

read osch
if [ $osch -eq 1 ] ; then
     echo "You Pick up Unix (Sun Os)"
else #### nested if i.e. if within if ######
       if [ $osch -eq 2 ] ; then
             echo "You Pick up Linux (Red Hat)"
       else
#Kui kasutaja valib 3 või suurema täisarvu siis kirjutab selle
             echo "What you don't like Unix/Linux OS."
       fi
fi
