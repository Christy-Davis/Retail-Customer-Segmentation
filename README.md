# Retail-Customer-Segmentation
🛒 Retail Customer Segmentation Project
An end-to-end data analytics project that transforms 541,909 raw retail transactions into actionable customer insights using SQL, Python, and Power BI.

📌 Project Overview
This project performs customer segmentation on a UK-based online retail dataset using the RFM (Recency, Frequency, Monetary) framework. The goal is to identify distinct customer groups and uncover revenue patterns to support data-driven business decisions.

🗂️ Project Structure
Retail-Customer-Segmentation/
│
├── retail analysis sql.sql          # SQL queries for data exploration
├── retail analysis python.ipynb     # Python notebook - data cleaning & RFM analysis
├── retail Analysis power BI.pbix    # Power BI dashboard file
├── rfm_segments.csv                 # Output: RFM scores and customer segments
├── PAGE1 RETAIL ANALYSIS POWER BI.png  # Dashboard screenshot - Segmentation Overview
└── PAGE2 RETAIL ANALYSIS POWER BI.png  # Dashboard screenshot - Customer Insights

🛠️ Tools & Technologies
ToolPurposeMySQL WorkbenchData loading, exploration and queryingPython (Pandas)Data cleaning, RFM scoring, segmentationJupyter NotebookPython development environmentPower BIInteractive dashboard and data visualizationDAXPower BI calculated measures

🔄 Project Workflow
1️⃣ SQL — Data Exploration (MySQL Workbench)
Loaded 541,909 rows of raw retail transaction data into MySQL and wrote queries to answer key business questions:

✅ Total valid revenue → £10,666,684.54
✅ Top market → United Kingdom at £9,025,222
✅ Best-selling product → PAPER CRAFT LITTLE BIRDIE (80,995 units)
✅ Top 10 customers by spend
✅ Daily sales trend across 305 days

2️⃣ Python — Data Cleaning & RFM Analysis
Connected directly to MySQL via mysql-connector-python, pulled the cleaned dataset (530,100 rows), and performed:

Removed null values, invalid CustomerIDs and zero-value transactions
Calculated Sales column: Quantity × UnitPrice
Computed RFM scores for every customer:

Recency — days since last purchase
Frequency — number of transactions
Monetary — total amount spent


Assigned RFM scores (1–4) using quantile-based scoring
Segmented 4,338 customers into 5 groups

3️⃣ Power BI — Interactive Dashboard
Built a 2-page interactive dashboard:
Page 1 — Segmentation Overview

KPI cards: Revenue, Customers, Orders, Average Order Value
Customer segment distribution (donut chart)
Revenue by customer segment (bar chart)
Monthly sales trend (line chart)
Revenue by country (map visual)

Page 2 — Customer Insights

Drillable customer table with sales, quantity and segment
Top 5 customers by revenue (bar chart)
Interactive segment filter


📊 Customer Segments
SegmentCountDescription🥇 Champions839Bought recently, buy often, spend the most💙 Loyal Customers950Buy regularly with good frequency⚠️ At Risk857Used to buy often but haven't recently🔴 Lost1,342Haven't purchased in a long time🆕 Recent Customers350Bought recently but low frequency

💡 Key Insights

🏆 Champions (839 customers) generated £5.8M — nearly 65% of total revenue
📉 1,342 Lost customers represent a major re-engagement opportunity
📈 Sales nearly doubled between August and November (clear Q4 seasonal spike)
🌍 UK drove ~85% of global revenue at £9,025,222
📸 Dashboard Screenshots
Page 1 — Segmentation Overview
<img width="1437" height="807" alt="PAGE1 RETAIL ANALYSIS POWER BI" src="https://github.com/user-attachments/assets/629db377-646b-4cc5-b21e-fd1ee8ea4532" />
Page 2 — Customer Insights
<img width="1483" height="798" alt="PAGE2 RETAIL ANALYSIS POWER BI" src="https://github.com/user-attachments/assets/f95043e7-89a0-4de5-b7f0-ac5768e4d225" />
🚀 How to Run
SQL

Open MySQL Workbench
Load the retail dataset using LOAD DATA INFILE
Run queries from retail analysis sql.sql

Python

Install dependencies:

bashpip install pandas mysql-connector-python

Open retail analysis python.ipynb in Jupyter Notebook
Update MySQL connection credentials
Run all cells

Power BI

Open retail Analysis power BI.pbix in Power BI Desktop
Update data source path to your local rfm_segments.csv and clean_retail.csv
Refresh the data


📁 Dataset

Source: UCI Machine Learning Repository — Online Retail Dataset
Size: 541,909 transactions
Period: December 2010 – December 2011
Region: UK-based online retailer


👩‍💻 Author
Christy Davis

GitHub: Christy-Davis
LinkedIn: (add your LinkedIn profile link here)


🌟 Skills Demonstrated
Data Cleaning SQL Querying RFM Analysis Customer Segmentation Data Visualization Dashboard Design Business Intelligence Python (Pandas) Power BI DAX MySQL

👤 Top single customer spent £280,206

