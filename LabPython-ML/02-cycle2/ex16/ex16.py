import numpy as np
from pandas import read_csv, DataFrame
import matplotlib.pyplot as plt

iris = read_csv("iris.csv")

dataFrame = DataFrame(data = iris, columns = ["SepalLengthCm", "PetalWidthCm"])
dataFrame.plot.scatter(x = "SepalLengthCm", y = "PetalWidthCm", title = "Testing...")
plt.show(block = True)