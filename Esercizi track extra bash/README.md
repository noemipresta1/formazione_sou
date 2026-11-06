# Report esercizi - Noemi
## In questo repo ho raccolto alcuni esercizi della track extra Bash (n.1-4).
***Esercizio 1:** Illustrare almeno 2 casi in cui il comando touch può generare errori.*

-Nel primo caso ho provato a creare un nuovo file vuoto attraverso il comando touch (fileprova.txt),chiedendo che venisse inserito in una cartella (che però non esiste ancora "cartellaprova"). In questo caso l'errore generato è "No such file or directory" perchè la cartella non è stata trovata.

-Ho provato a modificare i permessi relativi al file "ciaao" rimuovendo quello di scrittura (chmod -w). Come possiamo vedere con ls -l i permessi sono stati modificati ma visto che l'utente che ha creato il file sono io mi permette comunque di utilizzare touch come modifica di timestamp, se fosse stato creato da un altro utente avrebbe generato errore di permesso negato.

-Ho provato a inserire "ciao" nel file ciaao (andando a sostituire il contenuto del testo all'interno del file). L'errore generato è "permission denied".

***Esercizio 2:** Contare il numero totale di processi attualmente in esecuzione sulla propria macchina senza utilizzare utility interattive come "top".*

Possiamo utilizzare il comando "ps -e" per visualizzare tutti i processi in esecuzione su questa macchina, poi inserendo una pipe possiamo reindirizzare l'output di questo primo comando ad un altro che conta quanti sono i processi: "ps -e | wc -l".

***Esercizio 3:**. Trovare il modo (o più modi) per capire se il Kernel attualmente running è il più recente installato sulla macchina. Scrivere uno script che esegua automaticamente il controllo e risponda TRUE/FALSE.*

-In un file di testo Vi ho inserito un piccolo script che assegna alla variabile "running" la versione del kernel attualmente in esecuzione, tagliandola (a partire dal delimitatore "-") e tenendo soltanto il primo blocco dell'output.

-Alla variabile "nextboot" assegno il risultato che si ottiene interrogando il gestore dei pacchetti rpm su tutti i pacchetti riguardanti il kernel, prendendo la seconda parte del nome dei pacchetti (perchè iniziano con kernel-), si ordinano versionalmente e si prende l'ultima riga.

-Con l'istruzione "if" confronto le due stringhe e se risultano uguali, chiedo di stampare a schermo "VERO", altrimenti "FALSO".

***Esercizio 4:** Utilizzare il comando find per trovare e cancellare i file più vecchi di 30 giorni (ad esempio in /var/log o simili). Schedulare tale comando in crontab di root ogni lunedi mattina alle 6:30.*

-Vado a vedere quali sono i file da eliminare nella cartella /var/log vecchi più di 30 giorni con il comando find /var/log -type f -mtime +30.

-Apro Vi e scrivo all'interno uno script di pulizia: Lo rendo eseguibile modificando i permessi con sudo chmod +x log.sh

-Vado a istruire il pianificatore di sistema per far partire lo script ogni lunedì mattina alle 06.30h reindirizzando l'esito in un file di log.

-Per verificare se la pianificazione è andata a buon fine uso "crontab -l".
