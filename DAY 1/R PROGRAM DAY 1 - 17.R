values <- c(1, 2, 3, 4, 5, 6)
dimensions <- c(2, 3)
dimnames <- list(
  c("row1", "row2"),
  c("col1", "col2", "col3")
)
my_array <- array(values, dimensions, dimnames = dimnames)
print(my_array)
