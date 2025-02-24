# Source the scripts to execute the Normal simulation and normality tests
source("normal.r")

# Define the parameters for simulation
n <- 5000     # Number of samples per simulation
nn <- 1000          # Number of simulations
mean_val <- 0       # Mean of the normal distribution
sd_val <- 1       # Standard deviation of the normal distribution

# Run the Normal simulation
y <- normal_sim(n, nn, mean_val, sd_val)

# Source the plotting script
source("normal_plot.r")
# Plot the data
# (Plots are saved in the Plots directory automatically)

# Source the normality test script
source("normal_test_normality.R")
# Test normality for the statistics
results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))
