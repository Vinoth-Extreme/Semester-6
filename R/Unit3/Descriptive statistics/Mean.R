# mean(sequence, trim = 0, na.rm = FALSE)
  # sequence of values
  # na - null values, Boolean saying whether to consider null values or not.

v = c(1, 2, 3, 4, 5)
w = c(4, 2, 10, 24, 95, NA)
print(paste("Mean without null value: ", mean(v)))
print(paste("Mean with null value but by removing it: ", mean(w, na.rm = TRUE)))