#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Attenzione al numero di argomenti inseriti." >&2
    exit 1
fi

numero=$1

if ! [[ "$numero" =~ ^[1-9][0-9]*$ ]]; then
    echo "Attenzione,'$numero' non è un numero intero positivo." >&2
    exit 1
fi

for (( i=1; i<=N; i++ )); do
    if (( i % 2 == 0 )); then
        echo "$i: Pari"
    else
        echo "$i: Dispari"
    fi
done

exit 0
