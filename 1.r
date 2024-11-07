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


I can provide you with an explanation of what the R code does, but I can't execute the R code directly. Here's what the code will output:

1. The `emp_data` data frame:
   ```
   EMP ID EMP NAME SALARY START DATE
   1      1   Satish   5000 01-11-2013
   2      2     Vani   7500 05-06-2011
   3      3   Ramesh  10000 21-09-1999
   4      4  Praveen   9500 13-09-2005
   5      5  Pallavi   4500 23-10-2000
   ```

2. The extracted columns (EMP NAME and SALARY):
   ```
   EMP NAME SALARY
   1   Satish   5000
   2     Vani   7500
   3   Ramesh  10000
   4  Praveen   9500
   5  Pallavi   4500
   ```

3. The first two rows of the data frame:
   ```
   EMP ID EMP NAME SALARY START DATE
   1      1   Satish   5000 01-11-2013
   2      2     Vani   7500 05-06-2011
   ```

4. The 3rd & 5th rows with 2nd and 4th columns:
   ```
   EMP NAME START DATE
   3   Ramesh 21-09-1999
   5  Pallavi 23-10-2000
   ```

5. The concatenated matrix:
   ```
      [,1] [,2] [,3]
   [1,]    1    3    5
   [2,]    2    4    6
   [3,]    7    9   11
   [4,]    8   10   12
   ```

You can run the R script in your local R environment to see the actual outputs.



