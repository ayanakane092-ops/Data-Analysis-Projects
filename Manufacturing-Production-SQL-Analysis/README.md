# Manufacturing Production Performance & Quality Analysis Using SQL

## Project Overview

This project analyzes manufacturing production data using SQL in MySQL to evaluate production achievement, department performance, product performance, shift performance, quality status, downtime, and monthly production trends.

The analysis is designed to demonstrate how SQL can be used to transform manufacturing data into meaningful business insights and support data-driven decision-making.

---

## Business Problem

Manufacturing management needs to understand whether production targets are being achieved efficiently and where operational issues may exist.

This project addresses questions such as:

- Are production targets being achieved?
- Which departments have higher or lower production achievement?
- Which products perform better?
- How does production performance vary across shifts?
- What is the distribution of quality status?
- Which departments have higher downtime?
- How does production performance change over time?
- Which departments and products require further attention?

---

## Project Objectives

The main objectives of this project are to:

- Measure overall production achievement.
- Compare department-wise production performance.
- Analyze product-wise performance.
- Compare Day, Evening, and Night shift performance.
- Examine quality status distribution.
- Analyze department-wise downtime.
- Identify monthly production trends.
- Classify department performance using defined business rules.
- Rank departments based on production achievement.
- Identify the top-performing product within each department.

---

## Dataset

The dataset contains **1,195 manufacturing production records** and **19 columns**.

### Database

- **Database:** `manufacturing_analytics`
- **Table:** `manufacturing_production`
- **Tool:** MySQL Workbench

### Main Data Fields

The dataset includes information related to:

- Production ID
- Production Date
- Product
- Department
- Machine
- Operator ID
- Shift
- Production Target
- Actual Production
- Defects
- Downtime Hours
- Material Cost
- Labour Hours
- Labour Cost
- Order Quantity
- Due Date
- Actual Delivery Date
- Quality Status
- Customer

---

## Tools Used

- MySQL
- MySQL Workbench
- SQL
- CSV dataset
- Excel for initial data cleaning and preparation

---

## SQL Techniques Used

The project applies several SQL techniques, including:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `SUM()`
- `COUNT()`
- `AVG()`
- `ROUND()`
- Subqueries
- `CASE WHEN`
- Common Table Expressions (`WITH`)
- Window Functions
- `RANK()`
- `DENSE_RANK()`
- `ROW_NUMBER()`
- `PARTITION BY`
- Date functions such as `YEAR()`, `MONTH()`, and `DATE_FORMAT()`

---

## Analysis Performed

### 1. Data Quality Check

Checked important fields for missing values, including:

- Production ID
- Production Date
- Product
- Department
- Actual Production
- Quality Status

### 2. Duplicate Check

Checked for duplicate production IDs in the dataset.

### 3. Overall Production Summary

Calculated:

- Total Production Target
- Total Actual Production
- Total Defects
- Overall Production Achievement

### 4. Department-wise Performance

Compared production target, actual production, defects, and achievement percentage across departments.

### 5. Product-wise Performance

Analyzed production performance and achievement percentage for individual products.

### 6. Shift-wise Performance

Compared production performance across:

- Day Shift
- Evening Shift
- Night Shift

### 7. Quality Status Analysis

Analyzed the distribution of:

- Passed
- Rework
- Rejected
- Not Recorded

### 8. Department-wise Downtime

Calculated average and total downtime for each department.

### 9. Monthly Production Trend

Analyzed production target, actual production, and achievement percentage by month.

### 10. Management Performance Classification

Applied project-defined performance rules using:

- Achievement percentage
- Defect rate

Departments were classified as:

- Strong Performance
- Moderate Performance
- Needs Attention

### 11. Department Performance Ranking

Used the `RANK()` window function to rank departments according to production achievement.

### 12. Dense Ranking

Used `DENSE_RANK()` to create department performance rankings.

### 13. Top-performing Product by Department

Used `ROW_NUMBER()` with `PARTITION BY` to identify the highest-achieving product within each department.

---

## Key Findings

### Overall Production Performance

- **Total Production Target:** 236,926 units
- **Total Actual Production:** 221,060 units
- **Overall Achievement:** 93.30%
- **Total Defects:** 10,542 units

The overall production achievement was 93.30%, with actual production remaining below the planned production target.

### Department Performance

| Department | Achievement |
|---|---:|
| Spares & Repairs | 93.77% |
| Sheet Metal | 93.77% |
| Assembly | 93.66% |
| Composite | 93.45% |
| Surface Treatment | 92.31% |
| Machining | 92.08% |

Spares & Repairs and Sheet Metal recorded the highest department-level achievement, while Machining recorded the lowest.

### Shift Performance

| Shift | Achievement |
|---|---:|
| Evening | 93.67% |
| Day | 93.41% |
| Night | 92.86% |

The Evening Shift recorded the highest achievement, while the Night Shift recorded the lowest among the three shifts.

### Product Performance

| Product | Achievement |
|---|---:|
| Assembly Kit Y | 94.68% |
| Composite Panel A | 94.57% |
| Repair Component | 93.77% |
| Sheet Metal Bracket | 93.77% |
| Assembly Kit X | 92.63% |
| Composite Panel B | 92.55% |
| Surface Treatment Part | 92.31% |
| Machined Housing | 92.08% |

Assembly Kit Y recorded the highest production achievement among the analyzed products.

### Quality Performance

| Quality Status | Records | Percentage |
|---|---:|---:|
| Passed | 717 | 60.00% |
| Rejected | 243 | 20.33% |
| Rework | 231 | 19.33% |
| Not Recorded | 4 | 0.33% |

Passed records represented 60.00% of all production records. Rework and Rejected records together represented approximately 39.66%.

### Downtime Performance

Machining recorded the highest average downtime at approximately **4.74 hours**, while Sheet Metal recorded the lowest average downtime at approximately **4.25 hours**.

---

## Business Recommendations

Based on the analysis, several areas can be investigated further:

### Machining Department

Machining recorded the lowest production achievement and highest average downtime.

Potential areas for investigation include:

- Machine breakdowns
- Preventive maintenance
- Machine setup and changeover time
- Operator availability
- Production scheduling

### Night Shift

The Night Shift recorded the lowest achievement among the three shifts.

Management can investigate differences in:

- Staffing
- Operator experience
- Machine availability
- Supervision
- Maintenance response time
- Workload distribution

### Quality Improvement

The analysis shows a significant proportion of records classified as Rework or Rejected.

Potential improvement areas include:

- Defect analysis
- Root-cause analysis
- In-process quality inspection
- Operator training
- Product-level quality monitoring

### High-performing but Higher-defect Products

Assembly Kit Y recorded the highest production achievement, while its defect rate was approximately 5.04%.

This demonstrates the importance of monitoring productivity and quality together rather than focusing on production output alone.

### Performance Monitoring

A recurring management dashboard or report could monitor:

- Production achievement
- Defect rate
- Rework and rejection
- Downtime
- Shift performance
- Department performance
- Monthly trends

---

## Project Structure

```text
Manufacturing-Production-SQL-Analysis/
│
├── manufacturing_analysis.sql
└── README.md
