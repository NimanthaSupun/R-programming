
# todo: matrix with values from 1 to 9, filled by rows.

num <- matrix(c(1:9), nrow = 3,ncol = 3, byrow = TRUE)
num

# todo: 2x4 matrix with values from 1 to 8, filled by columns.

num1 <- matrix(c(1:8), nrow = 2, ncol = 4, byrow = TRUE)
num1

# todo: a 4x4 matrix with random numbers between 1 and 20.
num2 <- matrix(sample(1:20,16, replace = TRUE), nrow = 4, ncol = 4)
num2

# todo: sum of all elements in a 3x3 matrix with values from 1 to 9.
num3 <- sum(matrix(1:9, nrow = 3, ncol = 3))
num3

# todo: transpose of a 2x3 matrix with values from 1 to 6.
num4 <- matrix(1:6, nrow = 2, ncol = 3)
transpone_matrix = t(num4)
transpone_matrix

# todo:  Add two 2x2 matrices, where one matrix has values 1 to 4 and the other has values 4 to 1.
matrix1 <- matrix(1:4, nrow = 2, ncol = 2)
matrix2 <- matrix(4:1, nrow = 2, ncol = 2)

sum_matrix = matrix1 + matrix2
sum_matrix

# todo: 3x3 identity matrix.
identity_matrix = diag(3)
identity_matrix

# todo: Multiply each element of a 2x2 matrix with values 1 to 4 by 3.
matrix3 = matrix(c(1:4), nrow = 2, ncol = 2)
matrix3_multi = matrix3 * 3
matrix3_multi

# todo: Subtract two 2x2 matrices, one with values from 5 to 8 and the other with values from 1 to 4
matrix4_2X2_1 = matrix(c(5:8), nrow = 2, ncol = 2)
matrix4_2X2_2 = matrix(c(1:4), nrow = 2, ncol = 2)
sub_matrix4 = matrix4_2X2_1 - matrix4_2X2_2
sub_matrix4

#todo:  Check if a given 3x3 matrix is symmetric.
matrix_3x3 <- matrix(c(1, 2, 3, 2, 4, 5, 3, 5, 6), nrow = 3, ncol = 3)

is_symmetric <- all(matrix_3x3 == t(matrix_3x3))

print("Matrix:")
print(matrix_3x3)
print(paste("Is the matrix symmetric?", is_symmetric))

#todo:  Calculate the mean of each row in a 4x3 matrix with values from 1 to 12. 

matrix_4x3 <- matrix(1:12, nrow = 4, ncol = 3)

row_means <- rowMeans(matrix_4x3)

print("Matrix:")
print(matrix_4x3)
print("Mean of each row:")
print(row_means)

#todo:  Find the maximum value in each column of a 3x3 matrix with values from 1 to 9. 

matrix_3x3 <- matrix(1:9, nrow = 3, ncol = 3)

col_max <- apply(matrix_3x3, 2, max)

print("Matrix:")
print(matrix_3x3)
print("Maximum value in each column:")
print(col_max)

#todo : Replace the second row of a 3x3 matrix (with values 1 to 9) with values 10 to 12
matrix_3x3 <- matrix(1:9, nrow = 3, ncol = 3)

matrix_3x3[2, ] <- c(10, 11, 12)

print("Modified Matrix:")
print(matrix_3x3),

