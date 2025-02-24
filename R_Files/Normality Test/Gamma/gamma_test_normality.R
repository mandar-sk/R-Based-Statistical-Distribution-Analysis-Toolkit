if (!require("nortest")) {
  install.packages("nortest")
}
library(nortest)

# Function to test normality
test_normality <- function(stats_list, p_value_threshold = 0.05) {
  results <- list()
  
  for (stat_name in names(stats_list)) {
    stat_values <- stats_list[[stat_name]]
    
    # Perform Shapiro-Wilk Test
    shapiro_result <- shapiro.test(stat_values)
    shapiro_normal <- shapiro_result$p.value > p_value_threshold
    
    # Perform D’Agostino-Pearson Test
    dagostino_result <- ad.test(stat_values)
    dagostino_normal <- dagostino_result$p.value > p_value_threshold
    
    # Append results
    results[[stat_name]] <- list(
      Shapiro_Wilk = list(
        p_value = shapiro_result$p.value,
        normal = ifelse(shapiro_normal, "Yes", "No")
      ),
      DAgostino_Pearson = list(
        p_value = dagostino_result$p.value,
        normal = ifelse(dagostino_normal, "Yes", "No")
      )
    )
  }
  
  # Print a formatted summary
  cat("### Normality Test Results ###\n")
  for (stat_name in names(results)) {
    cat("\nStatistic:", stat_name, "\n")
    cat("  - Shapiro-Wilk Test: p-value =", results[[stat_name]]$Shapiro_Wilk$p_value, 
        "=> Normal:", results[[stat_name]]$Shapiro_Wilk$normal, "\n")
    cat("  - D’Agostino-Pearson Test: p-value =", results[[stat_name]]$DAgostino_Pearson$p_value, 
        "=> Normal:", results[[stat_name]]$DAgostino_Pearson$normal, "\n")
  }
  
  return(results)
}

# Call the function with the statistics list (mn, mdn, sdn, minm, maxm, iqr)
test_results <- test_normality(list(
  mean = y$mean,
  median = y$median,
  sd = y$sd,
  minm = y$minm,
  maxm = y$maxm,
  iqr = y$iqr
))

# Save the results as a .txt file
write.table(test_results, file = "Normality_Test_Results.txt", sep = "\t", row.names = TRUE)
