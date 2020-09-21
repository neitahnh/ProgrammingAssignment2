## Put comments here that give an overall description of what your
## functions do


## Creates matrix object that can cache its inverse

makeCacheMatrix <- function( m = matrix() ) {
## Creating inverse
i <- NULL

## Setting matrix
set <- function( matrix ) {
  m <<- matrix
  i <<- NULL
}

## Getting the matrix
get <- function() {
  ## Return the matrix
  m
}

## Setting inverse of Matrix
setInverse <- function(inverse) {
  i <<- inverse
}

## Getting inverse of matrix
getInverse <- function() {
  ## Return the inverse property
  i
}

## Returning a list
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}





cacheSolve <- function(x, ...) {
  
  n <- x$getInverse()
  
  
  if( !is.null(n) ) {
    message("getting cached data")
    return(n)
  }
  
  ## Getting matrix from the object
  m <- x$get()
  
  ## Calculating inverse using matrix multiplication
  n <- solve(m) %*% data
  
  ## Set inverse to the object
  x$setInverse(n)
  
  ## Returning matrix
  n
}