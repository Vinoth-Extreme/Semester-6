# Load dataset
# set seed
# Split data ( train, test )
# construct model
# Do prediction with test data
# Construct confusion matrix

dataset = read.csv("diabetes.csv", header=TRUE)
# print(head(dataset))
set.seed(500)

split = sample.split(dataset$Outcome, SplitRatio = 0.7)

train = subset(dataset, split == TRUE)
test = subset(dataset, split == FALSE)

print(dim(train))
print(dim(test))

tree = ctree(Outcome ~ ., data = train)
plot(tree)

pred = predict(tree, test)

confusionMatrix = addmargins(table(round(pred), test$Outcome))

accuracy = (confusionMatrix[1, 1] + confusionMatrix[2, 2]) / 230
print(paste("A:", accuracy))