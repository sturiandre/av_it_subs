.PHONY: sandbox srt revision_srt final_srt

USR     = test
PRJ     = test
R_HOME  = "$(shell R RHOME)"
RSCRIPT = "$(R_HOME)/bin/Rscript"
R       = "$(R_HOME)/bin/R"


help:

# target per creare un sandbox per un utente
sandbox:
	cp sandbox/template.srt sandbox/$(USR).srt && \
	git add sandbox/$(USR).srt && \
	git commit -m "sandbox/$(USR).srt"

# target per splittare un file origine in inglese in più filettini
split:
	${RSCRIPT} -e "library(lbav); srt <- read_srt('source/${PRJ}.srt'); chunks <- av_srt_chunk_maker(srt = srt); tmp <- lapply(chunks, av_srt_chunk_printer, con_des = 'file')"


# target per creare il srt a fine traduzione, per i revisors
revision_srt:
	cat $(PRJ)/*  > $(PRJ)/$(PRJ)_for_revision.srt

# da rimpiazzare con qualcosa che faccia il parsing ed elimini sia ## che linee
# bianche in eccesso
final_srt:
	cat $(PRJ)/$(PRJ)_for_revision.srt |  \
	grep -v "##" > $(PRJ)/$(PRJ)_final.srt
