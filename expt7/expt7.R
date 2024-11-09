#Fit a simple regression equation for a sample data and visualize using scatterplot
# Sample data
set.seed(123)
x <- 1:100
y <- 3 * x + rnorm(100, mean = 0, sd = 20)                                      # generate y with some noise
model <- lm(y ~ x)                                                              # Fit a simple linear regression model
summary(model)                                                                  # Summary of the model
plot(x, y, main = "Scatterplot with Regression Line",                           # Plot the data and the regression line
     xlab = "Independent Variable (x)", ylab = "Dependent Variable (y)",
     pch = 19, col = "blue")
abline(model, col = "red", lwd = 2)                                             # Add the regression line
