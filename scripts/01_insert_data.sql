RAISE NOTICE '>> Truncating Table: zepto_grocery_data';
TRUNCATE TABLE bronze.zepto_grocery_data;

RAISE NOTICE '>> Insert Data Into: zepto_grocery_data';

COPY bronze.zepto_grocery_data
FROM 'C:\pracitce\first practice\Zepto_Grocery_Data.csv'
WITH
(
    FORMAT CSV,
    HEADER TRUE,
    DELIMITER ','
);

SELECT * FROM bronze.zepto_grocery_data;

SELECT COUNT(*) FROM bronze.zepto_grocery_data;