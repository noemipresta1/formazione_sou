# Report esercizi - Noemi

## In questa cartella ho raccolto l'esercizio 6 della track extra bash.

***Esercizio 6:*** Scrivere un programma AWK che prende in input un file .csv e stampa il terzo campo solo se viene matchata la stringa "banana".
<br>

 ***File di input di esempio:***
        <br>
        apple,banana,strawberry
        <br>
        pear,peach,lemon
        <br>
        banana,kiwi,orange
        <br>
 ***Output desiderato:***
        <br>
        strawberry
        <br>
        orange

* Creo il file frutta.csv 
 
  <img width="372" height="83" alt="Screenshot 2026-11-18 alle 15 24 26" src="https://github.com/user-attachments/assets/486b5d74-2880-48a4-a0c6-b3a76071992f" />


* Utilizzo il comando ```awk -F ',' '/banana/ { print $3 }' frutta.csv```

<br>

* ```-F ','``` imposta la virgola come separatore per leggere nel modo giusto il file .csv.
<br>

* ```/banana/``` cerca la stringa "banana" nella riga.
<br>

* ```{ print $3 }``` stampa il terzo campo ($3) della riga.

<img width="502" height="93" alt="Screenshot 2026-11-18 alle 16 05 35" src="https://github.com/user-attachments/assets/d2427511-4d33-4854-a487-d4d1f8f9ae08" />
