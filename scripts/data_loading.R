
# Option 1: Use built-in dataset
loadData <- function() {
  data <- mtcars
  # Convert 'cyl' to factor to demonstrate datatype conversion
  data$cyl <- as.factor(data$cyl)
  # Create a logical column indicating if mpg is above 20
  data$mpg_high <- data$mpg > 20
  return(data)
}

# safe-keeping: if i wanted to use/load an external csv file 
# library(readr)
# loadData <- function() {
#   data <- read_csv("../data/your_dataset.csv")
#   return(data)
# }
