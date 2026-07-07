--Drop and recreate the 'Zepto_DB' database
DROP DATABASE IF EXISTS "Zepto_DB" WITH (FORCE);

--CREATE the 'DataWarehouse' DATABASE;
CREATE DATABASE "Zepto_DB";

--Create SCHEMA
CREATE SCHEMA if NOT EXISTS bronze;
CREATE SCHEMA if NOT EXISTS silver;
CREATE SCHEMA if NOT EXISTS gold;
--Create table
DROP TABLE IF EXISTS bronze.zepto_grocery_data;
CREATE TABLE bronze.zepto_grocery_data(
    item_fat_content VARCHAR(50),
    item_identifier VARCHAR(50),
    item_type VARCHAR(50),
    outlet_establishment_year SMALLINT,
    outlet_identifier VARCHAR(50),
    outlet_location_type VARCHAR(50),
    outlet_size VARCHAR(50),	
    outlet_type VARCHAR(50),	
    item_visibility NUMERIC(10,9),	
    item_weight NUMERIC(6,3),
    sales NUMERIC(12,4),
    rating NUMERIC(2,1)
)