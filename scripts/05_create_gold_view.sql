--==================================================================================
--Create VIEW: gold.grocery_analysis
--==================================================================================

DROP VIEW IF EXISTS gold.grocery_analysis;
CREATE VIEW gold.grocery_analysis AS
SELECT

    ROW_NUMBER() OVER() AS unique_key,
    item_identifier AS product_id,
    item_type AS product_category,
    item_fat_content AS fat_content,
    outlet_establishment_year ,
    outlet_identifier AS outlet_id,
    outlet_location_type  ,
    outlet_size ,	
    outlet_type ,	
    item_visibility AS product_visibility ,	
    item_weight AS product_weight,
    sales AS total_sales,
    rating AS customer_rating
FROM silver.zepto_grocery_data;

SELECT * FROM gold.grocery_analysis;
