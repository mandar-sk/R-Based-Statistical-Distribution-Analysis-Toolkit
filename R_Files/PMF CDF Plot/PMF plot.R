# Function to save a plot
save_plot <- function(filename, plot_code) {
  filepath <- file.path("D:/Distribution", filename)  # Save in D:/Distribution directory
  png(filepath, width = 800, height = 600)  # Open a PNG device
  plot_code()  # Execute the plot code
  dev.off()  # Close the device
}
# PMF Plot Function
pmf_plot <- function(x, p, s) {
  n <- length(x)
  plot(range(x), range(p), type = "n", xlab = "x", ylab = "Probability", main = s, font.main = 2, cex.main = 1.2)
  for (i in 1:n) {
    lines(c(x[i], x[i]), c(0, p[i]))
    points(x[i], p[i], pch = 20)
  }
}

# 1. Uniform(0,1) - PDF
save_plot("Uniform_0_1.png", function() {
  x <- seq(0, 1, 0.01)
  plot(x, dunif(x, min = 0, max = 1), type = "l", main = "PDF of Uniform(0,1)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 2. Binomial(12, 0.01) - PMF
save_plot("Binomial_12_0.01.png", function() {
  x <- 0:12
  pmf_plot(x, dbinom(x, size = 12, prob = 0.01), "PMF of Binomial(12, 0.01)")
})

# 3. Binomial(20, 0.5) - PMF
save_plot("Binomial_20_0.5.png", function() {
  x <- 0:20
  pmf_plot(x, dbinom(x, size = 20, prob = 0.5), "PMF of Binomial(20, 0.5)")
})

# 4. Binomial(18, 0.95) - PMF
save_plot("Binomial_18_0.95.png", function() {
  x <- 0:18
  pmf_plot(x, dbinom(x, size = 18, prob = 0.95), "PMF of Binomial(18, 0.95)")
})

# 5. Poisson(0.001) - PMF
save_plot("Poisson_0.001.png", function() {
  x <- 0:5
  pmf_plot(x, dpois(x, lambda = 0.001), "PMF of Poisson(0.001)")
})

# 6. Poisson(1) - PMF
save_plot("Poisson_1.png", function() {
  x <- 0:10
  pmf_plot(x, dpois(x, lambda = 1), "PMF of Poisson(1)")
})

# 7. Poisson(25) - PMF
save_plot("Poisson_25.png", function() {
  x <- 10:40
  pmf_plot(x, dpois(x, lambda = 25), "PMF of Poisson(25)")
})

# 8. Exponential(0.001) - PDF
save_plot("Exponential_0.001.png", function() {
  x <- seq(0, 0.01, 0.0001)
  plot(x, dexp(x, rate = 1 / 0.001), type = "l", main = "PDF of Exponential(0.001)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 9. Exponential(1) - PDF
save_plot("Exponential_1.png", function() {
  x <- seq(0, 5, 0.01)
  plot(x, dexp(x, rate = 1), type = "l", main = "PDF of Exponential(1)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 10. Exponential(25) - PDF
save_plot("Exponential_25.png", function() {
  x <- seq(0, 1, 0.01)
  plot(x, dexp(x, rate = 1 / 25), type = "l", main = "PDF of Exponential(25)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 11. Gamma(0.001, 1) - PDF
save_plot("Gamma_0.001_1.png", function() {
  x <- seq(0, 0.01, 0.0001)
  plot(x, dgamma(x, shape = 0.001, rate = 1), type = "l", main = "PDF of Gamma(0.001, 1)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 12. Gamma(2, 1) - PDF
save_plot("Gamma_2_1.png", function() {
  x <- seq(0, 10, 0.1)
  plot(x, dgamma(x, shape = 2, rate = 1), type = "l", main = "PDF of Gamma(2, 1)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 13. Gamma(30, 1) - PDF
save_plot("Gamma_30_1.png", function() {
  x <- seq(0, 100, 1)
  plot(x, dgamma(x, shape = 30, rate = 1), type = "l", main = "PDF of Gamma(30, 1)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 14. Beta(2, 2) - PDF
save_plot("Beta_2_2.png", function() {
  x <- seq(0, 1, 0.01)
  plot(x, dbeta(x, 2, 2), type = "l", main = "PDF of Beta(2, 2)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 15. Beta(20, 2) - PDF
save_plot("Beta_20_2.png", function() {
  x <- seq(0, 1, 0.01)
  plot(x, dbeta(x, 20, 2), type = "l", main = "PDF of Beta(20, 2)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 16. Beta(2, 8) - PDF
save_plot("Beta_2_8.png", function() {
  x <- seq(0, 1, 0.01)
  plot(x, dbeta(x, 2, 8), type = "l", main = "PDF of Beta(2, 8)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 17. Beta(0.5, 0.5) - PDF
save_plot("Beta_0.5_0.5.png", function() {
  x <- seq(0, 1, 0.01)
  plot(x, dbeta(x, 0.5, 0.5), type = "l", main = "PDF of Beta(0.5, 0.5)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 18. Beta(0.5, 0.2) - PDF
save_plot("Beta_0.5_0.2.png", function() {
  x <- seq(0, 1, 0.01)
  plot(x, dbeta(x, 0.5, 0.2), type = "l", main = "PDF of Beta(0.5, 0.2)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 19. Beta(0.2, 5) - PDF
save_plot("Beta_0.2_5.png", function() {
  x <- seq(0, 1, 0.01)
  plot(x, dbeta(x, 0.2, 5), type = "l", main = "PDF of Beta(0.2, 5)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 20. Cauchy(0, 1) - PDF
save_plot("Cauchy_0_1.png", function() {
  x <- seq(-10, 10, 0.01)
  plot(x, dcauchy(x, 0, 1), type = "l", main = "PDF of Cauchy(0, 1)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})

# 21. Normal(0, 1) - PDF
save_plot("Normal_0_1.png", function() {
  x <- seq(-5, 5, 0.01)
  plot(x, dnorm(x, 0, 1), type = "l", main = "PDF of Normal(0, 1)", xlab = "x", ylab = "Density", col = "blue", font.main = 2, cex.main = 1.2)
})
