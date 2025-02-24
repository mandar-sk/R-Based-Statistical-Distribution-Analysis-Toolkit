# CDF Plot Function
cdfplot <- function(x, f, s, file_name) {
  # Define the file path
  file_path <- paste0("D:/Distribution/", file_name, ".png")
  
  # Create the plot and save it
  png(file_path, width = 800, height = 600)
  n <- length(x)
  plot(range(x) + c(-1, 1), c(0, 1.05), type = "n", xlab = "x", 
       ylab = "c.d.f.", main = s, font.main = 2, cex.main = 1.2)  # Bold and formatted title
  arrows(x[1], 0, x[1] - 1, 0, length = 0.1)
  points(x[1], 0, pch = "(")
  for (i in 1:(n - 1)) {
    lines(c(x[i], x[i + 1]), c(f[i], f[i]))
    points(x[i], f[i], pch = 20)
    points(x[i + 1], f[i], pch = "(")
  }
  arrows(x[n], 1, x[n] + 1, 1, length = 0.1)
  points(x[n], 1, pch = 20)
  dev.off()
}

# Check if "D:/Distribution" exists; if not, create it
if (!dir.exists("D:/Distribution")) {
  dir.create("D:/Distribution")
}

# CDF Plots for All Distributions
# Uniform(0,1)
x <- seq(0, 1, 0.01)
f <- punif(x, 0, 1)
cdfplot(x, f, "CDF of Uniform(0,1)", "CDF_Uniform_0_1")

# Binomial Distributions
x <- 0:12
f <- pbinom(x, 12, 0.01)
cdfplot(x, f, "CDF of Binomial(12,0.01)", "CDF_Binomial_12_0.01")

x <- 0:20
f <- pbinom(x, 20, 0.5)
cdfplot(x, f, "CDF of Binomial(20,0.5)", "CDF_Binomial_20_0.5")

x <- 0:18
f <- pbinom(x, 18, 0.95)
cdfplot(x, f, "CDF of Binomial(18,0.95)", "CDF_Binomial_18_0.95")

# Poisson Distributions
x <- 0:10
f <- ppois(x, 0.001)
cdfplot(x, f, "CDF of Poisson(0.001)", "CDF_Poisson_0.001")

x <- 0:10
f <- ppois(x, 1)
cdfplot(x, f, "CDF of Poisson(1)", "CDF_Poisson_1")

x <- 0:50
f <- ppois(x, 25)
cdfplot(x, f, "CDF of Poisson(25)", "CDF_Poisson_25")

# Exponential Distributions
x <- seq(0, 100, 0.1)
f <- pexp(x, rate = 1 / 0.001)
cdfplot(x, f, "CDF of Exponential(0.001)", "CDF_Exponential_0.001")

x <- seq(0, 10, 0.1)
f <- pexp(x, rate = 1 / 1)
cdfplot(x, f, "CDF of Exponential(1)", "CDF_Exponential_1")

x <- seq(0, 100, 0.1)
f <- pexp(x, rate = 1 / 25)
cdfplot(x, f, "CDF of Exponential(25)", "CDF_Exponential_25")

# Gamma Distributions
x <- seq(0, 10, 0.01)
f <- pgamma(x, shape = 0.001, rate = 1)
cdfplot(x, f, "CDF of Gamma(0.001,1)", "CDF_Gamma_0.001_1")

x <- seq(0, 10, 0.01)
f <- pgamma(x, shape = 2, rate = 1)
cdfplot(x, f, "CDF of Gamma(2,1)", "CDF_Gamma_2_1")

x <- seq(0, 100, 0.1)
f <- pgamma(x, shape = 30, rate = 1)
cdfplot(x, f, "CDF of Gamma(30,1)", "CDF_Gamma_30_1")

# Beta Distributions
x <- seq(0, 1, 0.01)
f <- pbeta(x, 2, 2)
cdfplot(x, f, "CDF of Beta(2,2)", "CDF_Beta_2_2")

f <- pbeta(x, 20, 2)
cdfplot(x, f, "CDF of Beta(20,2)", "CDF_Beta_20_2")

f <- pbeta(x, 2, 8)
cdfplot(x, f, "CDF of Beta(2,8)", "CDF_Beta_2_8")

f <- pbeta(x, 0.5, 0.5)
cdfplot(x, f, "CDF of Beta(0.5,0.5)", "CDF_Beta_0.5_0.5")

f <- pbeta(x, 0.5, 0.2)
cdfplot(x, f, "CDF of Beta(0.5,0.2)", "CDF_Beta_0.5_0.2")

f <- pbeta(x, 0.2, 5)
cdfplot(x, f, "CDF of Beta(0.2,5)", "CDF_Beta_0.2_5")

# Cauchy Distribution
x <- seq(-10, 10, 0.1)
f <- pcauchy(x, location = 0, scale = 1)
cdfplot(x, f, "CDF of Cauchy(0,1)", "CDF_Cauchy_0_1")

# Normal Distribution
x <- seq(-4, 4, 0.1)
f <- pnorm(x, mean = 0, sd = 1)
cdfplot(x, f, "CDF of Normal(0,1)", "CDF_Normal_0_1")
