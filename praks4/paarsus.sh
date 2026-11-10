
#!/bin/bash
# Skript kontrollib, kas etteantud täisarv on paaris või paaritu

# Kontrollin argumentide arvu
if [ "$#" -ne 1 ]
then
    echo "Viga! Sisesta täpselt üks täisarv."
    exit 1
fi

# Kontrollin, kas sisestatud argument on täisarv
if ! [[ "$1" =~ ^-?[0-9]+$ ]]
then
    echo "Viga! Sisend peab olema täisarv."
    exit 1
fi

# Kontrollin, kas arv on paaris või paaritu
jaak=$(( $1 % 2 ))

if [ "$jaak" -eq 0 ]
then
    echo "$1 on paaris"
else
    echo "$1 on paaritu"
fi

