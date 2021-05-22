data = read.csv("Stars.csv")

set.seed(120)


split = sample.split(data, SplitRatio = 0.8)

train = subset(data, split == TRUE)
test = subset(data, split == FALSE)
print(dim(test))


model = ctree(Type~(L+R+A_M), data=train)
plot(model)


prediction = predict(model, test)


cfm = addmargins(table(prediction, test$Type))
print(cfm)

accuracy = (cfm[1, 1] + cfm[2, 2] + cfm[3, 3] + cfm[4, 4] + cfm[5, 5] + cfm[6, 6]) / 68
print(paste(as.integer(accuracy * 100), "%"))