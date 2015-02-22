## There are two main functions MakeCacheMatrix and cacheSolve. The first main function returns a list of functions namely set,
##  get, , setinverse, and getinverse. The second main function looks if there exists an inverse matrix and if so returns the 
## existing (or cached) inverse matrix, else it calculates a new inverse matrix.

## Write a short comment describing this function
# This function returns a list of four functions:
# set returns a matrix that is passed as an argument to makeCacheMatrix or if nothing is passed to makeCacheMatrix
# then the set function can be used to pass a matrix. e.g : x<-makecacheMatrix() and then x$set(m) where m is a matrix.
# firthermore set also sets the inverse matrix I to null.
# get is a function that returns the matrix that has been passed either to makeCacheMatrix or $set()
# setinverse is a function that can be used to pass the inverse of a passed matrix
# getinverse is a function that returns the matrix in setinverse, which could be NULL if nothing is passed to setinverse.

makeCacheMatrix <- function(x = matrix()) {
        I <- NULL                               
        set <- function(y) {                    
                x <<- y                         
                I <<- NULL                      
        }                                       
        get <- function() x                     
        setinverse <- function(solve) I <<- solve
        getinverse <- function() I               
        list(set = set, get = get,              
             setinverse = setinverse,             
             getinverse = getinverse)    

}


## Write a short comment describing this function
#cacheSolve looks for an existing inverse matrix and returns it if found, else it calculates the inverse matrix
# of teh matrix that was passed to the set function in makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         I <- x$getinverse()                      
        if(!is.null(I)) {                     
                message("getting cached inverse matrix")
                return(I)                     
        }                                     
        data <- x$get()                       
        I <- solve(data, ...)                  
        x$setinverse(I)                          
        I         
}
