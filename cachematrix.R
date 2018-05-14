## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
 #makeCacheMatrix function to
 #set value of matrix
 #get result value
 #set inverse value
 #get inverse value

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
    
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
 #ret inv of matrix
 #1 check if inverse has been computed
 # if yes, show result, skip the computation
 # if no, compute inverse and set value
 # matrix is always invertible

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}

