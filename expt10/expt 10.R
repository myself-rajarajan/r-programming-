par(mfrow=c(3,3))

plot(1, 3, main="Single Point (1,3)")

plot(c(1, 8), c(3, 10), main="Two Points (1,3) and (8,10)")

plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12), main="Multiple Points")

x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)
plot(x, y, main="Using Variables for Points")

plot(1:10, main="Sequence of Points (1:10)")

plot(1:10, type="l", main="Line Graph (1:10)", col="purple")

plot(1:10, type="l", main="Line Graph with Labels", xlab="X-axis", ylab="Y-axis", col="green", lwd=2)

plot(1:10, type="l", main="Styled Line", col="orange", lwd=3, lty=3)

line1 <- c(1, 2, 3, 4, 5, 10)
line2 <- c(2, 5, 7, 8, 9, 10)
plot(line1, type="l", col="blue", main="Multiple Lines")
lines(line2, type="l", col="red")
