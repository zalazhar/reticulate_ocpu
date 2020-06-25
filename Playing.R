test <- "
import pandas as pd
d = {'col1': [1, 2], 'col2': [3, 4]}
df = pd.DataFrame(data = d)
print(df)"

capture.output(ocpupyt::executepyth(test))


extract_console <- function(evaluation){
  messages <- lapply(evaluation, function(x){
    if(inherits(x, "warning")) {
      return(paste("Warning message:", clean_string(x$message), sep="\n"));
    } else if(inherits(x, "message")) {
      return(paste("Message:", clean_string(x$message), sep="\n"));
    } else if(inherits(x, "error")){
      return(paste("Error:", x$message, sep="\n"));
    } else if(inherits(x, "character")){
      return(sub("\n$", "", x));
    } else if(inherits(x, "source")){
      return(gsub("\n", "\n+ ", sub("\n$", "", paste(">",x$src))));
    } else if(inherits(x, "recordedplot")){
      return("[[ plot ]]");
    } else {
      return();
    }
  });
  unlist(messages);
}
