## Programming Assignment 2: Lexical Scoping 
## See testCacheSolve.R for example usage.
## 

## A wrapper code for matrix. 
## This code wraps normal matrix so that its inverse can be stored.
makeCacheMatrix <- function(x = matrix()) {
        # take values and store them
        inverseOfMatrix <- NULL
        mat<- x
        
        set <- function(y) {
                # underlying matrix changed therefore remove inverse value
                mat <<- y
                inverseOfMatrix <<- NULL
        }
        get <- function() mat
        setInverse <- function(inverse) inverseOfMatrix <<- inverse
        getInverse <- function() inverseOfMatrix
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## This cache solve function expects a wrapped matrix created with makeCacheMatrix(matrix) code.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        inv <- x$getInverse();
        if(!is.null(inv)) {
          message("getting cached data");
          return(inv);
        }
        else
        {
          inv <- solve(x$get());
          x$setInverse(inv);
        }
        return(inv)

}
