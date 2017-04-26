## It is a coursera R programming assignment No.2 

## makeCachematrix is setting the value of the matrix, getting the value, 
## making inversion of the matrix while setting its value into the environment.
## and it is also getting the inverted matrix from environment as a result


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


##Next function below is
##searching of the previously stored value of invertible matrix within the environment

cacheSolve <- function(x, ...) {
              inv <- x$getinverse()
              if(!is.null(inv)) {
               message("getting cached data.") ## message appears if the value was stored before.
               return(inv)
               }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}

##End of code