add2 <- function(x, y){
  x+y
}

above_n <- function(x, n){
  use <- x > n
  x[use]
}

col_mean <- function(x, removeNA = TRUE){
  nc <- ncol(x)
  means <- numeric(nc)
  for(i in seq_len(nc)){
    means[i] <- mean(x[ , i], na.rm = removeNA)
  }
  means
}

make.power <- function(n){
  pow <- function(x){
    x^n
  }
}