from typing import Tuple
import pandas as pd
import matplotlib.pyplot as plt

Stock_market = {
    'year': [2017, 2017, 2017, 2017, 2017, 2017, 2017, 2017, 2017, 2017, 2017],
    'Month': [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2],
    'Interest_Rate': [2.75, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.25, 2.25, 2.25, 2],
    'Unemployment_Rate': [5.3, 5.3, 5.3, 5.3, 5.4, 5.6, 5.5, 5.5, 5.5, 5.6, 5.7],
    'Stock_Index_Price': [1464, 1394, 1357, 1293, 1256, 1254, 1234, 1195, 1159, 1432, 1334]
}

df = pd.DataFrame(Stock_market, columns = ['Year', 'Month', 'Interest_Rate', 'Unemployment_Rate', 'Stock_Index_Price'])

plt.scatter(df['Interest_Rate'], df['Stock_Index_Price'], color='red')
plt.title('Stock Index Price VS Interest Rate', fontsize=14)
plt.xlabel('Interest Rate', fontsize=14)
plt.ylabel('Stock Index Price', fontsize=14)
plt.grid(True)
plt.show()

plt.scatter(df['Unemployment_Rate'], df['Stock_Index_Price'], color='green')
plt.title('Stock Index Price VS Unemployment Rate', fontsize=14)
plt.xlabel('Unemployment Rate', fontsize=14)
plt.ylabel('Stock Index Price', fontsize=14)
plt.grid(True)
plt.show()