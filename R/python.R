#' @export
executepyth <- function (string) {

  library(reticulate)
  py_capture_output(py_run_string(string))

}

#' @export
executer <- function(string) {
  cat(string)
}


saveout <- function(string){

  return (capture.output(executepyth(string)))

}
