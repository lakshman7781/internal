# Create a data frame with 10 observations and 3 variables
df <- data.frame(
  Name = c("John", "Jane", "Bob", "Alice", "Tom", "Lily", "Mike", "Emma", "David", "Sarah"),
  Age = c(35, 28, 42, 31, 27, 39, 45, 33, 29, 24),
  City = c("New York", "London", "Paris", "Tokyo", "Sydney", "Berlin", "Moscow", "Madrid", "Toronto", "Seoul")
)

# Print the original data frame
print(df)

# Add a new row to the data frame
new_row <- data.frame(
  Name = "Alex",
  Age = 38,
  City = "Chicago"
)
df_with_new_row <- rbind(df, new_row)
print(df_with_new_row)

# Add a new column to the data frame
new_column <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
df_with_new_column <- cbind(df, ID = new_column)
print(df_with_new_column)
