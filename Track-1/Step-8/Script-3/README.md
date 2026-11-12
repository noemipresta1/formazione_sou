## Questo script mostra come gestire le variabili posizionali da riga di comando. ##

*L'indicazione è di eseguire lo script con almeno 10 caratteri.*

***MINPARAMS=10:*** Viene creata una variabile chiamata MINPARAMS e le viene assegnato il valore 10.

* ***echo:*** Viene stampata una riga vuota.
  
Dopodiché viene chiesto di stampare a schermo:
* ***$0:*** Una variabile contenente il nome con cui è stato invocato lo script (incluso il percorso).
 
e poi di stampare:
* ***basename $0:*** Il comando basename rimuove il percorso dalle cartelle e restituisce solo il nome del file.
* echo: stampa un'altra riga vuota.

* Parte un costrutto condizionale: se la variabile esiste e non è vuota (-n), allora stampa a schermo "parameter #1 is $1". 
Questo si ripete fino al parametro #9

* Il parametro 10 ha bisogno di utilizzare le parentesi graffe perché se scrivessi $10, la shell lo leggerebbe come $1 seguito da 0.

* Stampa una riga separatoria (----------------)
* Stampa "All the command-line parameters are: "$\*\"" (***$\*\:*** È una variabile che contiene in una stringa tutti i parametri passati allo script).

* ***$#:*** È una variabile che indica il numero di parametri passati allo script.

* ***[ $# -lt "$MINPARAMS" ]:*** Confronta due numeri. L'operatore -lt significa less than (minore di). Se il numero di parametri inseriti ($#) è inferiore a 10 ($MINPARAMS), stampa un messaggio di avviso.
* ***exit 0:*** Termina l'esecuzione dello script restituendo 0, ovvero non ci sono errori.
