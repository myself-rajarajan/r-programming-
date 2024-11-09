# Load the data
my_data <- read.csv("C:/Users/rajar/OneDrive/Desktop/mtcars.csv")
print("Dataset loaded:")

# To view the dataset
print("First six rows of my_data:")
print(head(my_data))     # Show the first six rows

print("Summary statistics of my_data:")
print(summary(my_data))   # Summary statistics of each column

# Accessing Columns and Rows
print("Access 'mpg' column:")
print(my_data$mpg)        # Access 'mpg' column

print("Access first row:")
print(my_data[1, ])       # Access first row

print("Access 'mpg' column for the first 5 rows:")
print(my_data[1:5, "mpg"]) # Access 'mpg' column for the first 5 rows

# Filtering and Subsetting Data
print("Filter rows with mpg > 20:")
subset_data1 <- my_data[my_data$mpg > 20, ]  # Filter rows with mpg > 20
print(subset_data1)

print("Filter rows with mpg > 20 and cyl == 4:")
subset_data2 <- subset(my_data, mpg > 20 & cyl == 4)  # Multiple conditions
print(subset_data2)

# Adding and Removing Columns
print("Adding a new column 'new_col' which is mpg * 2:")
my_data$new_col <- my_data$mpg * 2  # Create a new column 'new_col'
print(head(my_data))  # Display the first few rows to confirm new column

print("Removing the 'new_col' column:")
my_data$new_col <- NULL  # Remove the 'new_col' column
print(head(my_data))  # Display the first few rows to confirm removal

# Sorting Data
print("Sort data by mpg in ascending order:")
my_data_sorted <- my_data[order(my_data$mpg), ]  # Sort by 'mpg'
print(head(my_data_sorted))

# Exporting the data to newmydata.csv
write.csv(my_data, "C:/Users/rajar/OneDrive/Desktop/newmydata.csv")
print("Data exported to 'newmydata.csv'")