## Create a matrix object, calculate the inverse of the matrix
## Cache the inverse 

## Create a matrix oject and define set, get , setinverse, getinverse method

makeCacheMatrix <- function(x = matrix()) {
        
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inv_tmp) inv <<- inv_tmp
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)        
        
        

}


## If the inverse is available, then return it;
## If the matrix is reset, or inverse is null, recalculate and return the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv        
        
        
        
        
        
}
