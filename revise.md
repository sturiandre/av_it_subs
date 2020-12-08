# Istruzioni per revisori


Risorse | Link 
--------|:----:
Obbligatorie | [[Linee guida]](https://drive.google.com/file/d/1IACZxWdk84rs81ElQ9OWws-aroQZDtxZ/view?usp=sharing), [[Aegisub]](http://www.aegisub.org/)
Consigliate | [[Telegram Web]](https://web.telegram.org), [[Telegram Desktop]](https://desktop.telegram.org/)


## Il file su cui lavoriamo per la revisione

Il file su cui dobbiamo operare attraverso Aegisub:

* è stato creato durante il processo di traduzione ed è il collage di
  più file sequenziali prodotti da traduttori diversi (tipicamente);

* include solamente la traduzione in italiano, dato che per l'inglese
  è disponibile l'audio originale (attraverso il caricamento del
  video);
  
* presenta eventuali commenti lasciati ai revisori come ultima linea
  di sottotitolo, preceduta da `# REVISORI: ...`. Ad esempio
  in presenza di un commento a video verrà visualizzato:
  
  ```
                    Testo tradotto
                   Testo tradotto 2
  # REVISORI: qui nel dubbio si è optato per XYZ perché ...
  ```
  Ovviamente, una volta risolto il punto, il commento per i revisori 
  andrà cancellato. Incidentalmente la presenza di commenti tenderà ad 
  essere segnalata da metriche di caratteri, per ovvi motivi;

* in corrispondenza dei sub di inizio file per un traduttore è stato
  posto il commento `# REVISORI: primo sub di spezzone`, per segnalare
  l'esigenza di continuità tra quello che precede e quello che segue
  (prodotto da revisori differenti/indipendentemente).


## Setup

Per poter effettuare revisioni per un dato video, dopo aver letto le
[linee
guida](https://drive.google.com/file/d/1IACZxWdk84rs81ElQ9OWws-aroQZDtxZ/view?usp=sharing)
occorre:

1. installare [Aegisub](http://www.aegisub.org/), il programma con cui
   verrà controllato il proprio spezzone. Per quanto riguarda Windows
   è possibile eventualmente optare per la versione portabile (che non
   richiede installazione e quindi i permessi di amministratore sulla
   macchina);

2. scaricare (la prima volta) il video senza sottotitoli: il link si
   trova nella [pagina principale](README.md), ad esempio (per hnva2)
   qui:

	![video-original-download](img/video_original_download.png)

3. periodicamente (quando disponibili) nel gruppo Telegram "AV:
   Traduzioni e Sub YouTube" verrà comunicata la disponibilità di file
   per la revisione. Si può richiedere una assegnazione mediante:
   
	```
	@lucailgarb #revise
	```
	
	Verrà risposto (quanto prima) un messaggio con la posizione del
	file, del tipo:

	```
	subs/hnva2/revs_000000_002500_lbraglia.srt
	```
	che sta a significare: ti è stato assegnato

	* il file `revs_000000_002500_lbraglia.srt` (uno
	spezzone di sottotitoli che include da quelli aventi inizio a
	`00:00:00` a quelli aventi inizio a `00:25:00`)
	* che si trova nella cartella `hnva2` (che contiene i sottotitoli
	per "Holding Non-Vegans Accountable 2.0")
	* posta nella cartella `subs` (che racchiude tutti i
	sottotitoli di tutti i video).

4. cliccare quindi sulla cartella `subs`

   ![subs dir](img/subs_dir.png)

5. cliccare sulla cartella del video (`hnva2` nell'esempio)

	![hnva2 dir](img/hnva2_dir.png)

6. arrivati a questo punto conviene **salvare questa pagina nei
   preferiti** (per accedervi facilmente alle prossime sessioni)
   perché tutte i file di un dato video si trovano qui e si
   velocizzerà l'accesso al file assegnato.

   Cliccare dunque sul nome del file che ci è stato assegnato
   (`revs_000000_002500_lbraglia.srt` nell'esempio);

   ![subs file_select](img/revs_file_select.png)

7.  Cliccare su `Raw` per ottenere il file;

   ![subs file_select](img/revs_raw.png)

8.  Ora per fare il download del file:

	* in Firefox: cliccare col pulsante destro, selezionare "Salva pagina con nome" o qualcosa di linguisticamente analogo
	* in Chrome: cliccare col destro, selezionare "Salva con nome..." o qualcosa di linguisticamente analogo
	
	Dopodiché **cancellare** eventuali estensioni `.txt` se proposte dal proprio browser (mentre il "Salva come" è irrilevante)


   ![subs file_select](img/firefox_chrome_rightclick.png)

	
   ![subs file_select](img/firefox_chrome_filesave.png)


9. arrivati a questo punto dovremmo avere sia il video che i subs da editare
   in una opportuna cartella (oppure sul Desktop):

   ![hnva2_folder](img/hnva2_folder.png)

10. fare doppio click sul file `.srt` per fare in modo che Aegisub lo
    inizi ad editare:
	
   ![doppio_click](img/doppio_click_sub.png)

11. per caricare il video cliccare `Video -> Apri video`

   ![apri_video](img/apri_video.png)

12. una volta importato il file ci troviamo in una situazione del genere:

   ![post_importazione](img/post_importazione.png)

13. per posizionare il video al primo sub (es soprattutto per i file
    che iniziano più avanti di `00:00:00`), fare due clic sulla linea
    del primo sub nella lista, dopodiché iniziare il controllo/editing
	seguendo quanto consigliato [più sotto](revise.md#editing-con-aegisub);

14. Importante: **salvare** il lavoro e fare i **backup** del file
    `.srt` editato;

15. una volta concluso l'editing del proprio spezzone inviarmi la
    versione finale (come si preferisce, Telegram o
    mailto:lbraglia@gmail.com) per archiviazione e per produzione dell'`.srt`
    complessivo.


# Editing con Aegisub

Un workflow minimale:
1. posizionarsi sulla prima riga (col doppio click)
2. schiacciare `r` per riprodurre l'audio del sub
3. controllare la traduzione e se necessario metterla a posto editando 
   nell'apposito riquadro. In particolar modo controllare:
   * **corretta resa in italiano** di quello che viene detto in
	 inglese, seguendo le linee guida;
   * **leggibilità** del sub: cercare di tenere il CPS (rapporto tra
     caratteri e durata del sub in secondi) sotto 20 e spezzare i
     sottotitoli (visualizzati a video) in maniera all'incirca equa.
     Per spezzare una linea come si desidera spostare il carattere
     `\N` che indica l'andare a capo nel sub.

   Evitare di modificare:
   * formattazione (per compatibilità);
   * timing dei sottotitoli (a meno che si sappia esattamente cosa si
	 stia facendo).
4. salvare con `Ctrl+S`
5. muoversi al prossimo sottotitolo/linea mediante la freccia verso il basso;
6. repeat da 2;
7. una volta editati tutti i sottotitoli si può dare un check
   complessivo facendo doppio click sul primo sub e comandando
   `Ctrl+P` per riprodurre il video con i sottotitoli rivisti.


## Ottenere aiuto
In caso di dubbi/difficoltà:

* per **aspetti linguistici** non esitare a chiedere un parere/aiuto al gruppo
  "AV: Traduttori e Revisori" seguendo [queste istruzioni](help.md);
* per **aspetti informatici** contattami direttamente.

