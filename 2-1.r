# Create sample data
data <- c(10, 15, 20, 25, 30, 35, 40, 45, 50, 55)

# Calculate statistical measures
mean_value <- mean(data)
median_value <- median(data)
mode_value <- as.numeric(names(which.max(table(data))))
range_value <- range(data)

# Visualize the statistical measures
par(mfrow = c(2, 2))

# Mean
plot(1, mean_value, type = "h", lwd = 10, col = "steelblue", xlab = "Mean", ylab = "")
text(1, mean_value, round(mean_value, 2), pos = 3)

# Median
plot(1, median_value, type = "h", lwd = 10, col = "steelblue", xlab = "Median", ylab = "")
text(1, median_value, round(median_value, 2), pos = 3)

# Mode
plot(1, mode_value, type = "h", lwd = 10, col = "steelblue", xlab = "Mode", ylab = "")
text(1, mode_value, round(mode_value, 2), pos = 3)

# Range
plot(1, range_value[2] - range_value[1], type = "h", lwd = 10, col = "steelblue", xlab = "Range", ylab = "")
text(1, range_value[2] - range_value[1], round(range_value[2] - range_value[1], 2), pos = 3)
