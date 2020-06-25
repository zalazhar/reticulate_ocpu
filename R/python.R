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

test <- "
import pandas as pd
d = {'col1': [1, 2], 'col2': [3, 4]}
df = pd.DataFrame(data = d)
print(df)
print(df.to_csv('out.csv',index= False))"

test1 <- "
import numpy as np"

cat(ocpupyt::executepyth(test1))


}
