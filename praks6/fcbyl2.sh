#!/bin/bash

while true
do
    read -r -p "Sisesta number (0 lõpetab): " number

    if (( number == 0 ))
    then
        break
    fi

    if (( number < 0 ))
    then
        echo "Negatiivne number jäetakse vahele."
        continue
    fi

    echo "Sisestasid: $number"
done

echo "Skript lõpetas töö."#!/bin/bash


