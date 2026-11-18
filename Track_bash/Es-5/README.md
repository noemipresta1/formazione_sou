# Report esercizi - Noemi

## In questa cartella ho raccolto l'esercizio 5 della track extra bash.

***Esercizio 5:*** Scrivere uno script che accetti un argomento numerico e stampi la sequenze di numeri da 1 a quel numero con l'indicazione se è pari o dispari. Controllare il corretto numero di argomenti passati allo script e che l'argomento sia di tipo numerico, in caso contrario generare una condizione di errore.

## Lo script attraversa tre fasi: 

* *controllo sulla quantità di argomenti*
```
if [ "$#" -ne 1 ]; then
    echo "Attenzione al numero di argomenti inseriti." >&2
    exit 1
fi
```

* *verifica che l'input corrisponda ad un numero intero positivo*
```
numero=$1

if ! [[ "$numero"=~[1-9][0-9]* ]]; then
    echo "Attenzione,'$numero' non è un numero intero positivo." >&2
    exit 1
fi

```
* *esegue un ciclo che conta da 1 al numero inserito e li stampa indicando se sono pari o dispari*
```
for (( i=1; i<=N; i++ )); do
    if (( i % 2 == 0 )); then
        echo "$i: Pari"
    else
        echo "$i: Dispari"
    fi
done

exit 0
```

