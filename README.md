### Introduction

This second programming assignment will require you to write an R
function that is able to cache potentially time-consuming computations.
For example, taking the mean of a numeric vector is typically a fast
operation. However, for a very long vector, it may take too long to
compute the mean, especially if it has to be computed repeatedly (e.g.
in a loop). If the contents of a vector are not changing, it may make
sense to cache the value of the mean so that when we need it again, it
can be looked up in the cache rather than recomputed. In this
Programming Assignment you will take advantage of the scoping rules of
the R language and how they can be manipulated to preserve state inside
of an R object.

### makeCacheMatrix()

This first function will create a list that can be menipulated from the another function "cacheSolve".
This list will contain data from the original matrix and the InvertedMatrix

### cacheSolve()

This second function will calculate the inversion for the original matrix manipulating/caching data in the list of makeCacheMatrix function!

