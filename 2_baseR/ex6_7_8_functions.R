### Ex6 - Writing Functions ###

# 1.Write a function to calculate the hypotenuse of a triangle given the length of the 2 sides. 
# Remember the hypotenuse is the square root of the sum of the squares -√(a² + b²)
# Run the function you have created with different values.

hypotenuse <- function(a,b) {
  output <- sqrt(a^2 + b^2)
  return(output)
}

hypotenuse(5,4)
hypotenuse(10,14)

# ! TIP: name functions with verbs so you can spot what items in your environ are functions at a glance

### Ex7 - apply ###

#1. Create a numeric vector of length 10. 
# Write an lapply and sapply statement to square each element. 
# Compare the two outputs.


# 2. Generate a list of length 4 containing both numeric and logical (T/F)vectors. 
# Write anlapplyor sapplystatement to calculate the sum ofthe elements in each vector.



# 3. Write ansapply statement to repeat each element of each vector in your list three times 
# e.g.1, 4, 3 would become 1, 1, 1, 4, 4, 4, 3, 3, 3. 
# Assign the output to a new list.

### Ex8 - Loops ###

# 1.Write a for loop that iterates over the numbers 1 to 7 and prints the cube of each number using print().

for (i in 1:7) {
  print(i^3)
}

# 2.Write a for loop that iterates over the column names of the inbuilt iris dataset
# and print each together with the number of characters in the column name in parenthesis. 
# Example output: Sepal.Length(12). Use the functions print(), paste0() and nchar(). 
# Look up what these functions do using the help feature.

head(iris)
cols <- colnames(iris)
help("paste0")
for (i in cols) {
  print(paste0(i, " (", nchar(i), ")", recycle0 = FALSE))
}

# 3.Write an if else loop to print the colours in colours_vector with four characters. 
# Use nchar()colours_vector<-c("red", "orange", "purple", "yellow", "pink", "blue")

colours_vector <- c("red", "orange", "purple", "yellow", "pink", "blue")

test_vector_4 <- ifelse(nchar(colours_vector)==4,colours_vector,"NA")

# for (i in colours_vector) {
#   ifelse(nchar(i) == 4, print(i), print("NA"))
# }
# 
# for (i in colours_vector) {
#   if(nchar(i) == 4) {
#     print(i)
#   }
# }
