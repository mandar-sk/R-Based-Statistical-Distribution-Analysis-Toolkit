# Source the scripts to execute the Beta simulation and normality tests
source("beta.r")

# Define the parameters for simulation
n <- 100            # Number of samples per simulation
nn <- 1000          # Number of simulations
alpha <- 2          # First shape parameter for the Beta distribution
beta <- 3           # Second shape parameter for the Beta distribution

# Run the Beta simulation
y <- beta_sim(n, nn, alpha, beta)

# Source the plotting script
source("beta_plot.r")
# Plot the data
# (Plots are saved in the Plots directory automatically)

# Source the normality test script
source("beta_test_normality.R")
# Test normality for the statistics
results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))
