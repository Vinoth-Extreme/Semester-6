csvData <- read.csv("Covid19-PublicHealthAnalysis1.csv")
data <- csvData[, 2:14]
# print(dim(data))

cluster = kmeans(data, centers = 5)

clusplot(data, cluster$cluster)