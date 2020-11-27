.DEFAULT_GOAL = help

# Ambiente
R_HOME  = "$(shell R RHOME)"
RSCRIPT = "$(R_HOME)/bin/Rscript"
BROWSER = firefox

# Default project infos
PRJ     = test
YT_ID   = cJ9kGZMbyVw
# USE_GTRANSLATE = FALSE # se disponibile test_it.srt lo usa, se no amen, KISS
CHUNKS_LEN_MINS = 5   #lunghezza chunks di sottotitoli per splitting in minuti
TRN_TO_REV_RATIO = 4  #quanti translate completi per creare una revisione?
# es con il setup CHUNKS_LEN_MINS = 5 e TRN_TO_REV_RATIO = 4 una revisione è
# di 20 minuti e ingloba 4 translate di 5 minuti ciascuno

# ------------------------------------------------
# Target per editing user database
# ------------------------------------------------
edit-users-db:
	libreoffice --calc data/users.csv

list-users:
	${RSCRIPT} -e 'db <- read.csv("data/users.csv"); db <- db[order(db[,1]), ]; rownames(db) <- NULL; print(db)' | less

summon-revisors:
	${RSCRIPT} -e 'db <- read.csv("data/users.csv"); revisors <- db[db[,"revisor"], "gh_user"]; cat("\n\nRevisors: ", sprintf("@%s", revisors), "\n\n")'\
	| less

# ------------------------------------------------
# Target per sottotitoli originali pre-translation
# ------------------------------------------------
edit-source-subs:
	gnome-subtitles source/hnva2_en.srt

split-source-subs:
	av_yt_split_source --prj ${PRJ} --yt_id ${YT_ID} --chunks_len_mins ${CHUNKS_LEN_MINS}

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

# -------------------------------------------------------
# Target per markare i translate completi e fare il check
# revisioni, creare le revisioni ed evocare revisori
# -------------------------------------------------------
edit-completed-files:
	emacs -nw /tmp/completed_files

mark-as-completed:
	av_yt_mark_as_completed --prj $(PRJ) \
	--completed_files /tmp/completed_files \
	--trn_to_rev_ratio ${TRN_TO_REV_RATIO} \
	2>&1 | less

# ------------
# Misc & utils
# ------------
monitoring:
	av_yt_monitoring --prj $(PRJ)

git-log-analysis:
	av_yt_git_log_analysis --prj $(PRJ) 

# mplayer the video with subs
view-with-subs:
	mplayer --sub-file=source/$(PRJ)_en.srt video/$(PRJ).mp4 

# make a version of the video with subs
burn-with-subs:
	ffmpeg -i source/$(PRJ)_en.srt source/$(PRJ)_en.ass && \
	ffmpeg -i video/$(PRJ).mp4 -vf ass=source/$(PRJ)_en.ass \
	/tmp/$(PRJ)_en_subtitled.mp4



# help
help:
	@echo "====="
	@echo "Usage"
	@echo "====="
	@echo
	@echo " make TARGET PRJ=subs_project"
	@echo
	@echo " con PRJ cartella sotto subs, di default 'test'"
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
	@echo "   es: make split-source-subs YT_ID=cJ9kGZMbyVw"
	@echo "   es: make split-source-subs PRJ=hnva2 YT_ID=cJ9kGZMbyVw"
	@echo
	@echo "--------------------------------"
	@echo "Assignments (sandbox, translate) "
	@echo "--------------------------------"
	@echo
	@echo " assign              - create sandboxes or assign translates"
	@echo "                       using /tmp/sandbox and /tmp/translate"
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
	@echo " YT_ID               - YouTube id of the video"
	@echo " SND                 - users for sandbox requests (command-line specified)"
	@echo " TRN                 - users for translate requests (command-line specified)"
	@echo
