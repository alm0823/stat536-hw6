something <- function(x){
  Sys.sleep(runif(1, 1, 3))
  cat("Hi", x, "!\n")
  return(x)
}

sapply(1:10, something)

library(parallel)

cl <- makeCluster(2, outfile = "")
parSapply(cl, 1:10, something)
