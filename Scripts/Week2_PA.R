pollutantmean <- function(directory="specdata", pollutant, id)
{
  means <- numeric(1)
  for(i in seq_along(id))
  {
    if(id[i] < 10)
    {
      name <- paste("00", id[i], ".csv", sep = "")
    }
    if(id[i] >= 10 && id[i] < 100)
    {
      name<- paste("0", id[i], ".csv", sep = "")
    }
    data <- read.csv(file = name)
    x <- c(x, data[[pollutant]])
  }
  means <- mean(m, na.rm = T)
}