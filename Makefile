.PHONY: sandbox split srt

USR     = test
PRJ     = test
R_HOME  = "$(shell R RHOME)"
RSCRIPT = "$(R_HOME)/bin/Rscript"
USE_GTRANSLATE = TRUE

help:

# target per creare sanboxes anche multipli
# make sandbox USR=asd
# make sandbox USR="asd foo bar"
sandbox:
	av_yt_sandbox $(USR)

edit-source-subs:
	gnome-subtitles source/${PRJ}_en.srt

# target per splittare un file origine in inglese in più filettini
# es: make split YT=cJ9kGZMbyVw
# es: make split PRJ=hnva2 YT=cJ9kGZMbyVw
split:
	${RSCRIPT} -e "library(lbav); srt_en <- read_srt('source/${PRJ}_en.srt'); srt_it <- read_srt('source/${PRJ}_it.srt'); chunks <- av_srt_chunk_maker(srt_en = srt_en, srt_it = srt_it, yt_id = '${YT}'); tmp <- lapply(chunks, av_srt_chunk_printer, con_des = 'file', output_dir = 'subs/${PRJ}', use_gtranslate= ${USE_GTRANSLATE})"

# incolla filettini e crea srt finale
srt:
	${RSCRIPT} -e "library(lbav); srt <- read_srt(pipe('cat subs/$(PRJ)/subs_*')); write_srt(srt, f = 'subs/$(PRJ)/$(PRJ)_final.srt')"

