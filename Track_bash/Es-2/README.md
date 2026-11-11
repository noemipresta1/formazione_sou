# Report esercizi - Noemi
## In questa cartella ho raccolto l'esercizio n.2 della track extra bash.

***Esercizio 2:** Contare il numero totale di processi attualmente in esecuzione sulla propria macchina senza utilizzare utility interattive come "top".*

Possiamo utilizzare il comando "ps -e" per visualizzare tutti i processi in esecuzione su questa macchina, poi inserendo una pipe possiamo reindirizzare l'output di questo primo comando ad un altro che conta quanti sono i processi: "ps -e | wc -l".

