# Manufacturing Production Data Analysis

## Executive Summary

This project analyzes manufacturing production data to evaluate production performance, product quality, machine efficiency, delivery performance, downtime, and production costs.

The analysis uses **1,195 production records** covering six departments, eight product types, and sixteen machines.

### Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Production Records | 1,195 |
| Total Production Target | 236,926 |
| Total Actual Production | 221,060 |
| Production Achievement | 93.30% |
| Total Defects | 10,542 |
| Overall Defect Rate | 4.77% |
| Total Downtime | 5,262.10 hours |
| On-time Delivery Rate | 61.76% |
| Late Delivery Rate | 38.24% |

### Key Business Insights

1. **Production Performance:** Overall production achievement was 93.30%. Assembly Kit Y recorded the highest product-level achievement at 94.68%.

2. **Department Performance:** Sheet Metal and Spares & Repairs achieved the highest department-level production performance at 93.77%.

3. **Product Quality:** The overall defect rate was 4.77%. Composite recorded the highest department-level defect rate at 4.99%.

4. **Shift Performance:** The Night Shift had the highest defect rate at 4.98%, while the Evening Shift had the lowest at 4.45%.

5. **Machine Performance:** CNC-01 achieved the highest production achievement at 94.92%, while Surface-02 recorded the lowest at 90.18%.

6. **Downtime Efficiency:** CNC-04 recorded the highest downtime intensity at 28.93 hours per 1,000 production units.

7. **Delivery Performance:** 61.76% of deliveries were on time. Late deliveries had an average delay of 2.37 days.

8. **Cost Analysis:** Composite had the highest calculated cost per unit at 300.79, while Spares & Repairs had the lowest at 93.08.

### Recommendations

- Investigate production gaps in departments and machines with relatively lower achievement.
- Review quality performance across shifts and departments to identify areas requiring further investigation.
- Examine downtime patterns, particularly for machines with higher downtime per 1,000 units.
- Investigate the causes of late deliveries and identify opportunities to improve delivery performance.
- Validate cost data and measurement units before making operational or financial decisions.

### Data Limitations

- Eight records have missing Operator IDs, so operator-level analysis covers 1,187 records rather than all 1,195 records.
- Six records have missing Customer values.
- Four records have an unrecorded Quality Status.
- Material Cost is substantially higher than Labour Cost. The cost fields and their units require further validation.
- Cost calculations include Material Cost and Labour Cost only; overhead and other operating expenses are excluded.

### Conclusion

This project demonstrates an end-to-end manufacturing data analysis workflow, including data preparation, exploratory analysis, KPI calculation, performance evaluation, visualization, and business insight development using Python.

The findings provide a structured overview of production, quality, delivery, machine, downtime, and cost performance.