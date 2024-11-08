#Variables and Data Types
x <- 10    # Integer
y <- 5.5   # Numeric (float)
z <- "Hello"   # Character
is_true <- TRUE  # Logical (boolean)

#checking the data type
class(x)    # Returns "numeric" for 10
typeof(y)   # Returns "double" for 5.5

#dataframe
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Height = c(5.5, 6.0, 5.8)
)
data$Name       # Access the "Name" column

#built in function
mean(c(1, 2, 3, 4, 5))   # Calculates mean
sum(c(1, 2, 3))          # Calculates sum

#user define function 
add_numbers <- function(a, b) {
  return(a + b)
}
add_numbers(3, 5)    # Returns 8

#if-else statement
x <- 10
if (x > 5) {
  print("Greater than 5")
} else {
  print("5 or less")
}

#for loop 
for (i in 1:5) {
  print(i)
}

#while loop 
count <- 1
while (count <= 5) {
  print(count)
  count <- count + 1
}

#simple plot
x <- 1:10
y <- x^2
plot(x, y, main="Simple Plot", xlab="X-Axis", ylab="Y-Axis")





