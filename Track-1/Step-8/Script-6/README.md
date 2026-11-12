# Questo script utilizza un array associativo e crea un mini database di indirizzi

* Viene dichiarato un array associativo (address), che comunica di considerare gli indici come stringhe e non numeri: * **declare -A address**

* Avviene l'inserimento delle coppie chiave-valore nell'array: es. **address[Charles]="414 W. 10th Ave., Baltimore, MD 21236"**

* Viene chiesto di stampare a schermo il valore assegnato nella riga precedente: "Charles's address is **${address[Charles]}."**

* Stampa riga vuota

* Stampa gli indici Charles John Wilma: **"${!address[*]}"**
 
* (il **!** è messo per restituire solo le chiavi e non il loro contenuto, **[*]** fa si che tutte le chiavi vengano stampate su unica riga separate da degli spazi).
