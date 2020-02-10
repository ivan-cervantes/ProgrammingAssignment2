## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Funciton where stores a matrix, caching data for matrix and solved matrix
makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(matrix) {
    x <<- matrix
    inverse <<- NULL
  }
  get <- function() {
    x
  }
  setInverse <- function(matrixSolved) { 
    inverse <- matrixSolved
  }
  getInverse <- function() {
    inverse
  }
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function
##Function to solve a matrix, checks if its stored else solves the the matrix and stores it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if(!is.null(inverse)) {
    message("Getting inversed matrix cached")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse
}
