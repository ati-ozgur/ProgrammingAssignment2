# testCacheSolve.R

source("cachematrix.R")

mat1 <- makeCacheMatrix(matrix(c(1,0,0,1), 2))

mat1Inverse <- cacheSolve(mat1)

print(mat1Inverse)

mat1Inverse <- cacheSolve(mat1)

print(mat1Inverse)
