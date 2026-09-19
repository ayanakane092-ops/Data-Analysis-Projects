/*
====================================================
Project Title : Manufacturing Production Analytics
Database      : manufacturing_analytics
Table         : manufacturing_production
Tools         : MySQL Workbench
Author        : Mohammed Ali Akbar Sarkar
Description   : Analysis of production, quality,
                downtime, department and shift performance
====================================================
*/

USE manufacturing_analytics;

-- ============================================================
-- 01. DATA QUALITY CHECK
-- ============================================================

SELECT
    SUM(Production_ID IS NULL) AS Missing_Production_ID,
    SUM(Production_Date IS NULL) AS Missing_Production_Date,
    SUM(Product IS NULL) AS Missing_Product,
    SUM(Department IS NULL) AS Missing_Department,
    SUM(Actual_Production IS NULL) AS Missing_Actual_Production,
    SUM(Quality_Status IS NULL) AS Missing_Quality_Status
FROM manufacturing_analytics.manufacturing_production;


-- ============================================================
-- 02. DUPLICATE CHECK
-- ============================================================

SELECT
    Production_ID,
    COUNT(*) AS Duplicate_Count
FROM manufacturing_analytics.manufacturing_production
GROUP BY Production_ID
HAVING COUNT(*) > 1;


-- ============================================================
-- 03. OVERALL PRODUCTION SUMMARY
-- ============================================================

SELECT
    SUM(Production_Target) AS Total_Production_Target,
    SUM(Actual_Production) AS Total_Actual_Production,
    SUM(Defects) AS Total_Defects,
    ROUND(
        SUM(Actual_Production) /
        SUM(Production_Target) * 100,
        2
    ) AS Overall_Achievement_Percentage
FROM manufacturing_analytics.manufacturing_production;


-- ============================================================
-- 04. DEPARTMENT-WISE PERFORMANCE
-- ============================================================

SELECT
    Department,
    SUM(Production_Target) AS Total_Production_Target,
    SUM(Actual_Production) AS Total_Actual_Production,
    SUM(Defects) AS Total_Defects,
    ROUND(
        SUM(Actual_Production) /
        SUM(Production_Target) * 100,
        2
    ) AS Achievement_Percentage
FROM manufacturing_analytics.manufacturing_production
GROUP BY Department
ORDER BY Achievement_Percentage DESC;


-- ============================================================
-- 05. PRODUCT-WISE PERFORMANCE
-- ============================================================

SELECT
    Product,
    SUM(Production_Target) AS Total_Production_Target,
    SUM(Actual_Production) AS Total_Actual_Production,
    SUM(Defects) AS Total_Defects,
    ROUND(
        SUM(Actual_Production) /
        SUM(Production_Target) * 100,
        2
    ) AS Achievement_Percentage
FROM manufacturing_analytics.manufacturing_production
GROUP BY Product
ORDER BY Achievement_Percentage DESC;


-- ============================================================
-- 06. SHIFT-WISE PERFORMANCE
-- ============================================================

SELECT
    Shift,
    SUM(Production_Target) AS Total_Production_Target,
    SUM(Actual_Production) AS Total_Actual_Production,
    SUM(Defects) AS Total_Defects,
    ROUND(
        SUM(Actual_Production) /
        SUM(Production_Target) * 100,
        2
    ) AS Achievement_Percentage
FROM manufacturing_analytics.manufacturing_production
GROUP BY Shift
ORDER BY Achievement_Percentage DESC;


-- ============================================================
-- 07. QUALITY STATUS ANALYSIS
-- ============================================================

SELECT
    Quality_Status,
    COUNT(*) AS Total_Records,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*)
         FROM manufacturing_analytics.manufacturing_production),
        2
    ) AS Percentage_of_Total
FROM manufacturing_analytics.manufacturing_production
GROUP BY Quality_Status
ORDER BY Total_Records DESC;


-- ============================================================
-- 08. DEPARTMENT-WISE DOWNTIME ANALYSIS
-- ============================================================

SELECT
    Department,
    ROUND(AVG(Downtime_Hours), 2) AS Average_Downtime_Hours,
    ROUND(SUM(Downtime_Hours), 2) AS Total_Downtime_Hours
