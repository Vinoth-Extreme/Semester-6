# Support Vector Machine - Diebetes

# library(e1071)

data = read.csv("diabetes.csv", header = TRUE)
set.seed(12)

split = sample.split(data, SplitRatio = 0.8)


train = subset(data, split == TRUE)
test = subset(data, split == FALSE)

model = svm(Outcome ~ ., data = train)
prediction = predict(model, test)

accuracy = addmargins(table(round(prediction), test$Outcome))
print(accuracy)
FinalAccuracy = (accuracy[1, 1] + accuracy[2, 2]) / 172
print(paste("Final Accuracy: ", FinalAccuracy))