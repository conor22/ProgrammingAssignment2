## makeCacheMatrix is an object that accepts (and converts to if not) a numeric input, in this case a matrix
makeCacheMatrix <- function(x = numeric()) {
    ## it then sets a local variable m = NULL
    m <- NULL
    m_inv <- NULL
    
    ## reset is a variable set by the function(y) - it sets global var x to whatever y was input. 
    ## you can use this to reset the matrix
    ## important to set in m_inv value to NULL using '<<-' as this resets the getinverse() return value = NULL
    reset <- function(y) {
        x <<- y
        m <<- NULL
        m_inv <<- NULL
    }
    ## get is a variable set to the value of x 
    get <- function() x
    
    ## setmean is a var that takes the mean value of x and sets the var m to this
    setmean <- function(mean) m <<- mean
    
    ## getmean is a var that returns the mean value m (as set above)
    getmean <- function() m
    
    ## here we set and get the inverse of matrix
    setinverse <- function(n) m_inv <<- n
    getinverse <- function() m_inv
    
    ## creates a list of all the functions to be returned - these are accessed via 
    ## objectname$get() etc
    list(reset = reset, get = get,
         setmean = setmean,
         getmean = getmean, setinverse = setinverse, getinverse = getinverse)
}