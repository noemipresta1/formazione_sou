# Report esercizi - Noemi

## In questa cartella ho raccolto l'esercizio 6 della track extra bash.

***Esercizio n.7:*** Utilizzare il comando egrep per risolvere i seguenti esercizi (dando esempi di possibili input):

- Matchare sequenze alfabetiche di almeno un carattere, sia maiuscole che minuscole

```egrep '[a-zA-z]'+ file.txt```<br>

***[a-zA-Z]:*** indica qualsiasi lettera dalla a alla z (minuscole/maiuscole). <br>
***+***: sta per almeno una volta.

- Togliere tutte le righe di commento di uno script Bash matchando le righe che iniziano con '#'

```grep -v '^#' script.sh``` <br>

***-v***: (invert match) dice a grep di non mostrare le righe contenenti un commento. <br>
***^***: indica l'inizio della riga. <br>
***#***: indica il commento. <br>

- Matchare in un file le righe che contengono sequenze di 'a' ripetute da 3 a 6 volte
  
``` ```

- Matchare in un file tutte le righe che contengono una delle seguenti parole: apple, pear, orange
<br>

```egrep '\b(apple|pear|orange)\b' frutta.txt``` <br>

***'...'***: Gli apici hanno la funzione di contenitore. <br>
***\b***: Cerca solo la parola intera richiesta. <br>
***(apple|pear|orange)***: Cerca una di queste parole parole. <br>
***frutta.txt***: Indica il file in cui cercare.


