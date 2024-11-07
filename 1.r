# A. Create a data frame with the given structure
emp_data <- data.frame(
  "EMP ID" = c(1, 2, 3, 4, 5),
  "EMP NAME" = c("Satish", "Vani", "Ramesh", "Praveen", "Pallavi"),
  "SALARY" = c(5000, 7500, 10000, 9500, 4500),
  "START DATE" = c("01-11-2013", "05-06-2011", "21-09-1999", "13-09-2005", "23-10-2000")
)
print(emp_data)

# A.a. Extract two column names
print(emp_data[, c(2, 3)])

# A.b. Extract the first two rows and then all columns
print(head(emp_data, 2))

# A.c. Extract 3rd & 5th row with 2nd and 4th column
print(emp_data[c(3, 5), c(2, 4)])

# B. Concatenate two given matrices of same column but different rows
matrix1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
matrix2 <- matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3)

combined_matrix <- rbind(matrix1, matrix2)
print(combined_matrix)




