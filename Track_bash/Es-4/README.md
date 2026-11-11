# Report esercizi - Noemi
## In questa cartella ho raccolto l'esercizio 4 della track extra bash.

***Esercizio 4:*** Utilizzare il comando find per trovare e cancellare i file più vecchi di 30 giorni (ad esempio in /var/log o simili). Schedulare tale comando in crontab di root ogni lunedi mattina alle 6:30. Sulle manpages trovate tutte le info di cui avete bisogno.

* Vado a vedere quali sono i file da eliminare nella cartella /var/log vecchi più di 30 giorni con il comando find /var/log -type f -mtime +30.
* Apro Vi e scrivo al suo interno uno script di pulizia.
* Lo rendo eseguibile modificando i permessi con sudo chmod +x log.sh.
* Vado a istruire il pianificatore di sistema per far partire lo script ogni lunedì mattina alle 06.30h reindirizzando l'esito in un file di log.
* Per verificare se la pianificazione è andata a buon fine uso "crontab -l".
