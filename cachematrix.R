## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function 

  # takes a square matrix as input
  # setting values in cache
  # brings a special vector as output in form of a list
  
 makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinv <- function(solve) m <<- solve 
    getinv <- function() m
    list(set = set,
         get = get,
         setinv = setinv,
         getinv = getinv)
  }
  
  



## Write a short comment describing this function
 # takes a special vector in
 # if the inverse matrix is in the cache 
 # it returns it directly
 # otherwise it will be computed 
 
cacheSolve <- function(x, ...) {
   m <- x$getinv()
   if(!is.null(m)) {
     message("getting cached data")
     return(m)
   }
   data <- x$get()
   m <- solve(data)
   x$setinv(m)
   m 
   # Return a matrix that is the inverse of 'x'
 }