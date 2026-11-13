# Report esercizi - Noemi
## In questa cartella ho raccolto l'esercizio 4 della track extra bash.

***Esercizio 4:** Utilizzare il comando find per trovare e cancellare i file più vecchi di 30 giorni (ad esempio in /var/log o simili). Schedulare tale comando in crontab di root ogni lunedi mattina alle 6:30. Sulle manpages trovate tutte le info di cui avete bisogno.*

* Vado a vedere quali sono i file da eliminare nella cartella /var/log vecchi più di 30 giorni con il comando find /var/log -type f -mtime +30.
<img width="418" height="312" alt="log+7gg" src="https://github.com/user-attachments/assets/cecf7db5-54ec-459a-b4ff-4ef0ffb5dddb" />

* Apro Vi e scrivo al suo interno uno script di pulizia.
<img width="511" height="87" alt="script" src="https://github.com/user-attachments/assets/a4568c41-6061-4cfe-b9af-0c6d0bd0c648" />

* Lo rendo eseguibile modificando i permessi con sudo chmod +x log.sh.

* Vado a istruire il pianificatore di sistema per far partire lo script ogni lunedì mattina alle 06.30h reindirizzando l'esito in un file di log.
<img width="424" height="52" alt="Pianificazione crontab" src="https://github.com/user-attachments/assets/d62ce3ee-9c09-42fa-af31-27db872e423f" />

* Per verificare se la pianificazione è andata a buon fine uso "crontab -l".
<img width="424" height="52" alt="Crontab -l" src="https://github.com/user-attachments/assets/c4c97672-5e6c-4f3d-b793-dcde1b8f745a" />

