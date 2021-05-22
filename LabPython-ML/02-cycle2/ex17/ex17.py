from sklearn.model_selection import train_test_split
from pandas import read_csv
import numpy


# Importing the dataset
dataset = read_csv("world-happiness-report.csv", header = None)

# Problem 1
print(dataset.describe())
print("*****************")

# Problem 2
print((dataset[[1, 2, 3, 4, 5, 6, 7, 8]]).sum())
print("*****************")

# Problem 3
dataset[[1, 2, 3, 4, 5]] = dataset[[1, 2, 3, 4, 5]].replace(0, numpy.NaN)
print(dataset.isnull().sum())
print(dataset.head(20))
print("*****************")

# Problem 4
dataset.dropna(inplace=True)
print(dataset.head(20))
print(dataset.describe())
print(dataset.shape)
print("*****************")

# Problem 5
dataset.fillna(dataset.mean(), inplace=True)
print(dataset.isnull().sum())
print(dataset.head(20))
print("*****************")

# Problem 6
X = dataset.iloc[:, :-1] # Retrieves all except the last column
Y = dataset.iloc[:, -1] # Retrieves only the last column
print("*****************")

print(X)
print(Y)
print("*****************")

X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.2, random_state = 0)
print(X_test)
print("*****************")