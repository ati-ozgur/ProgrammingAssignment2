# testCacheSolve.R

source("cachematrix.R")

mat1 <- makeCacheMatrix(matrix(c(1,0,0,1), 2))

mat1Inverse <- cacheSolve(mat1)

print(mat1Inverse)

mat1Inverse <- cacheSolve(mat1)

print(mat1Inverse)


mat2=makeCacheMatrix(rbind(c(1, -1/4), c(-1/4, 1)))

mat2Inverse =  cacheSolve(mat2)

print(mat2Inverse)

mat1Inverse <- cacheSolve(mat2)

print(mat2Inverse)



