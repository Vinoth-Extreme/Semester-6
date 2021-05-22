# install.packages("reticulate")
# install.packages("miniconda")
# library(reticulate)

source_python("arithmatic.py")

x = 10
y = 20

z = add_num(x, y)
print(z)

# Not yet working