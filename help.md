# Come affrontare la traduzione al meglio


Risorse | Link
--------|:----:
Obbligatorie | [[Linee guida]](https://drive.google.com/file/d/1IACZxWdk84rs81ElQ9OWws-aroQZDtxZ/view?usp=sharing)
Consigliate | [[Telegram Web]](https://web.telegram.org), [[Telegram Desktop]](https://desktop.telegram.org/)


## Il file su cui lavoriamo per la traduzione

Il file su cui dobbiamo operare è stato generato (tipicamente) dal
software di speech to text di Google/YT, a partire dal video originale.

Per quanto riguarda il riconoscimento delle parole (soprattutto in
inglese e quando l'audio è chiaro) oramai questi software fanno
abbastanza "paura"; quello che ancora fanno fatica a capire sono i
toni (es quindi fanno fatica a capire le domande, la punteggiatura
ecc). 

Ma qui entrate in gioco voi e l'imprescindibilità, quando si andrà a
tradurre e preparare i subs, di *ascoltare/guardare* il video.

## Il workflow da adottare

Nell'attività di traduzione **il modo peggiore di procedere**, **da
non adottare**, consiste nel partire a testa bassa con la modifica
dei subs su GitHub, procedendo un sub alla volta, e non ascoltando il
video.

**Quello che viceversa si consiglia caldamente di fare è:**

* puntare il proprio browser all'url riportato a inizio file; questo è
  il link all'inizio dello spezzone di propria competenza:

  ![url inizio file](img/url_inizio_file.png)

* può essere davvero molto utile **stampare** (su carta riciclata) i
  sottotitoli, per poter avere un supporto utile per
  appunti/annotazioni ecc;
  
* **riascoltare più volte** l'audio, **scorrendo visivamente i sottotitoli**
  in contemporanea. Si consiglia di ascoltare anche un pezzo di video
  precedente e uno susseguente, per contesto;

* iniziare ad **abbozzare** punteggiatura, traduzione, e ad evidenziare
  *dubbi*;

* non esitare a **domandare/condividere eventuali dubbi** nella chat "AV:
  Traduttori e Revisori".  Alcuni suggerimenti su come farlo sono forniti
  nel seguito;

* una volta che abbiamo una idea compiuta della traduzione da
  effettuare *nella sua interezza* e abbiamo risolto eventuali dubbi,
  possiamo **procedere alla modifica** dei file;

* durante la modifica è possibile **lasciare una nota per i revisori**
  ponendola dopo *1 cancelletto*, come *ultima linea* e assicurandosi che dopo
  vi sia sempre una *linea vuota* di separazione. Ad esempio:

	```
	3
	00:00:33,000 --> 00:00:49,000
	## Linea 1 in inglese
	## Linea 2 in inglese
	Testo tradotto
	testo tradotto
	# REVISORI: qui nel dubbio si è optato per XYZ perché ...

	4
	...
	```


## Ottenere aiuto
In caso di dubbi/difficoltà:

* per **aspetti linguistici** non esitare a chiedere un parere/aiuto al gruppo
  "AV: Traduttori e Revisori";
* per **aspetti informatici** contattami direttamente.

Nel prosieguo ci concentriamo sulla richiesta aiuto per *aspetti
linguistici*. 

La cosa migliore che tu possa fare (per aumentare la facilità di
risposta) è un post dettagliato in "AV: Traduttori e Revisori"che
contenga:

* info sul punto di interesse (in YT ed eventualmente in GitHub);
* info sul dubbio/difficoltà.

Ad esempio (link fittizi):

```
Care/i, ho un dubbio su come tradurre verso questo punto:

https://youtu.be/cJ9kGZMbyVw?t=3455

In particolar modo sono indeciso su ...

Grazie as usual
``` 

Per costruire un post del genere:

* serve ottenere i link ad un determinato punto in YouTube: questo
  verrà spiegato *in seguito*;
 
* può essere molto comodo scrivere tale post da PC mediante [Telegram
  Web](https://web.telegram.org) (e se ti trovi bene ti consiglio di
  provare [Telegram Desktop](https://desktop.telegram.org/)).


### Ottenere il link al *video* in un dato punto

Come detto, a inizio del file da tradurre vi è un url che ti porta in
prossimità dell'inizio dei tuoi sottotitoli. Dobbiamo ottenere
qualcosa del genere per il punto del dubbio. 

Per farlo posizionati in tale punto sul video (in quello con i
sottotitoli, non nell'originale), dopodiché clicca su "Condividi":

![yt_link1](img/yt_link1.png)

In seguito clicca su "Inizia da" (per fare iniziare il video dal punto
selezionato) e poi su "Copia" per ottenere il link:

![yt_link2](img/yt_link2.png)

Dopodiché potrai incollare l'url nel post di richiesta d'aiuto.


<!-- ### Ottenere il link ai *subs* in un dato punto -->

<!-- Occorre visualizzare il file assegnato su GitHub (la schermata con la -->
<!-- matita ... *non* clicchiamo la matita perché non vogliamo effettuare -->
<!-- modifiche ora) e posizionarsi nei pressi del sottotitolo in questione (es -->
<!-- sottotitolo 23); clicchiamo sul numero della riga di interesse -->
<!-- (nell'esempio clicchiamo sul numero 35): -->

<!-- ![gh_link1](img/gh_link1.png) -->

<!-- Ci compaiono tre puntini e la linea viene evidenziata. Clicchiamo -->
<!-- dunque sui tre puntini: -->

<!-- ![gh_link2](img/gh_link2.png) -->

<!-- Dopodiché su copy permalink: -->

<!-- ![gh_link3](img/gh_link3.png) -->

<!-- Analogamente, nel seguito, si potrà incollare l'url nel post di -->
<!-- richiesta d'aiuto. -->
