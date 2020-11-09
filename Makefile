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
revision_srt:
	cat $(PRJ)/*  > $(PRJ)/$(PRJ)_for_revision.srt

# da rimpiazzare con qualcosa che faccia il parsing ed elimini sia ## che linee
# bianche in eccesso
final_srt:
	cat $(PRJ)/$(PRJ)_for_revision.srt |  \
	grep -v "##" > $(PRJ)/$(PRJ)_final.srt
