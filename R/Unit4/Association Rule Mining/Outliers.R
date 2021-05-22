# Outlier - Data very different from other data.
# Should not keep outliers while doing any Machine Learning algorithms

boxplot(rivers)
#there are some outliers

after_outlier_removal = rivers[rivers<980]
boxplot(after_outlier_removal)
# No outliers now.