SELECT * FROM bronze.zepto_grocery_data;

--Checking item_fat_content
SELECT DISTINCT item_fat_content FROM  bronze.zepto_grocery_data;
SELECT item_fat_content FROM bronze.zepto_grocery_data WHERE item_fat_content = '' ;

--Checking item_identifier and item_type
SELECT COUNT(DISTINCT item_identifier) FROM bronze.zepto_grocery_data;
SELECT DISTINCT item_type FROM bronze.zepto_grocery_data;


SELECT outlet_establishment_year FROM bronze.zepto_grocery_data WHERE outlet_establishment_year is NULL ;
