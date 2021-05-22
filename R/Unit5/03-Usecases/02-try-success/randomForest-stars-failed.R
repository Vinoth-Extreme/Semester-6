data = read.csv("Stars.csv")


set.seed(120)


split = sample.split(data, SplitRatio = 0.8)


train = subset(data, split = TRUE)
test = subset(data, split = FALSE)


model = randomForest(Type~(L+R+A_M), data = train)
plot(model)


prediction = predict(model, test)


cfm = addmargins(table(prediction, data$Type))
print(cfm)