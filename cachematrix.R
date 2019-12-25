## Put comments here that give an overall description of what your
## functions do

## I will assigne a function to makecachematrix, the argument of this function is a matrix named X, set will be a function with Y argument
## and get the matrix function
## setInverse and getInverse means the environment within set and get were defined

makeCacheMatrix <- function(x = matrix()) {
+ inv <- NULL
+     set <- function(y) {
+         x <<- y
+         inv <<- NULL
+     }
+     get <- function() x
+     setInverse <- function(inverse) inv <<- inverse
+     getInverse <- function() inv
+     list(set = set,
+          get = get,
+          setInverse = setInverse,
+          getInverse = getInverse)

}


## I will assigne a function to cacheSolve, i made a  if loop here that allow to return the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
+ inv <- x$getInverse()
+     if (!is.null(inv)) {
+         message("getting cached data")
+         return(inv)
+     }
+     mat <- x$get()
+     inv <- solve(mat, ...)
+     x$setInverse(inv)
+     inv

}
