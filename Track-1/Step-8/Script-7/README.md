## Questo script mostra l'implementazione di una progress bar. 

## Questo script mostra l'implementazione di una progress bar. 

* ***interval=1:*** Fissa l'intervallo di attesa tra stampa di un puntino e l'altro a 1 secondo.
* ***long_interval=10:*** Fissa la durata del "processo lungo" a 10 secondi".

* ***&*** alla fine del blocco avvia il contenuto tra le parentesi graffe (come nel commento: un processo in background).
* ***trap "exit" SIGUSR1:*** Comunica al processo in background di terminare quando il processo principale trasmette il segnale SIGUSR1. 
* ***sleep $interval; sleep $interval:*** Aspetta 2 secondi prima di iniziare a stampare puntini.
* ***while true ...:*** Entra in un ciclo infinito che stampa un puntino ogni secondo, come da intervallo, rimanendo sulla stessa riga (echo -n '.').


* ***sleep $long_interval:*** mette in pausa l'esecuzione dello script per la durata memorizzata.
* ***pid=$!:*** La variabile ***$!*** prende il PID del processo in background così lo script conosce quale processo terminare.
* ***trap "echo !; kill -USR1 $pid; wait $pid" EXIT:*** Nel caso in cui dovesse presentarsi un problema per cui lo script si interrompe all'improvviso, stampa un ***!*** e invia un segnale di interruzione al processo in background.

* ***kill -USR1 $pid e wait $pid:*** A lavoro terminato, lo script manda il segnale USR1 al processo secondario per terminarlo.
* ***trap EXIT:*** Disattiva il comando precedentemente impostato.
