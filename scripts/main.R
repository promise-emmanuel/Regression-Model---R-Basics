# main.R

# Load required scripts
source("scripts/data_loading.R")
source("scripts/regression_model.R")
source("scripts/data_visualization.R")

main <- function() {
  cat("Starting Linear Regression Project in R...\n\n")
  
  # Demonstrate various R datatypes and loop (for requirements)
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



# # Load necessary libraries
# library(ggplot2)   # For plotting
# library(dplyr)     # For data manipulation (optional)

# #########################
# # Function: demonstrateDataTypes
# # Purpose: Display output using at least 5 different R datatypes.
# #########################
# demonstrateDataTypes <- function() {
#   # Numeric
#   num_val <- 42.5
  
#   # Character
#   char_val <- "Hello, R!"
  
#   # Logical
#   log_val <- TRUE
  
#   # Factor
#   fact_val <- factor(c("low", "medium", "high"))
  
#   # List (containing different types)
#   list_val <- list(num = num_val, char = char_val, log = log_val, fact = fact_val)
  
#   # Print each datatype to the screen
#   cat("Numeric value:", num_val, "\n")
#   cat("Character value:", char_val, "\n")
#   cat("Logical value:", log_val, "\n")
#   cat("Factor value:", fact_val, "\n")
#   cat("List value:\n")
#   print(list_val)
# }

# #########################
# # Function: processListWithLoop
# # Purpose: Demonstrate a loop working with an array.
# #########################
# processListWithLoop <- function() {
#   # Create an array (vector) of numeric values
#   arr <- c(10, 20, 30, 40, 50)
  
#   # Loop through the array and print each element with its square
#   for (val in arr) {
#     cat("Value:", val, "Square:", val^2, "\n")
#   }
# }

# #########################
# # Function: loadData
# # Purpose: Load and prepare the dataset.
# #########################
# loadData <- function() {
#   # For this example, we use the built-in 'mtcars' dataset.
#   data <- mtcars
  
#   # Convert 'cyl' (number of cylinders) to a factor to demonstrate datatype conversion.
#   data$cyl <- as.factor(data$cyl)
  
#   # Create a logical column: indicator if mpg is above 20.
#   data$mpg_high <- data$mpg > 20
  
#   return(data)
# }

# #########################
# # Function: fitModel
# # Purpose: Fit a simple linear regression model.
# #########################
# fitModel <- function(data) {
#   # Fit a model to predict mpg using weight (wt) and cylinders (cyl).
#   # Note: 'cyl' is a factor, so R will create dummy variables automatically.
#   model <- lm(mpg ~ wt + cyl, data = data)
#   return(model)
# }

# #########################
# # Function: printModelEquation
# # Purpose: Display the regression equation.
# #########################
# printModelEquation <- function(model) {
#   coeffs <- coef(model)
#   # Start building the equation string
#   equation <- paste0("Regression Equation: mpg = ", round(coeffs[1], 2))
#   # Loop over remaining coefficients
#   for(i in 2:length(coeffs)) {
#     term <- names(coeffs)[i]
#     eq_part <- paste0(" + ", round(coeffs[i], 2), "*", term)
#     equation <- paste0(equation, eq_part)
#   }
#   cat(equation, "\n")
# }

# #########################
# # Function: visualizeModel
# # Purpose: Create a scatter plot with the regression line.
# #########################
# visualizeModel <- function(data, model) {
#   # Create a scatter plot: mpg vs wt, colored by number of cylinders
#   p <- ggplot(data, aes(x = wt, y = mpg, color = cyl)) +
#     geom_point(size = 3) +
#     geom_smooth(method = "lm", se = FALSE, color = "black") +
#     labs(title = "Linear Regression: MPG vs Weight",
#          x = "Weight (1000 lbs)",
#          y = "Miles Per Gallon (MPG)")
#   print(p)
  
#   # Optionally, save the plot to a file
#   ggsave("../results/regression_plot.png", plot = p)
# }

# #########################
# # Main function to run the project
# #########################
# main <- function() {
#   cat("Starting Linear Regression Project in R...\n\n")
  
#   # Step 1: Demonstrate different R datatypes and a loop over an array.
#   cat("Demonstrating various R datatypes:\n")
#   demonstrateDataTypes()
#   cat("\nProcessing a list with a loop:\n")
#   processListWithLoop()
  
#   # Step 2: Load the dataset
#   data <- loadData()
#   cat("\nDataset loaded. Dimensions: ", dim(data), "\n")
  
#   # Step 3: Fit the linear regression model
#   model <- fitModel(data)
  
#   # Step 4: Display the regression equation
#   cat("\nModel Summary:\n")
#   print(summary(model))
#   cat("\nRegression Equation:\n")
#   printModelEquation(model)
  
#   # Step 5: Visualize the model results
#   cat("\nGenerating plot...\n")
#   visualizeModel(data, model)
  
#   cat("\nProject complete.\n")
# }

# # Run the main function to execute the project
# main()
