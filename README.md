# Chinook Database Analysis

## Introduction
This project involves analyzing the Chinook database using Python. We connected to the database directly from Python and loaded all tables into separate Pandas DataFrames. The analysis includes data exploration, visualization, hypothesis testing, and confidence interval calculations.

## Database Connection
We connected to the Chinook database using SQLAlchemy. The connection was established directly in Python, allowing us to execute SQL queries and load data efficiently.



## Libraries Used
We utilized the following libraries for analysis:
```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import scipy.stats as stats
from sqlalchemy import create_engine
from urllib.parse import quote_plus
```

## Data Exploration
1. **Initial Data Inspection**
   - Checked data types, missing values, and basic statistics using Pandas.

2. **Key Variables & Distributions**
   - Identified key variables and visualized their distributions using Seaborn and Matplotlib.

3. **Color Palettes for Better Insights**
   - Used Seaborn color palettes to enhance data visualization.

## Statistical Analysis
### **Normality Testing (Three Methods)**
- **Histogram & Q-Q Plot**
- **Shapiro-Wilk Test**
- **Kolmogorov-Smirnov Test**

### **Outlier Detection & Handling**
- Used boxplots and Z-score methods to identify outliers.
- Assessed whether to remove outliers based on business logic and statistical impact.

## Hypothesis Testing
We conducted hypothesis tests using statistical methods to answer the following questions:

1. **Top 3 Music Genres**
   - Found the top three genres using Pandas.
   - Compared the average of prices distributions using a statistical test.

2. **Independence Between Track Length & Price**
   - Tested whether track length and price are independent.

4. **Independence of Genre and Media Type**
   - Examined the relationship between music genre and media type.

5. **Custom Hypothesis Tests**
   - Designed three additional hypothesis tests based on insights from the dataset.

## Confidence Interval Analysis
We calculated 95% confidence intervals for:
1. **Average Track Length Across Genres**
2. **Average Sales Across Countries**
3. **Average Tracks Purchased Per Customer**

## Conclusion
This project demonstrates how to analyze the Chinook database by:
- Establishing a direct connection between Python and the database.
- Performing comprehensive data exploration and visualization.
- Conducting statistical hypothesis tests and confidence interval calculations.

The findings provide valuable insights into music sales trends, customer behavior, and pricing strategies.

