# main.R

# Load required scripts
source("scripts/data_loading.R")
source("scripts/regression_model.R")
source("scripts/data_visualization.R")

main <- function() {
  cat("Starting Linear Regression Project in R...\n\n")
  
  # Demonstrate various R datatypes
  demonstrateDataTypes <- function() {
    # Different data types:
    num_val <- 42.5                    # numeric
    char_val <- "Hello, R!"            # character
    log_val <- TRUE                    # logical
    fact_val <- factor(c("low", "medium", "high"))  # factor
    list_val <- list(num = num_val, char = char_val, log = log_val, fact = fact_val)  # list
    cat("Numeric:", num_val, "\n")
    cat("Character:", char_val, "\n")
    cat("Logical:", log_val, "\n")
    cat("Factor:", fact_val, "\n")
    cat("List:\n")
    print(list_val)
  }
  
  processArray <- function() {
    arr <- c(10, 20, 30, 40, 50)  # numeric vector (array)
    for (val in arr) {
      cat("Value:", val, "Square:", val^2, "\n")
    }
  }
  
  # Run demonstration functions
  demonstrateDataTypes()
  cat("\nProcessing an array with a loop:\n")
  processArray()
  
  # Load the dataset
  data <- loadData()
  cat("\nDataset loaded. Dimensions: ", dim(data), "\n")
  
  # Fit the linear regression model
  model <- fitModel(data)
  cat("\nModel Summary:\n")
  print(summary(model))
  
  # Print the regression equation
  cat("\nRegression Equation:\n")
  printModelEquation(model)
  
  # Visualize the model
  cat("\nGenerating plot...\n")
  visualizeModel(data, model)
  
  cat("\nProject complete.\n")
}

# Run the main function
main()

