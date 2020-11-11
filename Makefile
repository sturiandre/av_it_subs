.PHONY: sandbox split srt

USR     = test
PRJ     = test
R_HOME  = "$(shell R RHOME)"
RSCRIPT = "$(R_HOME)/bin/Rscript"

help:

# target per creare un sandbox per un utente
sandbox:
	cp sandbox/template.srt sandbox/$(USR).srt && \
	git add sandbox/$(USR).srt && \
	git commit -m "sandbox/$(USR).srt"

# target per splittare un file origine in inglese in più filettini
split:
	${RSCRIPT} -e "library(lbav); srt_en <- read_srt('source/${PRJ}_en.srt'); srt_it <- read_srt('source/${PRJ}_it.srt'); chunks <- av_srt_chunk_maker(srt_en = srt_en, srt_it = srt_it); tmp <- lapply(chunks, av_srt_chunk_printer, con_des = 'file', output_dir = '${PRJ}')"

# incolla filettini e crea srt finale
srt:
	${RSCRIPT} -e "library(lbav); srt <- read_srt(pipe('cat $(PRJ)/subs_*')); write_srt(srt, f = '$(PRJ)/$(PRJ)_final.srt')"

