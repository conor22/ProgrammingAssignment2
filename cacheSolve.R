cacheSolve <- function(x, ...) {
## assign x$getinverse() value to n 
## assign x$get() value to daya
## assign inverse of matrix to inv_data using solve() function
    n <- x$getinverse() 

## if value assigned to n is not NULL then return the maxtrix value held in the cache
    if(!is.null(n)) {
        message("returning cached matrix data")
        return(n)
    }
    
    ## the m var is NULL so we need to calculate it. 
    ## call the get() function in makeVector and assign it to var data
    ## use the mean() function to caclulate the mean and assign it to m
    ## return the value for m
    dat <- x$get()    
    n <- solve(dat, ...)
    x$setinverse(n)
    n
}