# Manufacturing Production Analysis & Dashboard Using Excel
## Project Overview

This project analyzes manufacturing production data using Microsoft Excel to evaluate production performance, quality, downtime, and operational efficiency.

The project includes data cleaning, formula-based analysis, Pivot Tables, dynamic filtering, and an interactive Excel dashboard with KPI cards, charts, and slicers.


## Business Problem

Manufacturing operations generate large amounts of production data that can be difficult to interpret without structured analysis.

This project focuses on answering practical business questions such as:

- How closely is actual production meeting production targets?
- Which departments have higher or lower production achievement?
- Which areas have higher defect or rejection rates?
- Which department has the highest average downtime?
- How does production performance vary across shifts and products?
- What insights can be presented to management through an interactive dashboard?


## Project Objectives

- Clean and organize raw manufacturing data.
- Analyze production target versus actual production.
- Measure production achievement percentages.
- Analyze defects and quality status.
- Compare performance across departments, shifts, and products.
- Analyze downtime and operational performance.
- Build dynamic Excel-based analysis using formulas and Pivot Tables.
- Create an interactive dashboard for management-level reporting.


## Dataset

The dataset contains **1,195 manufacturing production records** across **19 columns**.

Key fields include:

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


## Workbook Structure

The Excel workbook contains the following worksheets:

| Worksheet | Purpose |
|---|---|
| Dashboard | Interactive management dashboard with KPIs, charts, and slicers |
| Raw_Data | Original production dataset |
| Clean_Data | Cleaned and prepared dataset |
| Formula_Analysis | Formula-based analysis and management insights |
| Product_Lookup | Product reference data used for dynamic lookup and selection |
| Pivot_Analysis | Pivot Table-based production analysis |


## Data Cleaning & Preparation

The raw manufacturing data was reviewed and prepared for analysis.

Key data preparation activities included:

- Checking for duplicate records
- Reviewing missing values
- Standardizing the dataset structure
- Preparing the cleaned dataset for analysis
- Creating a separate cleaned-data worksheet
- Preparing lookup data for dynamic analysis


## Excel Techniques Used

The project uses a range of practical Excel techniques commonly used in data analysis and reporting.

### Formulas

- `XLOOKUP`
- `SUMIFS`
- `AVERAGEIFS`
- `COUNTIFS`
- `FILTER`
- Percentage calculations

### Data Analysis

- Pivot Tables
- Dynamic filtering
- Dropdown selections
- Conditional formatting
- KPI calculations

### Dashboard

- KPI cards
- Interactive slicers
- Production charts
- Quality analysis
- Department-level analysis
- Dynamic management insights


## Dashboard

The interactive dashboard provides a summarized view of manufacturing performance.

The dashboard includes:

- Production Target
- Actual Production
- Achievement %
- Defects
- Record Count
- Department analysis
- Quality analysis
- Downtime analysis
- Interactive slicers
- Multiple charts for management reporting

The slicers allow users to filter the dashboard and dynamically update the KPI values and analysis.


## Key Findings

### Overall Production Performance

The dataset contains a total production target of **236,926 units** and actual production of **221,060 units**.

Overall production achievement was **93.30%**.


### Department Performance

| Department | Achievement |
|---|---:|
| Spares & Repairs | 93.77% |
| Sheet Metal | 93.77% |
| Assembly | 93.66% |
| Composite | 93.45% |
| Surface Treatment | 92.31% |
| Machining | 92.08% |


### Shift Performance

| Shift | Achievement |
|---|---:|
| Evening | 93.67% |
| Day | 93.41% |
| Night | 92.86% |


### Quality Status

| Quality Status | Records | Percentage |
|---|---:|---:|
| Passed | 717 | 60.00% |
| Rejected | 243 | 20.33% |
| Rework | 231 | 19.33% |
| Not Recorded | 4 | 0.33% |


### Other Operational Findings

- The highest average downtime in the analysis was recorded for **Machining: 4.74 hours**.
- The highest rejection rate in the dashboard analysis was **Sheet Metal: approximately 25.1%**.
- The dashboard's quality-performance analysis identified **Machining with a 62.8% passed rate**.
- Department, shift, product, quality, and downtime metrics can be explored interactively through the dashboard.


## Business Recommendations

Based on the analysis, management can consider:

- Investigating the causes of production gaps between targets and actual output.
- Reviewing downtime causes in departments with higher average downtime.
- Investigating rejection and rework patterns to identify potential quality issues.
- Comparing performance across shifts to identify operational differences.
- Monitoring departments and products with relatively lower achievement.
- Using the interactive dashboard for regular production and quality monitoring.


## Project Structure

```text
Data-Analysis-Projects/
│
├── Manufacturing-Production-Excel-Analysis/
│   ├── README.md
│   └── Project_1_Manufacturing_Raw_Data(2).xlsx
│
└── ...
