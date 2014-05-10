#just update the testing commands...
source("cachematrix.R")
A <- matrix(c(2, -1, 0, -1, 2, -1, 0, -1, 2), 3)
a <- makeCacheMatrix(A)
cacheSolve(a)
cacheSolve(a)
cacheSolve(a)


## below is for test and reference only


makeVector <- function(x = numeric()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setmean <- function(mean) m <<- mean
      getmean <- function() m
      list(set = set, get = get,
           setmean = setmean,
           getmean = getmean)
}

cachemean <- function(x, ...) {
      m <- x$getmean()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- mean(data, ...)
      x$setmean(m)
      m
}