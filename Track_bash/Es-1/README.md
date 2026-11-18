# Report esercizi - Noemi
## In questa cartella ho raccolto l'esercizio n.1 della track extra bash.

***Esercizio 1:** Illustrare almeno 2 casi in cui il comando touch può generare errori.*

* Nel primo caso ho provato a creare un nuovo file vuoto attraverso il comando `touch cartellaprova/fileprova.txt`, chiedendo di inserirlo in una cartella (che ancora non esiste). In questo caso l'errore generato è "No such file or directory" perchè la cartella non è stata trovata.

* Nel secondo caso ho modificato i permessi relativi al file "ciaao" rimuovendo quello di scrittura `chmod -w ciaao`. Come possiamo vedere con `ls -l ciaao` i permessi sono stati modificati ma visto che l'utente che ha creato il file sono io mi permette di utilizzare touch come modifica di timestamp, (se fosse stato creato da un altro utente avrebbe generato errore di permesso negato).

* Dunque ora non ho più il permesso di scrittura, cosi nel terzo caso ho provato a dare il comando `echo "ciao" > ciaao` (andando a sostituire il contenuto del testo all'interno del file). L'errore generato è "permission denied".

<img width="782" height="217" alt="Screenshot 2026-11-03 alle 12 16 21" src="https://github.com/user-attachments/assets/dc54587b-8d2d-4ed6-90c6-6366d881b579" />
