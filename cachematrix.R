## Alliah Jane S. Agunos
## R Programming Coursera Week 3
## Programming Assignment 2 
## Lexical Scoping

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
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        }

## Caching the Inverse of a Matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        a <- x$getinverse()
        if(!is.null(a)) {
                message("getting cached data")
                return(a)
        }
        mat <- x$get()
        a <- solve(mat, ...)
        x$setinverse(a)
        a  ## Return a matrix that is the inverse of 'x'
        }
