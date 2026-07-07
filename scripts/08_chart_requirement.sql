--=============================================================================================================
--Chart's Requirements: Percentage of Sales by Outlet Size,Sales by Outlet location,All Metrics by Outlet Type
--=============================================================================================================

SELECT * FROM gold.grocery_analysis;

--Percentage of Sales by Outlet Size

SELECT
    outlet_size,
    SUM(total_sales)::DECIMAL(10,2) AS total_sales,
   ROUND(SUM(total_sales)*100 / 
                        SUM(SUM(total_sales))OVER(),2) AS sales_percentage
FROM gold.grocery_analysis
GROUP BY outlet_size
ORDER BY total_sales DESC;

WITH sales_by_size AS (
    SELECT
        outlet_size,
        SUM(total_sales) AS total_sales
    FROM gold.grocery_analysis
    GROUP BY outlet_size
)
SELECT
    outlet_size,
    total_sales,
    ROUND(
        total_sales * 100.0 /
        SUM(total_sales) OVER (),
        2
    ) AS sales_percentage
FROM sales_by_size
ORDER BY total_sales DESC;

--Sales by Outlet location
SELECT
    outlet_location_type,
    Round(SUM(total_sales),2) AS total_sales,
    ROUND((AVG(total_sales)),1) AS Avg_sales,
    COUNT(*) AS No_of_products,
    ROUND(AVG(customer_rating),1) AS avg_rating,
    ROUND(SUM(total_sales)*100 / 
                        SUM(SUM(total_sales))OVER(),2) AS sales_percentage
FROM  gold.grocery_analysis
GROUP BY outlet_location_type
ORDER BY outlet_location_type;

--All Metrics by Outlet Type
SELECT 
    outlet_type,
    Round(SUM(total_sales),2) AS total_sales,
    ROUND((AVG(total_sales)),1) AS Avg_sales,
    COUNT(*) AS No_of_products,
    ROUND(AVG(customer_rating),1) AS avg_rating,
    ROUND(SUM(total_sales)*100 / 
                        SUM(SUM(total_sales))OVER(),2) AS sales_percentage
FROM  gold.grocery_analysis
GROUP BY outlet_type
ORDER BY total_sales DESC;