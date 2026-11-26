# Report esercizi - Noemi

## In questa cartella ho raccolto l'esercizio 8 della track extra bash.

***Esercizio n.8:*** Scrivere una o piu' espressioni regolari (in OR) che matchino tutti i possibili indirizzi ipv4 in decimal dotted notation:

* **Prima espressione regolare:**

 ```^(([1-9]?[0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([1-9]?[0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$```

`[1-9]?[0-9]` ---> copre 0-99 #senza zeri iniziali <br>

`1[0-9][0-9]` ---> copre 100-199 <br>

`2[0-4][0-9]` ---> copre 200-249 <br>

`25[0-5]`     ---> copre 250-255

`\.` indica proprio il carattere punto pechè abbiamo aggiunto accanto il backslash. <br>

`{3}` diciamo di ripetere quel blocco 3 volte di seguito (i primi tre ottetti sono separati dal punto, il quarto non ha il punto finale)

* **Seconda espressione regolare:**

```grep -E '\b(([1-9]?[0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([1-9]?[0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\b'```

* `grep` cerca righe corrispondenti a un pattern di testo. <br>

*  `-E` attiva le Extended Regular Expressions. <br>

* `'...'` gli apici singoli proteggono l'espressione regolare, impedendo alla shell Bash di interpretare i simboli speciali prima di passarli a grep.

* `\b` segna il confine di una parola o di un numero.
