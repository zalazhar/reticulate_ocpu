#' @export
executepyth <- function (string) {

fileConn <- file("output.txt")
writeLines(string, fileConn)
close(fileConn)

reticulate::py_run_file("output.txt")

}

#' @export
executer <- function(string) {
  cat(string)
}

