# AV subs (IT)


## Setup

Per poter contribuire alla traduzione occorre innanzitutto:

1. creare (gratuitamente) un account [GitHub](www.github.com) ("Sign
   Up" e seguire la procedura sino a verificare la mail);
2. leggere attentamente il [vademecum](vademecum.md); per eventuali
   dubbi chiedere nella chat Telegram;
3. Nella chat telegram dare il "comando"

	```
	@lucailgarb sandbox
	```
	per richiedere la predisposizione di un file di prova per editing
	dei sottotitoli (prima di passare alle modifiche sui subs originali)
	Tradurlo e sottomettere la revisione, come illustrato sotto.
	

## Formato sottotitoli 

I sottotitoli sono in formato `.srt` ossia un file di testo (tipo
`.txt`) con una struttura precisa, da rispettare/non modificare.

Ad esempio, di seguito uno stralcio per i primi secondi del video che usiamo
ai cubi:

```
1
00:00:00,000 --> 00:00:01,200
PRODOTTI CASEARI

2
00:00:02,000 --> 00:00:24,000
INSEMINAZIONE FORZATA

3
00:00:33,000 --> 00:00:49,000
SEPARAZIONE DEI NEONATI

4
00:00:51,000 --> 00:01:04,000
QUESTA È UNA PRATICA STANDARD
```

Vi è dunque:
* un numero progressivo del sottotitolo
* i secondi di inizio e fine per la visualizzazione
* il testo (che può essere organizzato su più righe
* una linea bianca di separazione

## Come/cosa modificare
Per permettere la revisione delle traduzioni noi lavoreremo su un file
lievemente diverso che include sia l'originale che la traduzione, come segue. 

Questo è quello che troverete
```
3
00:00:33,000 --> 00:00:49,000
## NEWBORN SEPARATION

4
00:00:51,000 --> 00:01:04,000
## THIS IS STANDARD PRACTICE

```

Quello che dovrete fare è la cosa seguente: 
* lasciare tutto il resto immutato
* aggiungere la linea tradotta in italiano sotto a quella inglese
* lasciare sempre una linea di spazio

```
3
00:00:33,000 --> 00:00:49,000
## NEWBORN SEPARATION
SEPARAZIONE DEI NEONATI

4
00:00:51,000 --> 00:01:04,000
## THIS IS STANDARD PRACTICE
QUESTA È UNA PRATICA STANDARD

```




## Istruzioni per i traduttori

Quando si ha disponibilità per traduzione e si è "passata" la fase di sandbox

0. Effettuare il login su GitHub 

1. aprire la pagina https://github.com/lbraglia/av_it_subs dove sono
   conservate le traduzioni (aggiungerla ai preferiti è comodo);

2. nella chat telegram dare il "comando"

	```
	@lucailgarb translate
	```
	Per richiedere l'assegnazione di un file da tradurre.
	Verrà risposto un messaggio del tipo
	
	```
	hnva2/012005_luca_braglia
	```
	che sta a significare: ti è stato assegnato
	
	* il file
	`012005_luca_braglia` (ossia in pratica uno spezzone di sottotitoli
	che inizia approssimativamente a 01:20:05 nel video) ...
	* ... nella cartella `hnva2` 
	(da "Holding Non-Vegans Accountable 2.0")

3. cliccare dunque sulla cartella (`hnva2` nell'esempio) e poi sul 
   nome del file che ti è stato assegnato `012005_luca_braglia`);

4. cliccare sul pulsante matita (quello a destra dei bottoni `Raw` e `Blame`)
   per modificare il file;

5. fare le modifiche/tradurre. Se si vuole avere un sommario delle modifiche
   effettuate spostarsi nel tab `Preview changes`;

6. una volta terminata la modifica, scorrere in basso nella pagina,
   verso la sezione `Propose changes`: in `Update XX` dare un titolo
   alla modifica che si è fatta (es `Update Dairy`) e sotto aggiungere
   una eventuale descrizione/specifica (es `fixed typos`);

7. cliccare su `Propose Changes`, poi sul pulsante verde `Create Pull Request`
   e ancora `Create pull request`;

8. Fine!! Repeat da 2 per le prossime modifiche.

In seguito a revisione di minima (e non sull'inglese) le modifiche
saranno accettate ed integrate.  Modifiche che impattino su qualsiasi
cosa diversa dalla traduzione (es progressivo sottotitolo, secondi)
saranno verosimilmente rifiutate.


<!-- ## Considerazioni sul workflow -->

<!-- Come pro vedo: -->

<!-- - se vi è priorità/urgenza, si può lavorare tutti sullo stesso file -->
<!--   contemporaneamente (anche se è *meglio suddividersi il lavoro*, es -->
<!--   sulla base dei secondi del video, per evitare di duplicare lo sforzo -->
<!--   di traduzione), rendendo il tutto più veloce; -->

<!-- - mi pare tutto sommato abbastanza semplice (per problemi ditemi): in -->
<!--   particolare i traduttori possono limitarsi a fare "solamente" i -->
<!--   traduttori - senza doversi preoccupare di altri aspetti -->
<!--   (es informatici) - mentre altri che magari sono meno -->
<!--   "prima scelta" in traduzione (come il sottoscritto) si possono -->
<!--   focalizzare su questi ultimi; -->
  
<!-- - non serve software particolare, non problemi di formato file / -->
<!--   sistemi operativi differenti, no file "volanti" inviati per mail; -->

<!-- - immediato lo stato di avanzamento delle varie traduzioni, anche più -->
<!--   facile prioritarizzare. -->
