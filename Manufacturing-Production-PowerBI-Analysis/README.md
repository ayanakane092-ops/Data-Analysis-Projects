# Manufacturing Production Analysis & Dashboard Using Power BI

## Project Overview

This project analyzes manufacturing production data using Microsoft Power BI to monitor production performance, defects, quality status, downtime, shifts, departments, products, and monthly production trends.

The project transforms cleaned manufacturing data into an interactive Power BI dashboard that helps identify production performance patterns and areas requiring management attention.

---

## Business Problem

Manufacturing organizations need to continuously monitor production performance against targets while tracking defects, quality outcomes, downtime, departments, shifts, and products.

Raw production data can make it difficult to quickly identify:

- Whether production targets are being achieved
- Which departments are performing better or worse
- Which products have higher defect rates
- Which departments experience higher downtime
- How production changes over time
- How quality outcomes are distributed
- Which areas may require management attention

This Power BI project converts the manufacturing dataset into an interactive analytical dashboard for faster business understanding and decision-making.

---

## Project Objectives

The main objectives of this project are to:

- Measure total production against production targets
- Calculate overall production achievement
- Analyze production performance by department
- Compare production achievement across shifts
- Monitor total defects and defect rates
- Analyze quality status distribution
- Identify departments with higher average downtime
- Compare product-level production achievement
- Compare product-level defect rates
- Analyze monthly production trends
- Build an interactive dashboard using slicers and visualizations
- Provide actionable business insights from the data

---

## Dataset

The dataset contains manufacturing production records with 19 columns.

### Dataset Columns

- Production_ID
- Production_Date
- Product
- Department
- Machine
- Operator_ID
- Shift
- Production_Target
- Actual_Production
- Defects
- Downtime_Hours
- Material_Cost
- Labour_Hours
- Labour_Cost
- Order_Quantity
- Due_Date
- Actual_Delivery_Date
- Quality_Status
- Customer

### Dataset Size

- Records: 1,195
- Columns: 19

---

## Data Preparation

Power Query was used to prepare the manufacturing data before building the analytical model.

The data preparation process included:

- Loading the manufacturing dataset into Power BI
- Promoting the correct headers
- Applying appropriate data types
- Reviewing column quality
- Checking for errors and empty values
- Preparing the cleaned `Clean_Data` table
- Verifying the final dataset contains 1,195 records

The final Power Query validation showed:

- Empty values: 0
- Errors: 0

---

## Data Model

A separate date table was created to support time-based analysis.

### Date Table

The `Date_Table` contains:

- Date
- Month Name
- Month Number
- Year
- Year-Month

### Relationship

The following relationship was created:

`Clean_Data[Production_Date] → Date_Table[Date]`

The relationship is configured as a many-to-one relationship, allowing the date table to filter the manufacturing production data.

---

## DAX Measures

Six main DAX measures were created for the dashboard.

### 1. Total Actual Production

Calculates the total actual production.

### 2. Total Production Target

Calculates the total production target.

### 3. Production Achievement %

Calculates actual production as a percentage of the production target.

### 4. Total Defects

Calculates the total number of defects.

### 5. Defect Rate %

Calculates defects as a percentage of actual production.

### 6. Average Downtime

Calculates the average downtime in hours and supports the department-level downtime analysis.

These measures are used throughout the dashboard and respond dynamically to slicer selections.

---

## Interactive Dashboard

The Power BI dashboard provides an interactive view of manufacturing performance.

### KPI Cards

The dashboard includes five key performance indicators:

- Total Actual Production
- Production Achievement %
- Total Defects
- Defect Rate %
- Total Production Target

At the overall dataset level, the dashboard shows:

- Total Actual Production: 221,060
- Total Production Target: 236,926
- Production Achievement: 93.30%
- Total Defects: 10,542
- Defect Rate: 4.8%

---

## Dashboard Visualizations

The dashboard includes the following visualizations:

### 1. Quality Status Distribution

Shows the distribution of production records by quality status, including:

- Passed
- Rejected
- Rework
- Not Recorded

### 2. Production Achievement by Department

Compares production achievement percentages across departments.

### 3. Shift Performance — Production Achievement

Compares production achievement across:

- Day
- Evening
- Night

### 4. Average Downtime by Department

Shows the average downtime for each department.

### 5. Total Defects by Department

Compares the total number of defects across departments.

### 6. Monthly Production: Target vs Actual

Compares monthly production targets with actual production from January to June 2026.

### 7. Defect Rate by Product

Compares defect rates across different products.

### 8. Production Achievement by Product

Compares production achievement percentages across products.

### 9. Department Slicer

An interactive department slicer allows users to filter the dashboard by department.

The slicer was tested with different department selections, and the KPI values and dashboard visuals respond dynamically to the selected department.

---

## Key Findings

### Overall Production Performance

The manufacturing operation achieved an overall production achievement of 93.30%, with 221,060 units produced against a target of 236,926 units.

### Defects

The dataset contains 10,542 defects, resulting in an overall defect rate of approximately 4.8%.

### Department Performance

Production achievement varies across departments. Based on the analysis, Machining has the lowest production achievement among the departments at approximately 92.08%, while Spares & Repairs and Sheet Metal show the highest achievement at approximately 93.77%.

### Shift Performance

The three shifts show different production achievement levels. Evening performs highest at approximately 93.67%, followed by Day at 93.41% and Night at 92.86%.

### Downtime

Machining has the highest average downtime at approximately 4.74 hours, indicating an area that may require further operational investigation.

### Quality

The majority of production records have a quality status of Passed, while Rejected and Rework records represent additional areas for quality improvement.

### Product Performance

Production achievement and defect rates vary across products, allowing management to identify products that may require closer monitoring.

---

## Business Recommendations

Based on the analysis, the following actions can be considered:

1. Investigate the causes of lower production achievement in the Machining department.

2. Analyze machine downtime in Machining and identify recurring causes of production interruptions.

3. Monitor departments and products with relatively higher defect rates.

4. Investigate the causes of Rejected and Rework production records.

5. Compare shift-level performance regularly to identify opportunities for improving Night-shift performance.

6. Monitor monthly production against targets to identify periods of underperformance.

7. Use the interactive Power BI dashboard for regular production performance monitoring.

---

## Tools & Technologies

- Microsoft Power BI
- Power Query
- DAX
- Data Modeling
- Interactive Slicers
- Data Visualization

---

## Project Workflow

The project followed the following workflow:

Raw Manufacturing Data  
↓  
Power Query Data Preparation  
↓  
Clean_Data Table  
↓  
Date Table Creation  
↓  
Data Model & Relationship  
↓  
DAX Measures  
↓  
Interactive Visualizations  
↓  
Dashboard  
↓  
Business Insights

---

## Project Structure

```text
Manufacturing-Production-PowerBI-Analysis/
│
├── README.md
└── Manufacturing_Production_Analysis.pbix
