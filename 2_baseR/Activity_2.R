### Activity_2 ###

# 1. Make a vector called ‘a’ of numbers 1 to 200
a <- c(1:200) # oe a <- 1:200
# 2. Multiply each element of the vector by 123 and save to a new object called ‘b’
b <- a*123
# 3. Extract the 44th element
b[44]
# 4. Extract the first 15 elements and assign to new variable b_sub
b_sub <- b[1:15]
# 5. Add the numbers 24108 and 24231 to the object b_sub
b_sub <- c(b_sub, 24108, 24231); b_sub
# 6. Try making a vector of the following
# ‘actb’, 100, 3.4
test_vect <- c('actb', 100, 3.4) # doesn't work as can't combine different data types in a vector
# 7. Extract the second element of this vector.
test_vect[2]
# 8. Multiply the second element (100) by 4. Did this work? Why?
test_vect[2]*4
# 9. Generate a character vector with 4 items and assign names(attributes) to the
# elements.
charac_vect <- c(charac = 'hello', numeric = 2, integer = 6L, logical = TRUE) # NB can use same attribute more than once
# 10. Display the names.
names(charac_vect)

