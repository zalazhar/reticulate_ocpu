#' @export
execute_py <- function (string) {
  library(reticulate)
  py_capture_output(py_run_string(string))
}
