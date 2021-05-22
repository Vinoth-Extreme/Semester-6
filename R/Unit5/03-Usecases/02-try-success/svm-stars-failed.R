data = read.csv("Stars.csv")
set.seed(119)
split = sample.split(data, SplitRatio = 0.7)

train = subset(data, split = TRUE)
test = subset(data, split = FALSE)

model = svm(Type~(L+R+A_M), train)
plot(model)

prediction = predict(model, test)

cfm = addmargins(table(prediction, data$Type))
print(cfm)