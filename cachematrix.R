## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
    s <- NULL
    set <- function(y) {
        x <<- y
        s <<- NULL
    }
    get <- function() x
    setmsolve <- function(solve) s <<- solve
    getmsolve <- function() s
    list(set = set, get = get,
         setmsolve = setmsolve,
         getmsolve = getmsolve)
}

## Write a short comment describing this function
cacheSolve <- function(x, ...) {
    s <- x$getmsolve()
    if(!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    data <- x$get()
    s <- solve(data, ...)
    x$setmsolve(s)
    s
}
