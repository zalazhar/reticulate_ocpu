#' @export
executepyth <- function (string) {

fileConn <- file("output.txt")
writeLines(string, fileConn)
close(fileConn)

reticulate::py_run_file("output.txt")

}

test <- function () {

klm = data.frame(test = c(1,2,3))
write.csv(klm, "klm.csv")

}



