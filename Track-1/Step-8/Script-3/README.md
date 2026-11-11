## Questo script mostra come gestire le variabili posizionali da riga di comando. ##

*L'indicazione è di eseguire lo script con almeno 10 caratteri.*

***MINPARAMS=10:*** Viene creata una variabile chiamata MINPARAMS e le viene assegnato il valore 10.

* ***echo:*** Viene stampata una riga vuota.
  
Dopodiché viene chiesto di stampare a schermo:
* ***$0:*** Una variabile contenente il nome con cui è stato invocato lo script (incluso il percorso).
 
e poi di stampare:
* ***basename $0:*** Il comando basename rimuove il percorso dalle cartelle e restituisce solo il nome del file.
