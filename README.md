# 📊 E-Commerce Customer Churn: Risk Drivers & Retention Insights

## 📋 Project Overview

An end-to-end Customer Churn Analysis project built using PostgreSQL, Python, and Power BI. This project demonstrates a complete SQL → Python → Power BI pipeline, including data import and modeling, data cleaning, exploratory data analysis, DAX measure development, and interactive dashboard design.

The objective of this project is to identify the key drivers of customer churn in an e-commerce business and support retention strategy through interactive visualizations.

---

## ⭐ Key Features

### 1. 🗄️ Data Import & Modeling (PostgreSQL)

* Imported raw dataset into PostgreSQL by creating a staging table
* Generated a unique `customer_id` using `SERIAL PRIMARY KEY`
* Split the dataset into two related tables (`customers`, `transactions`) to build a star-schema-style structure
* Connected both tables on `customer_id` for relational analysis

### 2. 🧹 Data Cleaning & Validation (Python)

Performed comprehensive data cleaning using Pandas:

* Validated data types across all columns in both tables
* Verified `customer_id` uniqueness with no duplicates
* Checked for inconsistent text formatting
* Identified and treated missing values using median imputation (`tenure`, `warehouse_to_home`, `day_since_last_order`)
* Validated business rules across all numerical columns (no invalid negative or out-of-range values)
* Cross-validated `day_since_last_order` against `tenure` after merging tables, confirming 263 flagged records were valid, not data errors
* Identified and noted outliers (`warehouse_to_home`, `number_of_address`)
* Checked for and confirmed no duplicate records

### 3. 📈 Exploratory Data Analysis (Python)

* Analyzed churn against tenure, satisfaction score, marital status, device count, complaints, order category, delivery distance, order recency, and cashback amount
* Verified key statistics using groupby aggregations to confirm findings before visualizing

### 4. 📊 KPI & DAX Development (Power BI)

Created key business metrics using DAX:

* Total Customers
* Churned Customers
* Churn Rate
* Avg Tenure
* Churn Rate by High Complaint

### 5. 🖥️ Interactive Dashboard (Power BI)

Developed an interactive Power BI dashboard featuring:

* Churn Rate by Satisfaction Score
* Avg Tenure: Retained vs Churned
* Churn Rate by Marital Status
* Churn Rate by Preferred Order Category
* Churn Rate by Number of Devices Registered
* Interactive Slicers

  * Marital Status
  * Preferred Order Category
  * Complain

---

## 🛠️ Technologies Used

* PostgreSQL
* Python (Pandas)
* Power BI
* DAX
* CSV Data Source

---

## 📂 Dataset Information

### Raw Dataset

* E_Commerce_Churn_Raw.csv

### Cleaned Tables

* customers_clean
* transactions_clean

The cleaned tables were generated after performing data validation, missing value treatment, and business rule checks in Python.

---

## 📊 Business Insights

### ⏳ Tenure Performance

* Retained customers average 11.33 months of tenure.
* Churned customers average only 3.71 months of tenure, the strongest separator in the dataset.

### 😐 Satisfaction Score Performance

* Churn rate increases as satisfaction score increases (11.5% at score 1 to 24.9% at score 5).
* This counterintuitive pattern likely reflects that the score captures a single interaction rather than overall loyalty.

### 💍 Marital Status Performance

* Married customers churn the least.
* Single customers churn the most.

### 📱 Device & Engagement Performance

* Customers with more registered devices show higher churn, possibly indicating multi-platform users who switch services more easily.

### 🛍️ Order Category Performance

* Grocery category customers churn the least.
* Mobile category customers churn the most.

### 📞 Complaint Performance

* Customers who filed a complaint churn at a meaningfully higher rate than those who did not.

### 💰 Cashback Performance

* Retained customers receive a higher average cashback (₹180) compared to churned customers (₹159), suggesting cashback may support retention.

### 🔍 Root Cause Analysis

A detailed cross-filtering analysis revealed:

* Customers combining multiple risk factors at once (e.g., single marital status, Fashion category preference, and an active complaint) showed a churn rate as high as 82%, compared to a baseline churn rate of roughly 17%.
* This indicates that churn risk compounds, customers with several risk signals together are far more likely to leave than any single factor alone would suggest.

---

## 💡 Recommendations

### Early Tenure Retention

* Prioritize retention outreach for customers within their first few months, since this is the highest-risk period.
* Introduce onboarding check-ins or early loyalty incentives.

### Complaint Resolution Priority

* Treat any customer complaint as a churn-risk signal, not just a service issue.
* Fast-track resolution and follow-up for complaining customers.

### Re-Evaluate Satisfaction Surveys

* Investigate why high satisfaction scores correlate with higher churn.
* Consider supplementing single-interaction satisfaction scores with broader loyalty indicators.

### Targeted High-Risk Segments

* Build a combined risk score (tenure + complaint + category) to flag compounding-risk customers for proactive intervention.

---

## 📁 Project Deliverables

### Dashboard Files

* churn_dashboard.pbix

### Documentation

* README.md (this file)

### Dataset & Scripts

* table_creation_and_split.sql
* cleaning_and_eda.ipynb

### Dashboard Screenshots

* dashboard_screenshot.png

---

## 🎯 Skills Demonstrated

✅ SQL (PostgreSQL) — Table Creation & Data Modeling

✅ Data Cleaning

✅ Data Validation

✅ Cross-Table Anomaly Investigation

✅ Exploratory Data Analysis (Python/Pandas)

✅ DAX Measures

✅ KPI Development

✅ Dashboard Design

✅ Business Analysis

✅ Root Cause Analysis

✅ Data Visualization

✅ Business Recommendations

---

## 🚀 Project Workflow

Raw Dataset
↓
PostgreSQL Import & Table Split
↓
Python Data Cleaning
↓
Exploratory Data Analysis
↓
Power BI Data Modeling
↓
DAX Measures
↓
Dashboard Development
↓
Business Insights
↓
Recommendations

---

## 🎓 Learning Outcomes

This project demonstrates practical experience in:

* Data Import and Modeling using SQL
* Data Cleaning using Python (Pandas)
* Cross-table validation and anomaly investigation
* DAX Measure Development
* Interactive Dashboard Design
* Business Performance Analysis
* Insight Generation
* Decision Support Reporting

---

## 🔧 Tools & Environment

* PostgreSQL / pgAdmin
* VS Code (Jupyter Notebook)
* Power BI Desktop
* DAX

---

## 📌 Project Status

✅ Complete

Resume Project — Data Analyst Role Application
