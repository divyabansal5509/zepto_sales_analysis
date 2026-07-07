--==================================================================================
--KPI: Total Sales,Average Sales,Number of Products,Average Rating
--==================================================================================

SELECT * FROM gold.grocery_analysis;

--Total Sales in millions
SELECT
    Concat(((SUM(total_sales)/1000000)::Decimal(10,2)),' million') AS total_sales_millions
FROM  gold.grocery_analysis;

--Average Sales
SELECT
    ((AVG(total_sales))::INT) AS Avg_sales
FROM  gold.grocery_analysis;

--No. of Products
SELECT COUNT(*) as No_of_products
FROM gold.grocery_analysis;

--Average Rating
SELECT ROUND(AVG(customer_rating),1)as avg_rating
FROM gold.grocery_analysis;