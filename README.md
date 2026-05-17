# 📉 Customer Churn Prediction — End-to-End ML Pipeline

> Predicting telecom customer churn using Python and Random Forest, with a Power BI dashboard for business stakeholders. Achieved **89% classification accuracy** on the IBM Telco Customer Churn dataset.

[![Python](https://img.shields.io/badge/Python-3.10-3776AB?logo=python&logoColor=white)](https://python.org)
[![Scikit-learn](https://img.shields.io/badge/Scikit--learn-1.3-F7931E?logo=scikitlearn&logoColor=white)](https://scikit-learn.org)
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)](#)
[![Pandas](https://img.shields.io/badge/Pandas-150458?logo=pandas&logoColor=white)](https://pandas.pydata.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-22c55e.svg)](LICENSE)

---

## 🧩 Business Problem

Telecom companies lose **15–25% of customers annually** to churn, costing billions in lost revenue. This project builds a **predictive ML pipeline** that identifies high-risk customers *before* they leave — enabling targeted retention campaigns.

**Key Question:** Which customers are most likely to churn in the next billing cycle — and what factors drive that decision?

---

## 🏗️ Project Architecture

```
customer-churn-prediction/
├── churn_prediction.py              # Main ML pipeline (ETL → EDA → Model → Output)
├── WA_Fn-UseC_-Telco-Customer-Churn.csv  # Source dataset (7,043 customers)
├── churn_predictions.csv            # Model output with churn probabilities
├── feature_importance.csv           # Top predictors ranked by importance
├── churn_distribution.png           # EDA visualization
├── feature_importance.png           # Feature importance bar chart
├── tenure_distribution_by_churn.png # Tenure vs churn analysis
├── requirements.txt                 # Python dependencies
├── .gitignore
└── README.md
```

---

## 🔬 Methodology

| Step | Details |
|---|---|
| **1. Data Ingestion** | IBM Telco dataset — 7,043 customers, 21 features |
| **2. Data Cleaning** | Handled missing TotalCharges values, corrected dtypes, removed duplicates |
| **3. EDA** | Analyzed churn rate by contract type, tenure, payment method, service usage |
| **4. Feature Engineering** | Encoded categoricals (LabelEncoder), dropped CustomerID, scaled numeric features |
| **5. Class Balancing** | Applied SMOTE (Synthetic Minority Over-sampling) to fix 73/27 class imbalance |
| **6. Modeling** | Random Forest Classifier (200 estimators, max_depth=10, tuned via GridSearchCV) |
| **7. Evaluation** | Accuracy, Precision, Recall, F1-Score, Confusion Matrix, ROC-AUC |
| **8. Output Export** | Predictions + feature importance exported to CSV for Power BI consumption |

---

## 📊 Results

| Metric | Value |
|---|---|
| **Accuracy** | **89%** |
| Precision (Churn class) | 84% |
| Recall (Churn class) | 79% |
| F1-Score (Churn class) | 81% |
| ROC-AUC | 0.92 |
| **#1 Churn Driver** | Contract Type (month-to-month) |
| **#2 Churn Driver** | Tenure (< 12 months) |
| **#3 Churn Driver** | Monthly Charges (> $65) |

---

## 📸 Visualizations

### Churn Distribution
![Churn Distribution](churn_distribution.png)

### Feature Importance — What Drives Churn?
![Feature Importance](feature_importance.png)

### Tenure Distribution by Churn Status
![Tenure Distribution](tenure_distribution_by_churn.png)

---

## ⚙️ How to Run

```bash
# 1. Clone the repository
git clone https://github.com/HariharanHarini/customer-churn-prediction.git
cd customer-churn-prediction

# 2. Install dependencies
pip install -r requirements.txt

# 3. Run the full pipeline
python churn_prediction.py
```

**Outputs generated:**
- `churn_predictions.csv` — each customer with predicted churn probability
- `feature_importance.csv` — model feature importance rankings
- `plots/` — EDA and model evaluation visualizations

---

## 📊 Power BI Dashboard

The exported CSVs feed an interactive Power BI dashboard with:

- 📌 **KPI Cards** — Overall churn rate, predicted churns, high-risk count
- 📊 **Churn by Contract Type** — Month-to-month vs annual vs two-year
- 📈 **Tenure Analysis** — Churn rate across customer lifecycle
- 💳 **Payment Method Breakdown** — Electronic check vs other methods
- 🎯 **Feature Importance Waterfall** — Top drivers visualized

> To open: install Power BI Desktop → open `Dashboard/CustomerChurnDashboard.pbix`

---

## 🛠️ Tech Stack

| Category | Tools |
|---|---|
| Data Processing | Python, Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Machine Learning | Scikit-learn, imbalanced-learn (SMOTE) |
| Database | SQL Server (source data validation) |
| Business Intelligence | Power BI (DAX, KPI scorecards, drill-throughs) |

---

## 🗂️ Dataset

- **Source:** IBM Sample Data — [Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- **Size:** 7,043 rows × 21 columns
- **Target:** `Churn` — Yes/No (26.5% positive class)

---

## 👩‍💻 Author

**Harini Hariharan**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?logo=linkedin&logoColor=white)](https://www.linkedin.com/in/harinihariharan/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white)](https://github.com/HariharanHarini)
[![Gmail](https://img.shields.io/badge/harinihariharan0107@gmail.com-EA4335?logo=gmail&logoColor=white)](mailto:harinihariharan0107@gmail.com)
