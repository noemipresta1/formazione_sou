***Supponendo di avere un file .csv con alcuni dati (nome,cognome,numero):***

-Estrarre la colonna "cognome"; 

-Selezionare solo due cognomi e stamparne uno;

-La prima lettera deve diventare maiuscola;

-deve essere scritto tutto in pipe. <br>
<br>



* Come prima cosa creo il file .csv
  
```bash
vi datiper.csv
cat datiper.csv

nome,cognome,numero
mattia,minelli,331
vincenzo,abete,332
giulio romano,de mattia,333
viron,daiu,334
bernard,ramohitaj,335
noemi,presta,336
domenico,nasso,337
```

* Utilizzo **awk** e considero la virgola come separatore (-F ','), estraggo e stampo la colonna cognome (secondo campo, **($2)**) del file datiper.csv, direzionando l'output al comando successivo
  

```bash
awk -F ',' '{ print $2 }' datiper.csv

minelli
abete
de mattia
daiu
ramohitaj
presta
nasso
```

* Con **grep** prendo l'output ricevuto e filtro il risultato che voglio ottenere: attraverso **-E** abilito le regex e limito il nuovo output ad un cognome usando **-m 1** (max count). 

```bash
awk -F ',' '{ print $2 }' datiper.csv | grep -E -m 1 'minelli|daiu'

minelli
```

* Infine con **sed** chiedo di trasformare la prima lettera del cognome da minuscola a maiuscola:


  **\b.** prende la prima lettera del cognome;

  **\U&** trasforma in maiuscolo.

```bash
awk -F ',' '{ print $2 }' datiper.csv | grep -E -m 1 'minelli|daiu' | sed 's/\b./\U&/'
Minelli
```


**Dunque diventa:** ```awk -F ','  '{ print $2 }' datiper.csv | grep -E -m 1 'minelli|daiu' | sed 's/\b./\U&/'```




