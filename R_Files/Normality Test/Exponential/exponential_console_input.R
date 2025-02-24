# Source the scripts to execute the Exponential simulation and normality tests
source("exponential.r")

# Define the parameters for simulation
n <- 50000
nn <- 1000 # FIXED
lambda <- 1 # Exponential distribution rate parameter

# Run the Exponential simulation
y <- exponential_sim(n, nn, lambda)

# Source the plotting script
source("exponential_plot.r")
# Plot the data
# (Plots are saved in the Plots directory automatically)

# Source the normality test script
source("exponential_test_normality.R")
# Test normality for the statistics
results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))
