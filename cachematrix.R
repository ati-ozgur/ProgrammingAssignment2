## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverseOfMatrix <- NULL
        set <- function(y) {
                x <<- y
                inverseOfMatrix <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inverseOfMatrix <<- inverse
        getInverse <- function() inverseOfMatrix
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        inv <- x$getInverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        inv <- solve(x)
        x$setInverse(inv)
        inv

}
