# Source the scripts to execute the Cauchy simulation and normality tests
source("cauchy.r")

# Define the parameters for simulation
n <- 15000            # Number of samples per simulation
nn <- 1000          # Number of simulations

# Run the Cauchy simulation
y <- cauchy_sim(n, nn)

# Source the plotting script
source("cauchy_plot.r")
# Plot the data
# (Plots are saved in the Plots directory automatically)

# Source the normality test script
source("cauchy_test_normality.R")
# Test normality for the statistics
results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))
