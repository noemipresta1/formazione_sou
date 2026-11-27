# Report esercizi - Noemi
## In questa cartella ho raccolto l'esercizio 4 della track extra bash.

***Esercizio 4:** Utilizzare il comando find per trovare e cancellare i file più vecchi di 30 giorni (ad esempio in /var/log o simili). Schedulare tale comando in crontab di root ogni lunedi mattina alle 6:30. Sulle manpages trovate tutte le info di cui avete bisogno.*

* Vado a vedere quali sono i file da eliminare nella cartella /var/log vecchi più di 30 giorni con il comando find /var/log -type f -mtime +30.

`sudo find /var/log -type f -mtime +30 <br>

sudo find /var/log -type f -mtime +7 <br>

var/log/anaconda/anaconda.log <br>

var/log/anaconda/syslog <br>

var/log/anaconda/X.log <br>

var/log/anaconda/program.log <br>

var/log/anaconda/packaging.log <br>

var/log/anaconda/storage.log <br>

var/log/anaconda/lvm.log <br>

var/log/anaconda/dnf .librepo.log <br>

var/log/anaconda/hawkey.log <br>

var/log/anaconda/dbus.log <br>

var/log/anaconda/ks-script-353095on.log <br>

var/log/anaconda/ks-script-isgdalsr.log <br>

var/log/anaconda/ks-script-ldtu61dw.log <br>

var/log/anaconda/journal.log <br>

var/log/anaconda/lorax-packages.log <br>

var/log/btmp-20261103 <br>

var/log/hawkey.log-20261103 <br>

var/log/maillog-20261103 <br>

var/log/spooler-20261103` <br>

* Apro Vi e scrivo al suo interno uno script di pulizia.

`#!/bin/bash <br>

#Trova ed elimina i file più vecchi di 30 giorni nella cartella indicata <br>

find /var/log -type f -mtime +30 -delete <br>`

* Lo rendo eseguibile modificando i permessi con sudo chmod +x log.sh.

* Vado a istruire il pianificatore di sistema per far partire lo script ogni lunedì mattina alle 06.30h reindirizzando l'esito in un file di log.

`30 6 * * 1 /home/noemi/log.sh > /var/log/pulizia_script.log` <br>

* Per verificare se la pianificazione è andata a buon fine uso "crontab -l".

`sudo crontab -l
30 6 * * 1 /home/noemi/log.sh > /var/log/pulizia_script.log`

