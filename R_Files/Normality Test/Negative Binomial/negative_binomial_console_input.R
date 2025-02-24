# Source the scripts to execute the Negative Binomial simulation and normality tests
source("negative_binomial.r")

# Define the parameters for simulation
n <- 100             # Number of samples per simulation
nn <- 1000           # Number of simulations
size_val <- 10       # Size parameter (number of successes)
prob_val <- 0.5      # Probability of success

# Run the Negative Binomial simulation
y <- negative_binomial_sim(n, nn, size_val, prob_val)

# Source the plotting script
source("negative_binomial_plot.r")
# Plot the data
# (Plots are saved in the Plots directory automatically)

# Source the normality test script
source("negative_binomial_test_normality.R")
# Test normality for the statistics
results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))
