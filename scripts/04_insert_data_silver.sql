
INSERT INTO silver.zepto_grocery_data(
    item_fat_content ,
    item_identifier,
    item_type,
    outlet_establishment_year,
    outlet_identifier ,
    outlet_location_type,
    outlet_size ,	
    outlet_type ,	
    item_visibility ,	
    item_weight,
    sales,
    rating
)
SELECT 
    CASE
        WHEN item_fat_content IN('LF','low fat') THEN 'Low Fat'
        WHEN item_fat_content IN('reg') THEN 'Regular'
        ELSE item_fat_content
    END AS item_fat_content,
    item_identifier,
    item_type,
    outlet_establishment_year,
    outlet_identifier,
    outlet_location_type,
    outlet_size,
    outlet_type,
    item_visibility,
    item_weight,
    sales,
    rating
    FROM bronze.zepto_grocery_data;

    SELECT * FROM silver.zepto_grocery_data;