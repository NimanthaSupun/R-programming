
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
