.PHONY: sandbox split srt

USR     = test
PRJ     = test
R_HOME  = "$(shell R RHOME)"
RSCRIPT = "$(R_HOME)/bin/Rscript"
USE_GTRANSLATE = FALSE

help:

# ------------------------------------------------
# Target per editing sottotitoli originali pre-trn
# ------------------------------------------------
edit-source-subs:
	gnome-subtitles source/${PRJ}_en.srt

# -----------------------------------------------
# Target per assegnare sandbox e file da tradurre
# -----------------------------------------------
# make assign PRJ=hnva2 SND='luca1 luca2' TRN='luca3 luca4'
assign:
	av_yt_assign --prj $(PRJ) --sandbox $(SND) --translate $(TRN)


# ----------------------------------------------------------------
# target per splittare un file origine in inglese in più filettini
# ----------------------------------------------------------------
# es: make split YT=cJ9kGZMbyVw
# es: make split PRJ=hnva2 YT=cJ9kGZMbyVw
split:
	${RSCRIPT} -e "library(lbav); srt_en <- read_srt('source/${PRJ}_en.srt'); srt_it <- read_srt('source/${PRJ}_it.srt'); chunks <- av_srt_chunk_maker(srt_en = srt_en, srt_it = srt_it, yt_id = '${YT}'); tmp <- lapply(chunks, av_srt_chunk_printer, con_des = 'file', output_dir = 'subs/${PRJ}', use_gtranslate= ${USE_GTRANSLATE})"

# incolla filettini e crea srt finale
srt:
	${RSCRIPT} -e "library(lbav); srt <- read_srt(pipe('cat subs/$(PRJ)/subs_*')); write_srt(srt, f = 'subs/$(PRJ)/$(PRJ)_final.srt')"
