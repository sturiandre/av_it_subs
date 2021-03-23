.DEFAULT_GOAL = help

# Ambiente
R_HOME  = "$(shell R RHOME)"
RSCRIPT = "$(R_HOME)/bin/Rscript"
BROWSER = firefox
SUBEDITOR = aegisub-3.2

# Default project infos
PRJ     = test
YT_ID   = Lox6tAor5Xo
CHUNKS_LEN_MINS = 5   #lunghezza chunks di sottotitoli per splitting in minuti
TRN_TO_REV_RATIO = 6  #quanti translate completi per creare una revisione?
# es con il setup CHUNKS_LEN_MINS = 5 e TRN_TO_REV_RATIO = 6 una revisione è
# di 30 minuti e ingloba 6 translate di 5 minuti ciascuno

# ------------------------------------------------
# Target per editing user database
# ------------------------------------------------
edit-users-db:
	emacs -nw data/users.csv ~/src/rpkg/lbprivee/rawdata/av_yt_users.csv

list-users:
	${RSCRIPT} -e 'db <- read.csv("data/users.csv"); db <- db[order(db[,1]), ]; rownames(db) <- NULL; print(db)' | less

summon-revisors:
	${RSCRIPT} -e 'db <- read.csv("data/users.csv"); revisors <- db[db[,"revisor"], "gh_user"]; cat("\n\n", sprintf("@%s: ", revisors), "\n", sep = '')'\
	| less

# lista i traduttori per un determinato progetto
list-translators:
	${RSCRIPT} -e "lbav::list_translators(prj = '$(PRJ)')"

# ------------------------------------------------
# Setup del progetto
# ------------------------------------------------

setup: 
	${RSCRIPT} -e "lbav::setup_project(prj = '$(PRJ)', \
	yt_id = '$(YT_ID)',\
	 chunks_len_mins = $(CHUNKS_LEN_MINS))"

# ----------------------------------------------------------------------
# Target per editare file di supporto, 
# ----------------------------------------------------------------------

# file di supporto per markare gli avanzamenti: IN QUESTI VANNO SCRITTI I FILE
# NELLA VERSIONE subs_000000.srt o revs_000000_000500.srt (che sono quelli
# che si hanno dalla chat telegram
edit-mark_trn_completed:
	rm -rf    /tmp/mark_trn_completed && \
	emacs -nw /tmp/mark_trn_completed

edit-mark_rev1_started:
	rm -rf    /tmp/mark_rev1_started && \
	emacs -nw /tmp/mark_rev1_started

edit-mark_rev1_completed:
	rm -rf    /tmp/mark_rev1_completed && \
	emacs -nw /tmp/mark_rev1_completed

edit-mark_rev2_completed:
	rm -rf    /tmp/mark_rev2_completed && \
	emacs -nw /tmp/mark_rev2_completed

edit-mark:
	rm -rf /tmp/mark_* && \
	emacs -nw \
	/tmp/mark_trn_completed  \
	/tmp/mark_rev1_started   \
	/tmp/mark_rev1_completed \
	/tmp/mark_rev2_completed 

# file di supporto per le assegnazioni: IN QUESTI VENGONO SCRITTI I NOMI
# DI UTENTI GITHUB
# /tmp/assign_sandbox /tmp/assign_translate /tmp/assign_revise2

edit-assign_sandbox:
	rm -rf /tmp/assign_sandbox && emacs -nw /tmp/assign_sandbox

edit-assign_rev_sandbox:
	rm -rf /tmp/assign_rev_sandbox && emacs -nw /tmp/assign_rev_sandbox

edit-assign_translate:
	rm -rf /tmp/assign_translate && emacs -nw /tmp/assign_translate

edit-assign_revise2:
	rm -rf /tmp/assign_revise2 && emacs -nw /tmp/assign_revise2

edit-assign:
	rm -rf /tmp/assign_* && \
	emacs -nw 	\
	/tmp/assign_sandbox \
	/tmp/assign_rev_sandbox \
	/tmp/assign_translate \
	/tmp/assign_revise2

# --------------------------------------------
# Target per assegnare e markare completamenti
# --------------------------------------------
# edit-completed:
# 	rm -rf /tmp/completed_files && 	emacs -nw /tmp/completed_files
# 
# mark-as-completed:
# 	av_yt_mark_as_completed --prj $(PRJ) \
# 	--completed_files /tmp/completed_files \
# 	--trn_to_rev_ratio ${TRN_TO_REV_RATIO} \
# 	2>&1 | less

# per markare un file come tradotto o rev completata (in seguito a
# una comunicazione in chat telegram da parte di traduttori o revisori)
# evolve il vecchio mark as completed
mark_progresses:
	${RSCRIPT} -e "lbav::mark_progresses(prj = '$(PRJ)' , )" 2>&1 | less

assign:
	av_yt_assign --prj $(PRJ) \
	--sandbox_file /tmp/assign_sandbox \
	--translate_file /tmp/assign_translate \
	--revise_file /tmp/assign_revise2 \
	2>&1 | less

