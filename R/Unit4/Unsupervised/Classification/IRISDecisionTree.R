# Load dataset
# set seed
# Split data ( train, test )
# construct model
# Do prediction with test data
# Construct confusion matrix


split = sample.split(iris$Species, SplitRatio = 0.7)
set.seed(100)
# Load caTools library to splitting process
train = subset(iris, split == TRUE)
test = subset(iris, split == FALSE)

print(dim(train))
print(dim(test))

# Load party library to make tree model
tree = ctree(Species~., data = train)
plot(tree)

# Prediction
pred = predict(tree, test)

# Confusion matrix
confusionMatrix = addmargins(table(pred, test$Species))
print(confusionMatrix)

# Calculate accuracy
accuracy = (confusionMatrix[1, 1] + confusionMatrix[2, 2] + confusionMatrix[3, 3]) / 45
print(paste("A:", accuracy))