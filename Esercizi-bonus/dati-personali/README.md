***Supponendo di avere un file .csv con alcuni dati (nome,cognome,numero):***

-Estrarre la colonna "cognome"; 

-Selezionare solo due cognomi e stamparne uno;

-La prima lettera deve diventare maiuscola;

-deve essere scritto tutto in pipe. <br>
<br>



* Come prima cosa creo il file .csv
  
<img width="479" height="142" alt="Screenshot 2026-11-19 alle 15 26 38" src="https://github.com/user-attachments/assets/ce626aa3-2651-4146-9d29-bb7e14510e28" />

* Utilizzo **awk** e considero la virgola come separatore (-F ','), estraggo e stampo la colonna cognome (secondo campo, **($2)**) del file datiper.csv, direzionando l'output al comando successivo
  
```awk -F ','  '{ print $2 }' datiper.csv |``` 

<img width="479" height="142" alt="Screenshot 2026-11-19 alle 15 25 36" src="https://github.com/user-attachments/assets/38d95315-7ff2-49f6-be24-b90aa45b769e" />

* Con **grep** prendo l'output ricevuto e filtro il risultato che voglio ottenere: attraverso **-E** abilito le regex e limito il nuovo output ad un cognome usando **-m 1** (max count). 

```| grep -E -m 1 'minelli|daiu' |```

<img width="628" height="48" alt="Screenshot 2026-11-19 alle 15 17 25" src="https://github.com/user-attachments/assets/ef293b1a-3f7f-4555-aea4-c1c26598cc43" />

* Infine con **sed** chiedo di trasformare la prima lettera del cognome da minuscola a maiuscola:

```| sed 's/\b./\U&/'```

  **\b.** prende la prima lettera del cognome;

  **\U&** trasforma in maiuscolo.

<img width="767" height="48" alt="Screenshot 2026-11-19 alle 15 19 04" src="https://github.com/user-attachments/assets/b68a0482-f073-4a67-9552-9cd636bc0303" /> <br>


**Dunque diventa:** ```awk -F ','  '{ print $2 }' datiper.csv | grep -E -m 1 'minelli|daiu' | sed 's/\b./\U&/'```




