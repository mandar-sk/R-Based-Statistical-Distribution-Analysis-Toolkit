# Source the scripts to execute the Binomial simulation and normality tests
source("binomial.r")

# Define the parameters for simulation
n <- 100          # Number of trials per simulation
nn <- 1000        # Number of simulations
m <- 20           # Number of Bernoulli trials in each binomial experiment
p <- 0.5          # Probability of success in each trial

# Run the Binomial simulation
y <- binomial_sim(n, nn, m, p)

# Source the plotting script
source("binomial_plot.r")
# Plot the data
# (Plots are saved in the Plots directory automatically)

# Source the normality test script
source("binomial_test_normality.R")
# Test normality for the statistics
results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))
