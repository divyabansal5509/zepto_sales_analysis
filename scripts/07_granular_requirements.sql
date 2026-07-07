--==================================================================================
--Granular Requirements: Total Sales by Fat Content,Total Sales by Product Category,Number of Products,Average Rating
--==================================================================================

SELECT * FROM gold.grocery_analysis;

--Total Sales by Fat Content
SELECT
    fat_content,
    ROUND(SUM(total_sales),2) AS total_sales,
    ROUND((AVG(total_sales)),1) AS Avg_sales,
    COUNT(*) AS No_of_products,
    ROUND(AVG(customer_rating),1) AS avg_rating  
FROM  gold.grocery_analysis
GROUP BY fat_content
ORDER BY total_sales DESC;

--Total Sales by Product Category
SELECT
    product_category,
    Round(SUM(total_sales),2) AS total_sales,
    ROUND((AVG(total_sales)),1) AS Avg_sales,
    COUNT(*) AS No_of_products,
    ROUND(AVG(customer_rating),1) AS avg_rating
FROM  gold.grocery_analysis
GROUP BY product_category
ORDER BY total_sales DESC;

--Fat Content by Outlet for Total Sales
SELECT
    outlet_location_type,
    fat_content,
    ROUND(SUM(total_sales),2) AS total_sales,
    ROUND((AVG(total_sales)),1) AS Avg_sales,
    COUNT(*) AS No_of_products,
    ROUND(AVG(customer_rating),1) AS avg_rating  
FROM  gold.grocery_analysis
GROUP BY outlet_location_type,fat_content
ORDER BY total_sales DESC;

SELECT
    outlet_location_type,
    COALESCE(
        SUM(total_sales)
            FILTER (WHERE fat_content = 'Low Fat'),
        0
    ) AS low_fat,

    COALESCE(
        SUM(total_sales)
            FILTER (WHERE fat_content = 'Regular'),
        0
    ) AS regular

FROM gold.grocery_analysis
GROUP BY outlet_location_type
ORDER BY outlet_location_type;

--Total Sales by outlet_establishment
SELECT
    outlet_establishment_year,
    Round(SUM(total_sales),2) AS total_sales,
    ROUND((AVG(total_sales)),1) AS Avg_sales,
    COUNT(*) AS No_of_products,
    ROUND(AVG(customer_rating),1) AS avg_rating
FROM  gold.grocery_analysis
GROUP BY outlet_establishment_year
ORDER BY outlet_establishment_year;