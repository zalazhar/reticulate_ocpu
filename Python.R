
execute_python <- function (string) {
  
  fileConn <- file("output.txt")
  writeLines(string, fileConn)
  close(fileConn)
  
  reticulate::py_run_file("output.txt")
  
}

script = 
"import numpy as np
print np.linspace(1,2,3)
klm = 'ha ha' 
print klm"

execute_python(script)



