# Create a sample data frame
df <- data.frame(
  Name = c("John", "Jane", "Bob", "Alice"),
  Age = c(35, 28, 42, 31),
  City = c("New York", "London", "Paris", "Tokyo")
)

# Save the data frame to a file
write.csv(df, "data_frame.csv", row.names = FALSE)

# Read the data frame from the file
df_from_file <- read.csv("data_frame.csv")

# Display the information from the file
print(df_from_file)
