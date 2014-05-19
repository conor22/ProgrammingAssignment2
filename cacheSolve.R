cacheSolve <- function(x, ...) {
## assign x$getinverse() value to n 
    n <- x$getinverse() 

## if value assigned to n is not NULL then return the maxtrix value held in the cache
    if(!is.null(n)) {
        message("returning cached matrix data")
        return(n)
    }
    
## the n vector is NULL then we need to calculate it. first we call the x.get() function in to see the original 
## matrix that was input and we assign this value to data. we then use the solve() function to invert the matrix and 
## assign this to n. we parse the n value to the function setinverse() and return the value n
    dat <- x$get()    
    n <- solve(dat, ...)
    x$setinverse(n)
    n
}