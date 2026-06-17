# 🛍️ Age-Based Purchase Analysis

A data analytics project that explores how customer purchasing behavior varies across different age groups using SQL Server and Power BI. The project transforms raw e-commerce transaction data into actionable business insights through data cleaning, segmentation, analysis, and interactive dashboards.

---

## 📌 Project Overview

Understanding customer purchasing patterns is essential for improving marketing strategies, product recommendations, and customer retention.

This project analyzes more than **63,000 e-commerce transactions** to identify:

* Spending patterns across age groups
* Product category preferences
* Gender-based purchasing behavior
* Customer engagement trends
* Revenue contribution by demographic segment

The final insights are visualized through an interactive Power BI dashboard designed for business decision-makers.

---

## 🎯 Business Objectives

The project aims to answer the following questions:

* Which age group generates the highest revenue?
* How does spending behavior vary across demographics?
* Which product categories are most popular among different age segments?
* How do purchasing patterns change over time?
* What role does gender play in purchasing decisions within age groups?

---

## 🛠️ Tech Stack

| Tool        | Purpose                  |
| ----------- | ------------------------ |
| SQL Server  | Data Cleaning & Analysis |
| Power BI    | Dashboard Development    |
| Excel / CSV | Data Source              |
| DAX         | KPI Calculations         |
| SQL Views   | Data Modeling            |

---

## 📊 Dataset Information

The dataset contains approximately:

* **63,116 transaction records**
* Customer demographic information
* Product information
* Order details
* Purchase channels
* Geographic data

### Key Fields

* User ID
* Age
* Gender
* Country
* Source Channel
* Order ID
* Product ID
* Category
* Quantity
* Price
* Transaction Date

---

## 🔍 Data Cleaning & Preparation

Several preprocessing steps were performed to improve data quality:

### Data Validation

* Checked for invalid age values
* Identified underage customers
* Standardized country names

### Data Quality Improvements

* Removed duplicate transaction records
* Corrected inconsistent values
* Created customer age segments

### Age Group Segmentation

| Age Range | Segment          |
| --------- | ---------------- |
| < 18      | Under 18         |
| 18 – 34   | Young Adults     |
| 35 – 54   | Adults           |
| 55+       | Senior Customers |

---

## 📈 Analysis Performed

### 1. Spending Analysis by Age Group

Analyzed:

* Total revenue
* Average spending
* Order volume

### 2. Category Preference Analysis

Identified:

* Most purchased categories
* Revenue contribution by category
* Segment-specific product preferences

### 3. Purchase Trend Analysis

Evaluated:

* Order activity over time
* Spending trends by demographic segment

### 4. Gender-Based Analysis

Compared:

* Purchase behavior by gender
* Spending patterns within age groups

### 5. Geographic Insights

Explored:

* Customer distribution by country
* Regional purchasing behavior

---

## 🗄️ SQL Concepts Used

The project demonstrates practical SQL skills including:

* Common Table Expressions (CTEs)
* Window Functions
* Aggregations
* Group By Analysis
* Data Cleaning Queries
* View Creation
* Business KPI Calculations

Example:

```sql
SELECT
    age_group,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(price * quantity) AS total_spending
FROM vw_AgePurchaseAnalysis
GROUP BY age_group;
```

---

## 📊 Dashboard Features

The Power BI dashboard includes:

### Executive KPIs

* Total Revenue
* Total Orders
* Average Order Value
* Customer Distribution

### Interactive Visualizations

* Revenue by Age Group
* Category Analysis
* Purchase Trends
* Gender Comparison
* Country-Level Insights

### Filters

* Age Group
* Gender
* Country
* Product Category

---

## 📷 Dashboard Preview


```markdown
(Dashboard_screenshot.png) https://github.com/HariharanHarini/Age_based_purchase_analysis_project/blob/main/Dashboard_screenshot.png
```

---

## 💡 Key Business Insights

The analysis helps businesses:

* Identify high-value customer segments
* Personalize marketing campaigns
* Optimize product targeting
* Improve customer retention strategies
* Increase revenue through demographic-driven decisions

---

## 📁 Project Structure

```text
Age_based_purchase_analysis_project/

├── E-COMMERCE.csv
├── age based analysis.sql
├── Age_Based_Purchase_Analysis.pbix
├── AGE BASED PURCHASE ANALYSIS DASHBOARD.pdf
├── Dashboard_screenshot.png
└── README.md
```

---

## 🚀 How to Run

### SQL Analysis

1. Import the CSV dataset into SQL Server.
2. Execute the SQL script:

   ```sql
   age based analysis.sql
   ```
3. Generate the analysis view:

   ```sql
   vw_AgePurchaseAnalysis
   ```

### Power BI Dashboard

1. Open:

   ```
   Age_Based_Purchase_Analysis.pbix
   ```
2. Refresh data connections.
3. Explore interactive dashboard insights.

---

## 📚 Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis (EDA)
* SQL Query Optimization
* Customer Segmentation
* Business Intelligence
* Power BI Dashboard Development
* Data Storytelling
* KPI Design

---

## 👤 Author

**Harini Hariharan**

Computer Science Graduate | Data Analyst | Python Developer | AI Enthusiast

* GitHub: https://github.com/HariharanHarini
* LinkedIn:https://www.linkedin.com/in/harinihariharan/ 

---

⭐ If you found this project useful, consider starring the repository.

