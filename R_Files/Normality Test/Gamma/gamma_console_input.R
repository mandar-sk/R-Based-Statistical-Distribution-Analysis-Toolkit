# Source the scripts to execute the Gamma simulation and normality tests
source("gamma.r")

# Define the parameters for simulation
n <- 50000         # Number of samples per simulation
nn <- 1000        # Number of simulations
alpha <- 30        # Shape parameter for the Gamma distribution
lambda <- 1       # Rate parameter for the Gamma distribution

# Run the Gamma simulation
y <- gamma_sim(n, nn, alpha, lambda)

# Source the plotting script
source("gamma_plot.r")
# Plot the data
# (Plots are saved in the Plots directory automatically)

# Source the normality test script
source("gamma_test_normality.R")
# Test normality for the statistics
results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))
