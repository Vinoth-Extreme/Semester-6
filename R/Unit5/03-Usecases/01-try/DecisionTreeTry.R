# Read data
csvData <- read.csv("Covid19-PublicHealthAnalysis1.csv")
data <- csvData[, 5:14]
#dim(data)

for(i in data$AboveEighteen) {
  if(i == "Yes") {
    data$AboveEighteen = 1
  }
}

# set seed
#set.seed(10)

# Splitting data
#splitter <- sample.split(data, SplitRatio = 0.8)
#train = subset(data, splitter = TRUE)
#test = subset(data, splitter = FALSE)

# model construction