.PHONY: sandbox srt

USR=test
PRJ=test

help:

# target per creare un sandbox per un utente
sandbox:
	cp sandbox/template.srt sandbox/$(USR).srt && \
	git add sandbox/$(USR).srt && \
	git commit -m "sandbox/$(USR).srt"

# target per creare il srt a fine traduzione, per i revisors
# da rimpiazzare con qualcosa che validi l'input e imprechi a dovere
srt:
	cat $(PRJ)/* | grep -v "##" > $(PRJ)/$(PRJ).srt

