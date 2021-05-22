# library "arules" for association rule mining

data = read.csv("Market_Basket_Optimisation.csv")
transactions = read.transactions("Market_Basket_Optimisation.csv", sep=",", rm.duplicates = TRUE)
#print(nrow(transactions))

summary(transactions)
itemFrequencyPlot(transactions, topN = 10)

#training Apriori on the dataset
rules = apriori(data = transactions, parameter = list(support = 0.004, confidence = 0.2))
#print(rules)

#Visualiizing the results
inspect(sort(rules, by = "lift")[1:10])