# Create an object
my_person <- list(first_name = "Zakk", age = 32)

# Assign S3 class
class(my_person) <- "my_person"

# Define S3 print method
print.my_person <- function(x) {
  cat("First Name:", x$first_name, "\n")
  cat("Age:", x$age, "\n")
}

# Test the object
print(my_person)
