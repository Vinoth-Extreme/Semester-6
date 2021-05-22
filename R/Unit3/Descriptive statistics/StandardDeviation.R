v <- c(1, 3, 4, 2, 5, 6, 7)
df <- data.frame(name=c("A", "B", "C", "D", "E", "F"), age=c(1, 2, 3, 4, 5, 6))

print(paste("The standard deviation: ", sd(v)))
print(paste("The variance of age column: ", var(v)))

print(paste("The standard deviation of age column: ", sd(df$age)))
print(paste("The variance of age column: ", var(df$age)))