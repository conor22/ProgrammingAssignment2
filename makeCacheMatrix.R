## makeCacheMatrix is an object that accepts (and converts to if not) a numeric input, in this case a matrix
## there are a number of functions that we can then access via the list() of returned objects available as needed
makeCacheMatrix <- function(x = numeric()) {
    ## it then sets a local variable m and m_inv both = NULL
    m <- NULL
    m_inv <- NULL
    
## reset is a function that can be used to change the matrix values. it takes the input values y and assigns them to x
## important to set in m_inv value to NULL using '<<-' as this sets the getinverse() return value = NULL and this is 
## needed to ensure you do not return the inverse of an existing matrix entered
    reset <- function(y) {
        x <<- y
        m <<- NULL
        m_inv <<- NULL
    }
    ## get is a variable set to the value of x parsed in
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