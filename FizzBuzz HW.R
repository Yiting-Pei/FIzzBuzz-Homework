#---------------------------------------------------
#----- R Homework 01 Template
#---------------------------------------------------
# Clear the workspace
rm(list = ls()) # Clear environment
gc()            # Clear memory
cat("\f")       # Clear console

#---------------
#-- Question 1
#---------------
# Return Fizz if n is divisible by 3.
fizz <- function(n) {
  if (n %% 3 == 0) {
    return("Fizz")
  } else {
    return("")
  }
}

# Use commands below to test your function:
fizz(5L)  # integer input
fizz(6L)  # integer input
fizz(5)   # non-integer input
fizz(6.3) # non-integer input

#---------------
#-- Question 2
#---------------
# Return Buzz if n is divisible by 5.
buzz <- function(n) {
  if (n %% 5 == 0) {
    return("Buzz")
  } else {
    return("")
  }
}

# Use commands below to test your function:
buzz(5L)  # integer input
buzz(6L)  # integer input
buzz(5)   # non-integer input
buzz(6.3) # non-integer input

#---------------
#-- Question 3
#---------------
# Combine the outputs from fizz() and buzz().
fizzbuzz <- function(n) {
  return(paste(fizz(n), buzz(n), sep = ""))
}

# Use commands below to test your function:
fizzbuzz(4L)  # integer input
fizzbuzz(6L)  # integer input
fizzbuzz(15L) # integer input
fizzbuzz(4)   # non-integer input
fizzbuzz(6.3) # non-integer input
fizzbuzz(15)  # non-integer input

#---------------
#-- Question 4
#---------------
# Check the inputs, then build the result for each number from n to m.
fbr <- function(n,m) {
  if (!is.integer(n) || !is.integer(m)) {
    stop("Both inputs must be integers.")
  }
  if (n > m) {
    stop("n must be less than or equal to m.")
  }
  
  answer <- character(0)
  for (number in n:m) {
    word <- fizzbuzz(number)
    if (word == "") {
      answer <- c(answer, as.character(number))
    } else {
      answer <- c(answer, word)
    }
  }
  return(answer)
}

# Use commands below to test your function:
fbr(10L,15L)  # integer inputs
fbr(10,15)
fbr(15L, 10L)
#fbr(10,15)    # non-integer inputs (optional)
#fbr(15L, 10L) # n is larger than m (optional)
