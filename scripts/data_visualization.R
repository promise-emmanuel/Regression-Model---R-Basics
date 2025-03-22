# data_visualization.R

library(ggplot2)

visualizeModel <- function(data, model) {
  p <- ggplot(data, aes(x = wt, y = mpg, color = cyl)) +
    geom_point(size = 3) +
    geom_smooth(method = "lm", se = FALSE, color = "black") +
    labs(title = "Linear Regression: MPG vs Weight",
         x = "Weight (1000 lbs)",
         y = "Miles per Gallon (MPG)")
  print(p)
  
  # Optionally save the plot to the results folder
  # ggsave("../results/regression_plot.png", plot = p)
}
