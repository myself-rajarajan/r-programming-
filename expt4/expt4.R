#install.packages("ggplot2")
#install.packages("plotly")

# Load necessary libraries
library(ggplot2)
library(plotly)

# Create sample data
set.seed(123)  # For reproducibility
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100),
  category = sample(letters[1:4], 100, replace = TRUE)
)

# 1. Basic Plots with Base R

# Scatter Plot
plot(data$x, data$y, main = "Scatter Plot", xlab = "X-axis", ylab = "Y-axis", col = "blue", pch = 19)

# Line Plot
plot(data$x, data$y, type = "l", main = "Line Plot", xlab = "X-axis", ylab = "Y-axis", col = "red")

# Bar Plot - Using counts of 'category'
barplot(table(data$category), main = "Bar Plot", xlab = "Categories", ylab = "Frequency", col = "skyblue")

# Histogram
hist(data$x, main = "Histogram", xlab = "Values", col = "purple", breaks = 10)

# Box Plot
boxplot(y ~ category, data = data, main = "Box Plot", xlab = "Categories", ylab = "Y-values", col = "orange")

# 2. Advanced Plots with ggplot2

# Scatter Plot
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue") +
  labs(title = "Scatter Plot", x = "X-axis", y = "Y-axis")

# Line Plot
ggplot(data, aes(x = x, y = y)) +
  geom_line(color = "red") +
  labs(title = "Line Plot", x = "X-axis", y = "Y-axis")

# Bar Plot
ggplot(data, aes(x = category)) +
  geom_bar(fill = "skyblue") +
  labs(title = "Bar Plot", x = "Categories", y = "Count")

# Histogram
ggplot(data, aes(x = x)) +
  geom_histogram(bins = 10, fill = "purple", color = "black") +
  labs(title = "Histogram", x = "Values", y = "Frequency")

# Box Plot
ggplot(data, aes(x = category, y = y)) +
  geom_boxplot(fill = "orange") +
  labs(title = "Box Plot", x = "Categories", y = "Values")

# 3. Interactive Plots with plotly

# Interactive Scatter Plot
p <- ggplot(data, aes(x = x, y = y)) + geom_point(color = "blue")
ggplotly(p)

# Interactive Line Plot
p <- ggplot(data, aes(x = x, y = y)) + geom_line(color = "red")
ggplotly(p)

# Interactive Bar Plot
p <- ggplot(data, aes(x = category)) + geom_bar(fill = "skyblue")
ggplotly(p)

# 4. Multi-Panel Plots

# Using par in Base R
par(mfrow = c(2, 2))  # 2x2 layout
plot(data$x, data$y, main = "Scatter Plot")
hist(data$x, main = "Histogram")
plot(data$x, data$y, type = "l", main = "Line Plot")
boxplot(y ~ category, data = data, main = "Box Plot")

# Reset layout
par(mfrow = c(1, 1))

# Using facet_wrap in ggplot2
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  facet_wrap(~ category) +
  labs(title = "Scatter Plot with Facets by Category")

# 5. Customizing a ggplot

# Custom Scatter Plot with theme
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Custom Scatter Plot", x = "X-axis", y = "Y-axis") +
  theme_minimal()