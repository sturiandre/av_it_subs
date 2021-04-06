## setup
library(lbmisc)
devtools::load_all("~/src/rpkg/lbav2")
prj_id <- 'test'
prj_yt_id <- 'Lox6tAor5Xo'
sandbox_f      <- "/tmp/assign_sandbox"
rev1_sandbox_f <- "/tmp/assign_rev1_sandbox"
translate_f    <- "/tmp/assign_translate"
revise2_f      <- "/tmp/assign_revise2"
## setup del progetto: bisogna proprio volerlo :)
if (FALSE){
    system('rm -rf subs/test')
    lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)$setup()
}


## create_sandbox
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
trn <- c(prj$users$translators(), prj$users$revisors2())
rev1 <- c(prj$users$translators(), prj$users$revisors2())
write_lines(trn, f = sandbox_f)
write_lines(rev1, f = rev1_sandbox_f)
prj$create_sandbox(sandbox_f = sandbox_f, rev1_sandbox_f = rev1_sandbox_f)

## assign translate
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
write_lines(trn,  f = translate_f)
prj$assign(translate_f = translate_f)
prj$monitoring()

## mark avanzamento
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)


## assign revision2
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id)
write_lines(rev1, f = revise2_f)
prj$assign(revise2_f = revise2_f)
prj$monitoring()
