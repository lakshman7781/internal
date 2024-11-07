# Create two sample vectors
vec1 <- c(1, 2, 3, 4, 5, 3, 7, 8, 9, 10)
vec2 <- c("A", "B", "C", "D", "E", "C", "G", "H", "I", "J")

# Create a data frame using the two vectors
df <- data.frame(
  Value = vec1,
  Letter = vec2
)

# Display the data frame
print(df)

# Find the duplicated elements
duplicated_elements <- df[duplicated(df), ]
print("Duplicated elements:")
print(duplicated_elements)

# Find the unique rows
unique_rows <- df[!duplicated(df), ]
print("Unique rows:")
print(unique_rows)
