# Biblioteca digitale con Vagrant

Ho realizzato una mini biblioteca digitale automatizzata utilizzando *Vagrant* e *VirtualBox*.
La struttura del progetto è definita nel file di configurazione chiamato ***Vagrantfile***, che al lancio del comando *vagrant up* crea una macchina virtuale basata su Debian 12.

Per mettere in comunicazione il mio Mac con la VM ho seguito questi step: <br>
* Ho usato il ***port forwarding***, che mette in collegamento la porta 80 della VM con la porta 8080 del mio Mac, permettendomi di raggiungere il servizio dal browser digitando http://localhost:8080 (aggiungendo nel vagrantfile ,host_ip: "0.0.0.0" e quindi digitare `http://192.168.1.41:8080` per gli esterni);
* Ho creato una cartella condivisa (***synced_folder***), che sincronizza la cartella libri/ del mio Mac con la directory /var/www/html dentro la VM;
* Infine, ho optato per un provisioner di tipo shell che al primo avvio aggiorna l'elenco dei pacchetti software di Debian e installa automaticamente il web server Apache2.

## Struttura del progetto
- `Vagrantfile`: file di configurazione (sistema operativo, rete, cartelle condivise, risorse VM e provisioning).
- `libri/`: cartella creata in locale sincronizzata con la Directory web di Apache nella VM.

## Caratteristiche tecniche
- **Sistema Operativo:** Debian 12 (`debian/bookworm64`)
- **Provider:** `VirtualBox`
- **Rete:** Port forwarding dalla porta `80` (guest) alla porta `8080` (host)
- **Storage:** Cartella condivisa (`synced_folder`) tra `./libri` e `/var/www/html`
- **Provisioning:** Script `shell` inline per l'aggiornamento dei pacchetti e l'installazione automatica di **Apache2**

## Come avviare il progetto
1. Spostarsi nella cartella del progetto (progetto-vagrant)
2. Avviare e configurare la macchina virtuale dal terminale:
   vagrant up
   vagrant ssh
3. Aprire il browser e visitare:
   http://localhost:8080 <br>
SHELL
   
end


