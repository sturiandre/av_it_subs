.DEFAULT_GOAL = help

PRJ     = test
R_HOME  = "$(shell R RHOME)"
RSCRIPT = "$(R_HOME)/bin/Rscript"
USE_GTRANSLATE = FALSE
BROWSER = firefox

# ------------------------------------------------
# Target per editing user database
# ------------------------------------------------
edit-users-db:
	libreoffice --calc data/users.csv

list-users:
	${RSCRIPT} -e 'db <- read.csv("data/users.csv"); db <- db[order(db[,1]), ]; rownames(db) <- NULL; print(db)' | less

# ------------------------------------------------
# Target per sottotitoli originali pre-translation
# ------------------------------------------------
edit-source-subs:
	gnome-subtitles source/${PRJ}_en.srt

split-source-subs:
	${RSCRIPT} -e "library(lbav); srt_en <- read_srt('source/${PRJ}_en.srt'); srt_it <- read_srt('source/${PRJ}_it.srt'); chunks <- av_srt_chunk_maker(srt_en = srt_en, srt_it = srt_it, yt_id = '${YT}'); tmp <- lapply(chunks, av_srt_chunk_printer, con_des = 'file', output_dir = 'subs/${PRJ}', use_gtranslate= ${USE_GTRANSLATE})"

# -----------------------------------------------
# Target per assegnare sandbox e file da tradurre
# -----------------------------------------------
edit-assign-files:
	emacs -nw /tmp/translate /tmp/sandbox 

assign:
	av_yt_assign --prj $(PRJ) \
	--sandbox_file /tmp/sandbox \
	--translate_file /tmp/translate \
	2>&1 | less

# # incolla filettini e crea srt finale
# srt:
# 	${RSCRIPT} -e "library(lbav); srt <- read_srt(pipe('cat subs/$(PRJ)/subs_*')); write_srt(srt, f = 'subs/$(PRJ)/$(PRJ)_final.srt')"


git-log-analysis:
	av_yt_git_log_analysis --prj $(PRJ) 

# help
help:
	@echo "====="
	@echo "Usage"
	@echo "====="
	@echo
	@echo " make TARGET PRJ-subs_project"
	@echo
	@echo " con PRJ- cartella sotto subs, di default 'test'"
	@echo
	@echo "-------------"
	@echo "Users targets"
	@echo "-------------"
	@echo
	@echo " edit-users-db      - edit users data"
	@echo " list-users         - list users and permissions"
	@echo
	@echo "-----------"
	@echo "Subs source "
	@echo "-----------"
	@echo
	@echo " edit-source-subs   - edit original source from speech-to-text (in source dir)"
	@echo " split-source-subs  - split original source subs for translation"
	@echo
	@echo "   es: make split YT=cJ9kGZMbyVw"
	@echo "   es: make split PRJ-hnva2 YT=cJ9kGZMbyVw"
	@echo
	@echo "--------------------------------"
	@echo "Assignments (sandbox, translate) "
	@echo "--------------------------------"
	@echo
	@echo " assign              - create a sandbox or assign a translate"
	@echo
	@echo "    es: make assign PRJ-hnva2 SND-'luca1 luca2' TRN-'luca3 luca4'"
	@echo
	@echo "-----"
	@echo "Utils"
	@echo "-----"
	@echo
	@echo " git-log-analysis           - analyze git logs with gitinspector"
	@echo
	@echo "----------------"
	@echo "Useful variables"
	@echo "----------------"
	@echo
	@echo " PRJ                 - project name"
	@echo " YT                  - YouTube id of the video"
	@echo " SND                 - users for sandbox requests (command-line specified)"
	@echo " TRN                 - users for translate requests (command-line specified)"
	@echo



