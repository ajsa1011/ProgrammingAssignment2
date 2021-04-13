## Put comments here that give an overall description of what your
## functions do

## This function contains the setinverse and getinverse

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL     'assuming that the inverse is NULL'
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inverse <<- inverse
        getinverse <- function() inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Caching the Inverse of a Matrix

cacheSolve <- function(x, ...) {
        
        inverse <- x$getinverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- x$get()
        inverse <- inverse(data, ...)
        x$setinverse(inverse)
        inverse  ## Return a matrix that is the inverse of 'x'
}
