# this provided dataset is for Male gender and Systolic blood pressure only.

age <- c(21, 23, 25, 28, 29, 34, 32, 41, 45, 47, 53, 58, 64)
sbp <- c(120.5, 120.5, 120.5, 119.5, 119.5, 114.5, 114.5, 115.5, 115.5, 119.5, 125.5, 129.5, 143.5)
bp_model = lm(sbp ~ age)
z = data.frame(age = 21)
p = predict(bp_model, z)
print(p)