# one way anova 
set.seed(42)
group <- factor(rep(c("A", "B", "C"), each=10))
score <- c(rnorm(10, mean=10, sd=2), rnorm(10, mean=15, sd=2), rnorm(10, mean=20, sd=2))
data <- data.frame(group, score)
anova_result <- aov(score ~ group, data=data)
summary(anova_result)

# two way anova 
set.seed(42)
group <- factor(rep(c("A", "B", "C"), each=20))
time <- factor(rep(c("Morning", "Evening"), each=10, times=3))
score <- c(rnorm(10, mean=10, sd=2), rnorm(10, mean=15, sd=2), rnorm(10, mean=20, sd=2),
           rnorm(10, mean=12, sd=2), rnorm(10, mean=16, sd=2), rnorm(10, mean=22, sd=2))
data <- data.frame(group, time, score)
anova_result <- aov(score ~ group * time, data=data)
summary(anova_result)