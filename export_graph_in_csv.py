import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv('C:/Fruit-Prices-2022.csv')
fig, ((ax1, ax2), (ax3, ax4), (ax5, ax6)) = plt.subplots(3, 2, figsize=(15, 18))

# 1. Line Chart
ax1.plot(data['Fruit'], data['RetailPrice'], linestyle='-', color='blue')
ax1.set_title('Line Chart: RetailPrice vs Fruit')
ax1.set_xticks(data['Fruit'])
ax1.set_xticklabels(data['Fruit'], rotation=90)
ax1.set_xlabel('Fruit')
ax1.set_ylabel('RetailPrice Per Pound/Pint')

# 2. Bar Chart
ax2.bar(data['Fruit'], data['RetailPrice'], color='green')
ax2.set_title('Bar Chart: RetailPrice vs Fruit')
ax2.set_xticks(data['Fruit'])
ax2.set_xticklabels(data['Fruit'], rotation=90)
ax2.set_xlabel('Fruit')
ax2.set_ylabel('RetailPrice Per Pound/Pint')

# 3. Histogram
ax3.hist(data['RetailPrice'], bins=10, color='orange')
ax3.set_title('Histogram: RetailPrice')
ax3.set_xlabel('RetailPrice Per Pound/Pint')
ax3.set_ylabel('Frequency')

# 4. Scatter Plot
ax4.scatter(data['Fruit'], data['RetailPrice'], color='red')
ax4.set_title('Scatter Plot: RetailPrice vs Fruit')
ax4.set_xticks(data['Fruit'])
ax4.set_xticklabels(data['Fruit'], rotation=90)
ax4.set_xlabel('Fruit')
ax4.set_ylabel('RetailPrice Per Pound/Pint')

# 5. Pie Chart
ax5.pie(data['RetailPrice'], labels=data['Fruit'], autopct='%1.1f%%', startangle=140)
ax5.set_title('Pie Chart: RetailPrice Distribution')

plt.show()
