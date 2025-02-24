poisson_sim <- function(n, nn, lambda) {
  mn <- numeric(nn)   # Pre-allocate space for mean
  mdn <- numeric(nn)  # Pre-allocate space for median
  sdn <- numeric(nn)  # Pre-allocate space for standard deviation
  minm <- numeric(nn) # Pre-allocate space for min value
  maxm <- numeric(nn) # Pre-allocate space for max value
  iqr <- numeric(nn)  # Pre-allocate space for IQR
  
  for (i in 1:nn) {
    x <- rpois(n, lambda)  # Generate n samples from Poisson(lambda)
    mn[i] <- mean(x)       # Sample mean
    mdn[i] <- median(x)    # Sample median
    sdn[i] <- sd(x)        # Sample standard deviation
    minm[i] <- min(x)      # Minimum value
    maxm[i] <- max(x)      # Maximum value
    iqr[i] <- IQR(x)       # Interquartile range
  }
  
  # Return all the statistics as a list
  return(list(mean = mn, median = mdn, sd = sdn, minm = minm, maxm = maxm, iqr = iqr))
}
