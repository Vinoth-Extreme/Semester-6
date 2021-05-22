# The middle most value in a data series is called median
# median() is used to calculate median value in R

# median(series, na.rm = FALSE)
    # na.rm is FALSE by default
    # sequence must be sorted and it's done automatically

v = c(1, 2, 3, 4, 5, 6, NA)
print(median(v, na.rm = TRUE))