FROM manufacturing_analytics.manufacturing_production
GROUP BY Department
ORDER BY Average_Downtime_Hours DESC;


-- ============================================================
-- 09. MONTHLY PRODUCTION TREND
-- ============================================================

SELECT
    DATE_FORMAT(MIN(Production_Date), '%b-%Y') AS Production_Month,
    SUM(Production_Target) AS Total_Production_Target,
    SUM(Actual_Production) AS Total_Actual_Production,
    ROUND(
        SUM(Actual_Production) /
        SUM(Production_Target) * 100,
        2
    ) AS Achievement_Percentage
FROM manufacturing_analytics.manufacturing_production
GROUP BY
    YEAR(Production_Date),
    MONTH(Production_Date)
ORDER BY
    YEAR(Production_Date),
    MONTH(Production_Date);


-- ============================================================
-- 10. MANAGEMENT PERFORMANCE CLASSIFICATION
-- ============================================================

SELECT
    Department,

    ROUND(
        SUM(Actual_Production) /
        SUM(Production_Target) * 100,
        2
    ) AS Achievement_Percentage,

    ROUND(
        SUM(Defects) /
        SUM(Actual_Production) * 100,
        2
    ) AS Defect_Rate_Percentage,

    ROUND(AVG(Downtime_Hours), 2) AS Average_Downtime_Hours,

    SUM(Defects) AS Total_Defects,

    CASE
        WHEN
            SUM(Actual_Production) /
            SUM(Production_Target) * 100 >= 93
            AND
            SUM(Defects) /
            SUM(Actual_Production) * 100 < 5
        THEN 'Strong Performance'

        WHEN
            SUM(Actual_Production) /
            SUM(Production_Target) * 100 >= 92
            AND
            SUM(Defects) /
            SUM(Actual_Production) * 100 < 5
        THEN 'Moderate Performance'

        ELSE 'Needs Attention'
    END AS Management_Category

FROM manufacturing_analytics.manufacturing_production

GROUP BY Department

ORDER BY Achievement_Percentage DESC;


-- ============================================================
-- 11. DEPARTMENT PERFORMANCE RANKING
-- ============================================================

WITH Department_Performance AS (

    SELECT
        Department,
        ROUND(
            SUM(Actual_Production) /
            SUM(Production_Target) * 100,
            2
        ) AS Achievement_Percentage

    FROM manufacturing_analytics.manufacturing_production

    GROUP BY Department
)

SELECT
    Department,
    Achievement_Percentage,

    RANK() OVER (
        ORDER BY Achievement_Percentage DESC
    ) AS Achievement_Rank

FROM Department_Performance

ORDER BY Achievement_Rank;


-- ============================================================
-- 12. DEPARTMENT PERFORMANCE DENSE RANKING
-- ============================================================

WITH Department_Performance AS (

    SELECT
        Department,
        ROUND(
            SUM(Actual_Production) /
            SUM(Production_Target) * 100,
            2
        ) AS Achievement_Percentage

    FROM manufacturing_analytics.manufacturing_production

    GROUP BY Department
)

SELECT
    Department,
    Achievement_Percentage,

    DENSE_RANK() OVER (
        ORDER BY Achievement_Percentage DESC
    ) AS Dense_Ranking

FROM Department_Performance

ORDER BY Dense_Ranking;


-- ============================================================
-- 13. TOP-PERFORMING PRODUCT BY DEPARTMENT
-- ============================================================

WITH Product_Performance AS (

    SELECT
        Department,
        Product,
        ROUND(
            SUM(Actual_Production) /
            SUM(Production_Target) * 100,
            2
        ) AS Achievement_Percentage

    FROM manufacturing_analytics.manufacturing_production

    GROUP BY Department, Product
),

Ranked_Products AS (

    SELECT
        Department,
        Product,
        Achievement_Percentage,

        ROW_NUMBER() OVER (
            PARTITION BY Department
            ORDER BY Achievement_Percentage DESC
        ) AS Product_Rank

    FROM Product_Performance
)

SELECT
    Department,
    Product,
    Achievement_Percentage

FROM Ranked_Products

WHERE Product_Rank = 1

ORDER BY Achievement_Percentage DESC;
