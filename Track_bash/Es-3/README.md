# Report esercizi - Noemi
## In questa cartella ho raccolto l'esercizio n.3 della track extra bash.

***Esercizio 3:**. Trovare il modo (o più modi) per capire se il Kernel attualmente running è il più recente installato sulla macchina. Scrivere uno script che esegua automaticamente il controllo e risponda TRUE/FALSE.*

-In un file di testo Vi ho inserito un piccolo script che assegna alla variabile "running" la versione del kernel attualmente in esecuzione, tagliandola (a partire dal delimitatore "-") e tenendo soltanto il primo blocco dell'output.

-Alla variabile "nextboot" assegno il risultato che si ottiene interrogando il gestore dei pacchetti rpm su tutti i pacchetti riguardanti il kernel, prendendo la seconda parte del nome dei pacchetti (perchè iniziano con kernel-), si ordinano versionalmente e si prende l'ultima riga.

-Con l'istruzione "if" confronto le due stringhe e se risultano uguali, chiedo di stampare a schermo "VERO", altrimenti "FALSO".
