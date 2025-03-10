# Chinook Database Analysis

## Introduction
This project involves analyzing the Chinook database using Python and Power BI. We connected to the database directly from Python and loaded all tables into separate DataFrames. The analysis includes data exploration, visualization, hypothesis testing, confidence interval calculations, and a Power BI dashboard to visualize key insights.

## Database Connection
We connected to the Chinook database using SQLAlchemy. The connection was established directly in Python, allowing us to execute SQL queries and load data efficiently.

## Analysis Tools
We utilized various tools for data manipulation, visualization, and statistical analysis. These tools helped us perform the following tasks:
- **Data Manipulation**: We loaded data into DataFrames, inspected data types, checked for missing values, and calculated basic statistics.
- **Visualization**: We created plots to visualize distributions, trends, and relationships within the data.
- **Statistical Analysis**: We conducted hypothesis testing and calculated confidence intervals to gain insights into the data.

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
   - Checked data types, missing values, and basic statistics to ensure data quality.


2. **Key Variables & Distributions**
   - Identified key variables and visualized their distributions to understand the data better.

3. **Color Palettes for Better Insights**
   - Used color palettes to create visually appealing and insightful plots.

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

2. **Independence Between Track Duration & Price**
   - Tested whether track duration and price are independent.

4. **Independence of Genre and Media Type**
   - Examined the relationship between music genre and media type.

5. **Custom Hypothesis Tests**
   - Designed three additional hypothesis tests based on insights from the dataset.

## Confidence Interval Analysis
We calculated 95% confidence intervals for:
1. **Average Track Duration Across Genres**
2. **Average Sales Across Countries**
3. **Average Tracks Purchased Per Customer**

## Power BI Dashboard
We created a Power BI dashboard to visualize key insights from the analysis. The dashboard includes:
- **Sales Trends Over Time**: Analyzing revenue and order trends across different time periods.
- **Sales by Track Genre**: Breaking down revenue by genre to identify the most popular music genres.
- **Sales by Media Type**: Comparing different media types to understand customer preferences.
- **Customer Behavior Across Regions**: Assessing how customer spending varies by region.
- **Employee Performance**: Evaluating the contribution of employees to the overall sales.
- **Top-Performing Albums, Playlists, and Artists**: Identifying the top contributors to sales.

## Conclusion
This project demonstrates how to analyze the Chinook database by:
- Establishing a direct connection between Python and the database.
- Performing comprehensive data exploration and visualization.
- Conducting statistical hypothesis tests and confidence interval calculations.
-Creating a Power BI dashboard to visualize and interpret key insights.

The findings provide valuable insights into music sales trends, customer behavior, and pricing strategies.

