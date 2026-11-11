# In questo script viene utilizzato un costrutto condizionale, l'if, per definire se l'utente nella sessione corrente è root.

* **ROOT_UID=0:** Definisce una variabile con valore 0 assegnata al ROOT. \
* **if [ "$UID" -eq "$ROOT_UID" ]:** -eq vuol dire uguale. Se l'UID dell'utente che esegue lo script è 0, allora è root. \
* **exit 0:** L'esecuzione dello script si interrompe quando restituisce 0.

## Un metodo alternativo 
Questo secondo metodo è basato sul nome invece che sull'ID numerico: \
* **username=id -nu (o whoami):** Salva nella variabile "username" il nome dell'utente corrente. \
* **if [ "$username" = "$ROOTUSER_NAME" ]:** Effettua un confronto tra le stringhe. Se il nome corrisponde a "root", si tratta di root.

* A questo punto, se le stringhe corrispondono, viene stampato a schermo *"Rooty, toot, toot. You are root."* Altrimenti, stampa *"You are just a regular fella."*
