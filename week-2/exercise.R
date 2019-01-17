## Part 1: Debugging

my_num <- 6
initials <- "L. C."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# arguments should be of the same type. in this case, 'my_num' is an Integer, and 'initials' is a String.

install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# The function 'str_length' has not been defined. 

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# The variable 'initial' has not been defined, only 'initials' was defined.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
v <- c(1,2)
typeof(v) #double

# Write a function `compare_length` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
compare_length <- function(v1, v2) {
  difference <- length(v1) - length(v2)
  paste("The difference in lengths is", difference)
}


# Pass two vectors of different length to your `compare_length` function
v1 <- c(1,2,3)
compare_length(v,v1)


# Write a function `describe_difference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
describe_difference <- function(v1, v2) {
  difference <- length(v1) - length(v2)
  if (difference > 0) {
    paste("Your first vector is longer by", difference, "elements.")
  }
  else {
    paste("Your second vector is longer by", difference * -1 , "elements.")
  }
}

# Pass two vectors to your `describe_difference` function
describe_difference(v,v1)

# Write a function `combine_vectors` that takes in 3 vectors and combines them into one
combine_vectors <- function(v1, v2, v3) {
  new_vector <- c(v1, v2, v3)
  new_vector
}

# Send 3 vectors to your function to test it.
v2 <- c(1,2,3,4)
combine_vectors(v, v1, v2)

# Write a function `caps_time` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
caps_time <- function(v) {
  new_names <- tolower(v)
  new_names
}

#test case for 'caps_time'
vname <- c("Informatics 201", "Math 409")
caps_time(vname)
