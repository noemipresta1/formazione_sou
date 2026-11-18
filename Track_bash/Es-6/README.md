# Report esercizi - Noemi

## In questa cartella ho raccolto l'esercizio 6 della track extra bash.

***Esercizio 6:*** Scrivere un programma AWK che prende in input un file .csv e stampa il terzo campo solo se viene matchata la stringa "banana".
<br>

* File di input di esempio:
        <br>
        apple,banana,strawberry
        <br>
        pear,peach,lemon
        <br>
        banana,kiwi,orange
        <br>
* Output desiderato:
        <br>
        strawberry
        <br>
        orange

* Utilizzo il comando ```awk -F ',' '/banana/ { print $3 }' frutta.csv```
<br>

* ```-F ','``` imposta la virgola come separatore per leggere nel modo giusto il file .csv.
<br>

* ```/banana/``` cerca la stringa "banana" nella riga.
<br>

* ```{ print $3 }``` stampa il terzo campo ($3) della riga.
