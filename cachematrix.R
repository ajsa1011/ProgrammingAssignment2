## Put comments here that give an overall description of what your
## functions do

## This function contains the setinverse and getinverse

makeCacheMatrix <- function(x = matrix()) {
        a <- NULL     'assuming that the a is NULL'
        set <- function(y) {
                x <<- y
                a <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) a <<- inverse
        getinverse <- function() a
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Caching the Inverse of a Matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        a <- x$getinverse()
        if(!is.null(a)) {
                message("getting cached data")
                return(a)
        }
        data <- x$get()
        a <- solve(data, ...)
        x$setinverse(a)
        a  ## Return a matrix that is the inverse of 'x'
}
