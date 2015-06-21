## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    rev <- NULL
    
    getMatrix <- function() x
    setReverse <- function(reverse) rev <<- reverse
    getReverse <- function() rev
    
    list( getMatrix = getMatrix,
          setReverse = setReverse,
          getReverse = getReverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    rev <- x$getReverse()
    if(!is.null(rev)) {
        message("getting cached data")
        return(rev)
    }
    data <- x$getMatrix()
    rev <- solve(data)
    x$setReverse(rev)
    rev
}
