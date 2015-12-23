## Use code to calculate inverse of unique matrix or return cached
## matrix inverse


## creates list of functions to store matrix data

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) i <<- solve
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse) 
         ## sets value of matrix, gets value of matrix, sets value of inverse, gets value of inverse
}

## checks to see if matrix inverse is cached; else solves matrix

cacheSolve <- function(x, ...) {
    i <- x$getinverse() 
    if(!is.null(i)){ ##looks for cached inverse
        message("getting cached data")
        return(i)
        }
        data <- x$get()
        i <- solve(data, ...)  ##solves inverse of matrix
        x$setinverse(i) ##stores solution in setinverse
        i
        ## Return a matrix that is the inverse of 'x'
}
