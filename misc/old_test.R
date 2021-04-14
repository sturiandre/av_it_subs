## setup
library(lbmisc)
devtools::load_all("~/src/rpkg/lbav2")
prj_id <- 'test'
prj_yt_id <- 'Lox6tAor5Xo'
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
prj$menu()












sandbox_f        <- "/tmp/assign_sandbox"
rev1_sandbox_f   <- "/tmp/assign_rev1_sandbox"
translate_f      <- "/tmp/assign_translate"
revise2_f        <- "/tmp/assign_revise2"
trn_completed_f  <- "/tmp/mark_trn_completed" 
rev1_started_f   <- "/tmp/mark_rev1_started" 
rev1_completed_f <- "/tmp/mark_rev1_completed"
rev2_completed_f <- "/tmp/mark_rev2_completed"




trn <- c(prj$users$translators(), prj$users$revisors2())
rev1 <- c(prj$users$translators(), prj$users$revisors2())
write_lines(trn, f = sandbox_f)
write_lines(rev1, f = rev1_sandbox_f)
## prj$create_sandbox(sandbox_f = sandbox_f, rev1_sandbox_f = rev1_sandbox_f)
prj$create_sandbox()

## assign translate
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
write_lines(trn,  f = translate_f)
## prj$assign(translate_f = translate_f)
prj$assign()
prj$monitoring()

## mark traduzioni complete
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
trn_compl <- c("subs/test/subs_000000_Agn25.srt",
               "subs/test/subs_000500_andreea785.srt",
               "subs/test/subs_001000_danilily.srt",
               "subs/test/subs_001500_eleonoragee.srt",
               "subs/test/subs_002000_fedescimo.srt",
               "subs/test/subs_002500_kudelka85.srt",
               "subs/test/subs_003000_lorenza76.srt",
               "subs/test/subs_003500_re-ale.srt")
write_lines(trn_compl,  f = trn_completed_f)
# undebug(prj$mark_progresses)
## prj$mark_progresses(trn_completed_f = trn_completed_f) 
prj$mark_progresses() 
prj$monitoring()

## mark rev1 iniziate
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
rev1_started <- c("subs/test/subs_000000_Agn25.srt",
                  "subs/test/subs_000500_andreea785.srt",
                  "subs/test/subs_001000_danilily.srt",
                  "subs/test/subs_001500_eleonoragee.srt",
                  "subs/test/subs_002000_fedescimo.srt",
                  "subs/test/subs_002500_kudelka85.srt",
                  "subs/test/subs_003000_lorenza76.srt")
write_lines(rev1_started,  f = rev1_started_f)
# undebug(prj$mark_progresses)
## prj$mark_progresses(rev1_started_f = rev1_started_f) 
prj$mark_progresses() 
prj$monitoring()

## mark rev1 completa
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
rev1_completed <- c("subs/test/subs_000000_Agn25.srt",
                    "subs/test/subs_000500_andreea785.srt",
                    "subs/test/subs_001000_danilily.srt",
                    "subs/test/subs_001500_eleonoragee.srt",
                    "subs/test/subs_002000_fedescimo.srt",
                    "subs/test/subs_002500_kudelka85.srt",
                    "subs/test/subs_003000_lorenza76.srt")
write_lines(rev1_completed,  f = rev1_completed_f)
# undebug(prj$mark_progresses)
## prj$mark_progresses(rev1_completed_f = rev1_completed_f) 
prj$mark_progresses() 
prj$monitoring()

## assign revision2
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
write_lines("pmav83", f = revise2_f)
debug(prj$assign)
## prj$assign(revise2_f = revise2_f)
prj$assign()
## debug(try_assign)
## debug(private$check_allowed_users)
## debug(private$check_homework)
## debug(private$avanz$assignable_files)
prj$monitoring()

## mark rev2 completa
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
rev2_completed <- c("subs/test/revs_000000_002500_pmav83.srt")
write_lines(rev2_completed,  f = rev2_completed_f)
# undebug(prj$mark_progresses)
## prj$mark_progresses(rev2_completed_f = rev2_completed_f) 
prj$mark_progresses() 
prj$monitoring()


## ## git log analysis
## prj$git_log_analysis()


