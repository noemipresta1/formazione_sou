## Questo script va a svuotare i file di log per liberare spazio sul disco ##

Lo script inizia con un commento che ci ricorda di usare la modalità root. 

* *cd /var/log:* Attraverso il comando "cd" sposta la cartella di lavoro nella directory /var/log, dove sono salvati i registri (log).
* *cat /dev/null > messages:* "Cat" svuota il file messages utilizzando il file /dev/null e sovrascrivendo il contenuto di messages.
* *cat /dev/null > wtmp:* Fa la stessa cosa con il file wtmp.
* *echo "Log files cleaned up.":* Con il comando "echo" stampa a schermo un messaggio a conferma di operazione riuscita. 
