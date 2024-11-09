#Normal Distribution 
dnorm(1, mean = 0, sd = 1)            # Density of normal distribution at x = 1, mean = 0, sd = 1
pnorm(1, mean = 0, sd = 1)            # Cumulative probability at x = 1 for a standard normal distribution
qnorm(0.95, mean = 0, sd = 1)         # Quantile for p = 0.95
rnorm(10, mean = 0, sd = 1)           # Generating 10 random values from a normal distribution

#Binomial Distribution
dbinom(3, size = 10, prob = 0.5)       # Probability of exactly 3 successes in 10 trials with p(success) = 0.5
pbinom(3, size = 10, prob = 0.5)       # Cumulative probability of ??? 3 successes
qbinom(0.95, size = 10, prob = 0.5)    # Quantile for p = 0.95
rbinom(10, size = 10, prob = 0.5)      # Generating 10 random values from a binomial distribution

#Poisson Distribution
dpois(2, lambda = 3)                # Probability of exactly 2 events occurring when lambda = 3
ppois(2, lambda = 3)                # Cumulative probability of ??? 2 events occurring
qpois(0.95, lambda = 3)             # Quantile for p = 0.95
rpois(10, lambda = 3)               # Generating 10 random values from a Poisson distribution