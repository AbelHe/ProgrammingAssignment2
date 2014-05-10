## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {      
      inverseM <- NULL #define inversed matrix as NULL
      
      #set function, used to set orginal matrix
      set <- function(y) {
            x <<- y
            inverseM <<- NULL
      }
      
      get <- function() x #get function, used to get original matrix
            
      setInversed <- function(inverse) inverseM <<- inverse #used to set inversed matrix
      
      getInversed <- function() inverseM #used to get inversed matrix
      
      #return the list (an list of functions to communicate with the cache)
      list(set=set, get=get, 
           setInversed =setInversed,
           getInversed=getInversed )
}


## Write a short comment describing this function

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
      inversed <- x$getInversed()
      
      # if inversed matrix is available, return it.
      if(!is.null(inversed)){
            message("getting cached data")
            return(inversed)
      }
      
      # if inversed matrix is not available, calculate it. 
      message("calculate and cache data")
      originalMatrix <- x$get()
      inversed <- solve(originalMatrix)
      x$setInversed(inversed)
      inversed      
}

