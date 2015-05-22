                                    #####My Assignment2 ######

## Storing an array in the cache.

makeCacheMatrix <- function(x = matrix()){  ## Enter a square matrix and stored in the cache.
  mi <- NULL                             ## Sets a Null value if not calculated the inverse matrix.
  
  set <- function(y) {               ## Sets and stores the array entered.
    x <<- y
    mi <<- NULL
  }
  get <- function() x                     ## Gets the value of the array entered.
  setsolve <- function(solve) mi <<- solve   ## Establishes and stores the inverse of the matrix entered.
  getsolve <- function() mi                ## Gets the value of the inverse matrix.
  
  list(set = set, get = get,                  ##Stored in a list the above functions.
       setsolve = setsolve,
       getsolve = getsolve)
}

## Get the inverse of a matrix stored.

cachesolve <- function(x, ...) {         ## Take a stored matrix to obtain its inverse.
  mi <- x$getsolve()                     ##Gets the inverse of the cache.
  
  if(!is.null(mi)) {                ## Inverse if already been calculated, returns the inverse
    message("getting cached data") ## And returns a message.
    return(mi)                     
  }
  
  data <- x$get()                       ## If the inverse is not computed, obtains the matrix stored
  mi <- solve(data, ...)                 ## computes the inverse
  x$setsolve(mi)                         ## Establish and return the inverse matrix.
  mi
}
