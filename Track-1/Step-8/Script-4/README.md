# Questo script mostra come assegnare un valore ad una variabile in tre modi

Lo script inizia con un commento ricordando cos'è una variabile nuda, ovvero una variabile non richiamata, solo assegnata.

# Primo esempio di assegnazione
* Si passa all'assegnazione del valore 879 alla variabile ***a***.
* Stampa "The value of \"a\" is $a."
* Si assegna il valore (16+5) alla variabile ***a*** attraverso il comando let, quindi stampa a schermo "The value of \"a\" is now $a."
* Stampa riga vuota

# Secondo esempio di assegnazione
* Inizia un ciclo ***for*** che assegna in automatico un valore nuovo alla variabile ***a*** in ripetizione.
* Stampa -n "Values of \"a\" in the loop are:"
* L'opzione *-n* occorre per stampare tutti i valori sulla stessa riga. 
* *do* segna l'inizio delle istruzioni da ripetere ad ogni giro del ciclo (assegnando ad *a* i valori 7, 8, 9 e 11).
* Stampa -n "$a ", ovvero il valore attuale contenuto nella variabile ***a*** 
* *done* segna la fine del ciclo.

* Stampa due righe vuote

# Terzo esempio di assegnazione
* Stampa su schermo -n "Enter \"a\" "
* read *a*: read rimane in attesa che venga scritto qualcosa, in modo da salvare il tutto dentro la variabile *a*.
* Stampa "The value of \"a\" is now $a."

* Stampa una riga vuota.
* exit 0: termina l'esecuzione dello script.
