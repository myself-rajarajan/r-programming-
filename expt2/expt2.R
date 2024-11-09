#Vectors using c() function 
# Numeric vector
num_vector <- c(1, 2, 3, 4, 5)
# Character vector
char_vector <- c("apple", "banana", "cherry")
# Logical vector
log_vector <- c(TRUE, FALSE, TRUE)

#Vectors using seq() and rep() functions
# Sequence of numbers from 1 to 10
seq_vector <- seq(1, 10)
print(seq_vector)
# Repeat a value or vector
rep_vector <- rep(1, times = 5)      # Repeats the number 1 five times
rep_vector2 <- rep(c(1, 2), each = 3) # Repeats each element 3 times

#using matrix() function
# Creating a 3x3 matrix
mat <- matrix(1:9, nrow = 3, ncol = 3)
print(mat)
# By default, fills matrix column-wise. Use byrow=TRUE to fill row-wise.
mat_byrow <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
print(mat_byrow)

#Using cbind() and rbind() functions
# Combine vectors as columns
mat_cbind <- cbind(c(1, 2, 3), c(4, 5, 6))
print(mat_cbind)
# Combine vectors as rows
mat_rbind <- rbind(c(1, 2, 3), c(4, 5, 6))
print(mat_rbind)



