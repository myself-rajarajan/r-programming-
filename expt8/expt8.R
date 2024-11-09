# one sample t-test
exam_scores <- c(78, 74, 82, 88, 69, 73, 77, 91, 76, 81, 72, 68, 85, 79, 80, 87, 90, 76, 74, 83, 78, 72, 75, 88, 84)
t_test_result <- t.test(exam_scores, mu = 75)
print(t_test_result)

#two sample t-test
# Sample data for two classes with more values
class_A <- c(78, 74, 82, 88, 69, 73, 77, 91, 76, 81, 72, 68, 85, 79, 80, 87, 90, 76, 74, 83)
class_B <- c(72, 70, 77, 75, 68, 74, 79, 82, 71, 69, 73, 85, 80, 78, 84, 88, 73, 75, 79, 81)
t_test_result <- t.test(class_A, class_B, var.equal = TRUE)
print(t_test_result)
