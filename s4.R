setClass("Person",
         slots = list(
           name = "character",
           age = "numeric"
         ))




person2 <- new("Person", name = "Zakk", age = 32)





setMethod("show", "Person",
          function(object) {
            cat("Name:", object@name, "\n")
            cat("Age:", object@age, "\n")
          })






person2
