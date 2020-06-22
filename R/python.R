#' @export
executepyth <- function (string) {

  fileConn <- file("output.txt")
  writeLines(string, fileConn)
  close(fileConn)

  return (reticulate::py_run_file("output.txt"))

}



