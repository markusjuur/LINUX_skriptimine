#!/bin/bash
# Skript arvutab, mitu pakki küpsiseid on tordi valmistamiseks vaja.

read -r -p "Sisesta tordipõhja pikkus (cm): " pikkus
read -r -p "Sisesta tordipõhja laius (cm): " laius

read -r -p "Sisesta ühe küpsise laius (cm): " kypsise_laius
read -r -p "Sisesta ühe küpsise pikkus (cm): " kypsise_pikkus

read -r -p "Mitu kihti tuleb tordile: " kihid
read -r -p "Mitu küpsist on ühes pakis: " pakis

# Arvutame, mitu küpsist mahub ühele kihile.
pikkuses=$(expr "$pikkus" / "$kypsise_pikkus")
laiuses=$(expr "$laius" / "$kypsise_laius")
kihis=$(expr "$pikkuses" \* "$laiuses")

# Arvutame kõigi kihtide jaoks vajalike küpsiste arvu.
kokku=$(expr "$kihis" \* "$kihid")

# Arvutame pakkide arvu, ümardades ülespoole.
pakke=$(expr \( "$kokku" + "$pakis" - 1 \) / "$pakis")

echo "Ühte kihti mahub $kihis küpsist."
echo "Kokku on vaja $kokku küpsist."
echo "Poest tuleb osta $pakke pakki küpsiseid."
