## Questo script mostra l'implementazione di una progress bar. 

## Questo script mostra l'implementazione di una progress bar. 

* ***interval=1:*** Fissa l'intervallo di attesa tra stampa di un puntino e l'altro a 1 secondo.
* ***long_interval=10:*** Fissa la durata del "processo lungo" a 10 secondi".
<br>


* ***&*** alla fine del blocco avvia il contenuto tra le parentesi graffe (come nel commento: un processo in background).
* ***trap "exit" SIGUSR1:*** Comunica al processo in background di terminare quando il processo principale trasmette il segnale SIGUSR1. 
* ***sleep $interval; sleep $interval:*** Aspetta 2 secondi prima di iniziare a stampare puntini (così, se l'operazione dura meno di 2 secondi, non sporca lo schermo).
* ***while true ...:*** Entra in un ciclo infinito che stampa un puntino ogni secondo, come da intervallo, e rimanendo sulla stessa riga (echo -n '.').
<br>


* ***pid=$!:*** La variabile ***$!*** prende il PID del processo in background così lo script conosce quale processo terminare.
