# HR Employee Data Analysis using SQL

This project focuses on analyzing HR employee data to derive actionable insights related to salary classification, department benefits, employee experience levels, performance grading, and transfer eligibility. The analysis was performed using **SQL Server (SSMS)** on a structured dataset named `employee_data`.

---

## 🗂️ Dataset Description

| Column Name     | Description |
|----------------|-------------|
| employee_id     | Unique identifier for each employee |
| name            | Employee full name |
| department      | Department the employee belongs to |
| salary          | Monthly salary |
| city            | Work location city |
| join_date       | Date when employee joined the organization |

Additional calculated fields were derived using SQL such as:
- Salary Category
- Bonus Eligibility
- Experience Level
- Work Location Zone
- Transfer Suggestion
- Performance Grade
- Allowance Allocation

---

## 🎯 Objective

To perform **HR data analysis** that helps in:
- Salary-based classification
- Department bonus & allowance decisions
- Location-based workforce planning
- Identifying employee retention and experience levels
- Performance segmentation

---

## ✅ Key SQL Queries & Insights

### 1) Salary Categorization
Classifying employees into High, Medium, and Low salary groups using CASE.

### 2) Bonus Eligibility (By Department)
- IT & Finance → 10% Bonus  
- Sales → 15% Bonus  
- Others → No Bonus  

### 3) Metro vs Non-Metro Work Locations
Bangalore, Mumbai, Delhi → Metro; Others → Non-Metro

### 4) Experience Level
Based on years since join date:
- **Senior** ≥ 5 years  
- **Mid** 2–5 years  
- **Junior** < 2 years

### 5) Salary Review Flag
Employees earning less than ₹30,000 classified for review.

### 6) Allowance Calculation
Department-based allowance percentages appended as a column.

### 7) Transfer Suggestion
Employees from Kolkata and Pune identified as eligible for transfer.

### 8) Performance Grading
Custom salary-based grading into A, B, C, D.

### 9) Employee Salary Category Count
Grouped counts of High / Medium / Low salary employees.

### 10) Data Cleaning
Replacing NULL values in `city` and `department` using `ISNULL()`.

---

## 🧠 Skills Demonstrated

- SQL Joins, Filtering, and Grouping
- CASE WHEN Conditional Logic
- Date Functions (`DATEDIFF`)
- Data Cleaning & Formatting
- Update Queries & Table Alteration
- Analytical Query Writing for Business Insights

---

## 🛠️ Tools Used
| Tool | Purpose |
|------|---------|
| **SQL Server (SSMS)** | Query execution and database management |
| Excel / CSV (optional) | Data export and reporting |

---

## 📌 Project Use Cases

This analysis can support:
- HR decision-making
- Workforce planning
- Performance-based compensation
- Employee retention analysis
- Data Analytics & BI reporting pipelines

---

## 🤝 Contributing
Feel free to fork the repo and submit improvements via pull requests.

---

## ⭐ If you found this helpful
Give this repo a **star** to support future projects! ⭐