# ------------
# Misc & utils
# ------------
monitoring:
	${RSCRIPT} -e "lbav::monitoring(prj = '$(PRJ)')"	
	# av_yt_monitoring --prj $(PRJ)

git-log-analysis:
	${RSCRIPT} -e "lbav::git_log_analysis(prj = '$(PRJ)')"
	# av_yt_git_log_analysis --prj $(PRJ) 

# mplayer the video with subs
view-with-source-subs:
	mplayer --sub-file=source/$(PRJ).srt video/$(PRJ).mp4 

# make a version of the video with subs (english, for translation)
burn-translate-with-subs:
	ffmpeg -i source/$(PRJ).srt /tmp/$(PRJ).ass && \
	ffmpeg -i video/$(PRJ).mp4 -vf ass=/tmp/$(PRJ).ass \
	/tmp/$(PRJ)_en_subtitled.mp4

# make a version of the video with subs (english, for translation)
burn-revise-with-subs:
	cat subs/$(PRJ)/revs_*.srt > /tmp/$(PRJ)_revs.srt && \
	ffmpeg -i /tmp/$(PRJ)_revs.srt /tmp/$(PRJ)_revs.ass && \
	ffmpeg -i video/$(PRJ).mp4 -vf ass=/tmp/$(PRJ)_revs.ass \
	/tmp/$(PRJ)_it_for_revs.mp4

# prima linea solo video, seconda vari sub anche tradotti
download-video:
	cd /tmp && \
	youtube-dl -f 18 "https://www.youtube.com/watch?v=$(YT_ID)"
	# youtube-dl -f 18 --all-subs --write-auto-sub  "https://www.youtube.com/watch?v=$(YT_ID)"

download-subs:
	cd /tmp && \
	youtube-dl  --skip-download --all-subs "https://www.youtube.com/watch?v=$(YT_ID)"


# ------------
# Final srt
# ------------

final-srt:
	${RSCRIPT} -e "lbav::make_final_srt(prj = '$(PRJ)')" 2>&1 | less
	# av_yt_make_final_srt --prj $(PRJ) 2>&1 | less

final-srt-stats:
	${RSCRIPT} -e "srt <- lbav::read_srt(f = 'subs/$(PRJ)/$(PRJ)_final.srt'); stats <- lbav::srt_stats(srt, yt_id = '$(YT_ID)'); openxlsx::write.xlsx(stats, file = '/tmp/$(PRJ)_stats.xlsx', asTable = TRUE)" &&\
	libreoffice /tmp/$(PRJ)_stats.xlsx &

view-with-final-subs:
	mplayer --sub-file=subs/$(PRJ)/$(PRJ)_final.srt video/$(PRJ).mp4 

edit-final-subs:
	$(SUBEDITOR) subs/$(PRJ)/$(PRJ)_final.srt video/$(PRJ).mp4

view-final-subs:
	less subs/$(PRJ)/$(PRJ)_final.srt

# ------------
# Help
# ------------
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
	@echo " summon-revisors    - list revisors with @ for easy telegram copy'n paste"
	@echo
	@echo "-----------"
	@echo "Subs source "
	@echo "-----------"
	@echo
	@echo " split-source-subs  - split original source subs for translation"
	@echo
	@echo "   es: make split-source-subs YT_ID=cJ9kGZMbyVw"
	@echo "   es: make split-source-subs PRJ=hnva2 YT_ID=cJ9kGZMbyVw"
	@echo
	@echo "--------------------------------"
	@echo "Assignments (sandbox, translate) "
	@echo "--------------------------------"
	@echo
	@echo " edit-assign-files   - create/edit /tmp/sandbox and /tmp/translate"
	@echo " assign              - create sandboxes or assign translates"
	@echo "                       using /tmp/sandbox and /tmp/translate"
	@echo
	@echo "--------------------------------"
	@echo "Assignments (sandbox, translate) "
	@echo "--------------------------------"
	@echo
	@echo " edit-completed-files   - create/edit /tmp/completed_files"
	@echo " mark-as-completed      - mark file as completed using /tmp/completed_files"
	@echo "                          check for available revisions and summon revisors"
	@echo
	@echo "-----"
	@echo "Utils"
	@echo "-----"
	@echo
	@echo " monitoring                 - plot advancement status"
	@echo " git-log-analysis           - analyze git logs with gitinspector"
	@echo " view-with-subs             - mpv the video with subs from source"
	@echo " burn-with-subs             - burn the subs into the video (output in /tmp)"
	@echo 
	@echo "----------------"
	@echo "Useful variables"
	@echo "----------------"
	@echo
	@echo " PRJ                 - project name"
	@echo " YT_ID               - YouTube id of the video"
	@echo " CHUNKS_LEN_MINS     - minutes (length) for subs-chunks splitting (default = 5mins)"
	@echo " TRN_TO_REV_RATIO    - how much subs for a rev (default = 4)"
	@echo

