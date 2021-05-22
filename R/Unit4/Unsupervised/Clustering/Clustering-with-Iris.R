# library(cluster)

# removal of last label column as its a label for the instance
# Its for only unlabelled data
iris1 = iris[, 1:4]

cluster = kmeans(iris1, 3)

# print(cluster)

clusplot(iris1, cluster$cluster)