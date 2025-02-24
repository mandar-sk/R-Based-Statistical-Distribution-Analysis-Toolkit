# Check if the "Plots" directory exists; if not, create it
if (!dir.exists("Plots")) {
  dir.create("Plots")
}

# Open a single PNG device for saving all plots
png(filename = "Plots/combined_plots.png", width = 1800, height = 2400, res = 300)

# Set up the layout to create a 6x3 grid for 18 plots (6 statistics x 3 plots each)
par(mfrow = c(6, 3), mar = c(4, 4, 2, 1))  # Adjust margins for clarity

# Add plots for Mean
hist(y$mean, main = "Histogram of Mean", font.main = 1, col = "lightblue")
boxplot(y$mean, main = "Boxplot of Mean", font.main = 1, col = "lightgreen")
qqnorm(y$mean, main = "NPP of Mean", font.main = 1)
qqline(y$mean, col = "red")

# Add plots for Median
hist(y$median, main = "Histogram of Median", font.main = 1, col = "lightblue")
boxplot(y$median, main = "Boxplot of Median", font.main = 1, col = "lightgreen")
qqnorm(y$median, main = "NPP of Median", font.main = 1)
qqline(y$median, col = "red")

# Add plots for Standard Deviation
hist(y$sd, main = "Histogram of SD", font.main = 1, col = "lightblue")
boxplot(y$sd, main = "Boxplot of SD", font.main = 1, col = "lightgreen")
qqnorm(y$sd, main = "NPP of SD", font.main = 1)
qqline(y$sd, col = "red")

# Add plots for Minimum
hist(y$minm, main = "Histogram of Minimum", font.main = 1, col = "lightblue")
boxplot(y$minm, main = "Boxplot of Minimum", font.main = 1, col = "lightgreen")
qqnorm(y$minm, main = "NPP of Minimum", font.main = 1)
qqline(y$minm, col = "red")

# Add plots for Maximum
hist(y$maxm, main = "Histogram of Maximum", font.main = 1, col = "lightblue")
boxplot(y$maxm, main = "Boxplot of Maximum", font.main = 1, col = "lightgreen")
qqnorm(y$maxm, main = "NPP of Maximum", font.main = 1)
qqline(y$maxm, col = "red")

# Add plots for IQR
hist(y$iqr, main = "Histogram of IQR", font.main = 1, col = "lightblue")
boxplot(y$iqr, main = "Boxplot of IQR", font.main = 1, col = "lightgreen")
qqnorm(y$iqr, main = "NPP of IQR", font.main = 1)
qqline(y$iqr, col = "red")

# Close the PNG device
dev.off()

# Reset plotting parameters
par(mfrow = c(1, 1))
