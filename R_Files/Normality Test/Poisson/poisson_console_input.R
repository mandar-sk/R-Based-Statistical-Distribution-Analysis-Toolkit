# Source the scripts to execute the Poisson simulation and normality tests
source("poisson.r")

# Define the parameters for simulation
n <- 100
nn <- 1000 # FIXED
lambda <- 10 # Poisson distribution rate parameter

# Run the Poisson simulation
y <- poisson_sim(n, nn, lambda)

# Source the plotting script
source("poisson_plot.r")
# Plot the data
# (Plots are saved in the Plots directory automatically)

# Source the normality test script
source("poisson_test_normality.R")
# Test normality for the statistics
results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))
