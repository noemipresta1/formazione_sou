# Report esercizi - Noemi
## In questa cartella ho raccolto l'esercizio n.2 della track extra bash.

***Esercizio 1:** Illustrare almeno 2 casi in cui il comando touch può generare errori.*

-Nel primo caso ho provato a creare un nuovo file vuoto attraverso il comando touch (fileprova.txt),chiedendo che venisse inserito in una cartella (che però non esiste ancora "cartellaprova"). In questo caso l'errore generato è "No such file or directory" perchè la cartella non è stata trovata.

-Ho provato a modificare i permessi relativi al file "ciaao" rimuovendo quello di scrittura (chmod -w). Come possiamo vedere con ls -l i permessi sono stati modificati ma visto che l'utente che ha creato il file sono io mi permette comunque di utilizzare touch come modifica di timestamp, se fosse stato creato da un altro utente avrebbe generato errore di permesso negato.

-Ho provato a inserire "ciao" nel file ciaao (andando a sostituire il contenuto del testo all'interno del file). L'errore generato è "permission denied".
