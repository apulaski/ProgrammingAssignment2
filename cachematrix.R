## Put comments here that give an overall description of what your
## functions do
## These 2 functions combine to create and get the cache of the inverse of a matrix

## Write a short comment describing this function
## makeCacheMatrix:  build a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of inverse of matrix
## 4. get the value of inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  my_inv <- NULL
  my_set <- function(y) {
    x <<- y
    my_inv <<- NULL
  }
  my_get <- function() x
  my_setinverse <- function(inverse) my_inv <<- inverse
  my_getinverse <- function() my_inv
  list(set=my_set, get=my_get, setinverse=my_setinverse, getinverse=my_getinverse)
  
}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  my_inv <- x$getinverse()
  if(!is.null(my_inv)) {
    message("This is cached data")
    return(my_inv)
  }
  message("This is non-cached data")
  my_mat <- x$get()
  my_inv <- solve(my_mat)
  x$setinverse(my_inv)
  my_inv
}
