
DROP TABLE IF EXISTS silver.zepto_grocery_data;
CREATE TABLE silver.zepto_grocery_data(
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
    rating NUMERIC(2,1),
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

