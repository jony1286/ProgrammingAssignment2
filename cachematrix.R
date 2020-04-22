## This function creates environment for special matrix
## it sets & gets the matrix and its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(y) inv <<- y
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function completes the previous by calling for the inverse matrix, if the inverse already
## calculated it retrives the stored inversed matrix

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached matrix")
                return(inv)
        }
        unit <- x$get()
        inv <- solve(unit, ...)
        x$setinverse(inv)
        inv
}
        ## Return a matrix that is the inverse of 'x'






