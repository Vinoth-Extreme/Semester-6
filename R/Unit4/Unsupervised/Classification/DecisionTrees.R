# Decision Tree - Diebetes

# Installing Rquired packages
# install.packages("party")
# install.packages("caTools")
# install.packages("randomForest")
# install.packages("e1071")

# Loading All installed regarding library
# library(party)
# library(caTools)
# library(randomForest)
# library(e1071)

# header = TRUE means the first line of csv file is not original data it's column names.
data = read.csv("diabetes.csv", header = TRUE)
head(data) # seeing top 6 rows
set.seed(891)
split = sample.split(data$Outcome, SplitRatio = 0.70)

train = subset(data, split == TRUE)
test = subset(data, split == FALSE)
dim(train)
dim(test)

tree = ctree(Outcome ~ ., data = train)
prediction = predict(tree, test)
accuracy = addmargins(table(round(prediction), test$Outcome))

FinalAccuracy = (accuracy[1, 1] + accuracy[2, 2]) / 230
print(paste("Final Accuracy: ", FinalAccuracy))