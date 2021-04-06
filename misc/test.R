## setup
library(lbmisc)
devtools::load_all("~/src/rpkg/lbav2")
prj_id <- 'test'
prj_yt_id <- 'Lox6tAor5Xo'
sandbox_f <- "/tmp/assign_sandbox"
rev1_sandbox_f <- "/tmp/assign_rev1_sandbox"
prj <- lbav2::prj$new(id = prj_id, yt_id = prj_yt_id);

## setup del progetto
system('rm -rf subs/test')
prj$setup()

## create_sandbox
trn <- c("fedescimo", "danilily", "kudelka85")
rev1 <- c("fedescimo", "danilily", "kudelka85")

write_lines(trn, file = sandbox_f)
write_lines(rev1, file = rev1_sandbox_f)
prj$create_sandbox(sandbox_f = sandbox_f, rev1_sandbox_f = rev1_sandbox_f)

## srt

