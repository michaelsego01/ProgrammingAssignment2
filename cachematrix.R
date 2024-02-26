## For this project, I am making two functions, "makeCacheMatrix" and "cacheSolve" to catch the
##inverse of a special "Matrix" object

## "makeCacheMatrix" is a function that creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

        m <- NULL
set <- function(y) {
        x <<- y
        m <<- NULL
        
}

get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set = set,
     get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}       

##cacheSolve is a function that gets the inverse of the special "matrix" object
##cacheSolve is returned by the function makeCacheMatrix above

cacheSolve <- function(x, ...) {
        
}

m <- x$getinverse()
if (!is.null(m)) {
  message("getting cached data") 
  return(m)
}

data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m
}

## Return a matrix that is the inverse of 'x'
##example

test_matrix <-matrix(1:4, 2, 2)
test_matrix2 <- makeCacheMatrix(test_matrix)
cacheSolve(test_matrix2)  ##calculates the inverse of test_matrix
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5


