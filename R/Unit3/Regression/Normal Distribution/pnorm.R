x = c(1, 2, 3, 4, 5, 6, 7, 8)
y = pnorm(x, mean(x), sd(x))
print(y)
plot(x, y)