compile_support_file <- function(choices, f){
    rval <- select.list(choices, multiple = TRUE)
    lbmisc::write_lines(x = c(rval, ''), f = f)
}

compile_support_file(letters, '/tmp/asd')
 
