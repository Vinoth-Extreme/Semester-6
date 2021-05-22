# Randon Forest - Diebetes

# Load dataset
# set seed
# Split data ( train, test )
# construct model
# Do prediction with test data
# Construct confusion matrix

dataset = read.csv("diabetes.csv", header=TRUE)
set.seed(500)

split = sample.split(dataset$Outcome, SplitRatio = 0.7)

train = subset(dataset, split == TRUE)
test = subset(dataset, split == FALSE)

print(dim(train))
print(dim(test))
forest = randomForest(Outcome~., data = train)
prediction = predict(forest, test)
confusionMatrix = addmargins(table(round(prediction), test$Outcome))
print(confusionMatrix)
accuracy = (confusionMatrix[1, 1] + confusionMatrix[2, 2]) / 230
print(paste("A:", accuracy))