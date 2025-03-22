# regression_model.R

fitModel <- function(data) {
  # Fit a model to predict mpg using weight (wt) and cylinders (cyl)
  model <- lm(mpg ~ wt + cyl, data = data)
  return(model)
}

printModelEquation <- function(model) {
  coeffs <- coef(model)
  equation <- paste0("Regression Equation: mpg = ", round(coeffs[1], 2))
  for(i in 2:length(coeffs)) {
    term <- names(coeffs)[i]
    equation <- paste0(equation, " + ", round(coeffs[i], 2), "*", term)
  }
  cat(equation, "\n")
}
