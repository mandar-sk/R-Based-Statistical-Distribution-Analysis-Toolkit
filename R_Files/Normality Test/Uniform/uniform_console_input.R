# Source the scripts to execute the Uniform simulation and normality tests
source("uniform.r")

# Define the parameters for simulation
n <- 5000
nn <- 1000 # FIXED
a <- 0     # Lower bound of the uniform distribution
b <- 1    # Upper bound of the uniform distribution

# Run the Uniform simulation
y <- uniform_sim(n, nn, a, b)

# Source the plotting script
source("uniform_plot.r")
# Plot the data
# (Plots are saved in the Plots directory automatically)

# Source the normality test script
source("uniform_test_normality.R")
# Test normality for the statistics
results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))
