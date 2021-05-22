# deviding sequence into 4 quarters


x = c(27, 19, 5, 7, 6, 9, 15 ,12 ,18, 2, 1)
print(sort(x))
print(paste("25% quantile: ", quantile(x, 0.25)))
print(paste("75% quantile: ", quantile(x, 0.75)))
print(paste("Inter Quantile Range (IQR): ", IQR(x)))