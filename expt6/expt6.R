#Draw a histogram for grouped and ungrouped frequency
#Ungrouped Frequency
ungrouped_data <- c(5, 7, 7, 8, 9, 10, 10, 10, 11, 13, 13, 15)                                                                                       # Sample ungrouped data
hist(ungrouped_data, main = "Histogram for Ungrouped Frequency", xlab = "Data values", ylab = "Frequency", col = "skyblue", border = "white")        # Plot histogram

#Grouped Frequency 
# Load the ggplot2 package
library(ggplot2)
# Sample grouped frequency data
# Grouped data example with intervals and frequencies
grouped_data <- data.frame(
  interval = c("5-7", "8-10", "11-13", "14-16"),
  frequency = c(3, 5, 4, 2)
)
# Plot histogram
ggplot(grouped_data, aes(x = interval, y = frequency)) +
  geom_bar(stat = "identity", fill = "lightblue", color = "black") +
  labs(title = "Histogram for Grouped Frequency",
       x = "Intervals",
       y = "Frequency") +
  theme_minimal()