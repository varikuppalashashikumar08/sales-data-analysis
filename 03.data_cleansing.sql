-- Task 1: Clean the supplier column in the products table
-- Standardize supplier names and replace NULLs with 'Unknown Supplier'

SELECT 
    product_id,
    product_name,
    CASE
        WHEN supplier IS NULL THEN 'Unknown Supplier'
        WHEN LOWER(supplier) = 'abc corp' THEN 'ABC Corp'
        ELSE supplier
    END AS cleaned_supplier
FROM products;

-- Task 2: Update the products table to clean the supplier column
-- Replace NULLs and standardize supplier names permanently

UPDATE products
SET supplier = CASE
    WHEN supplier IS NULL THEN 'Unknown Supplier'
    WHEN LOWER(supplier) = 'abc corp' THEN 'ABC Corp'
    ELSE supplier
END; 

-- Task 3: Clean the product_code column in products table
-- Standardize all codes to uppercase with dash format (e.g., LAP-001)

UPDATE products
SET product_code = CASE
    WHEN LOWER(product_code) = 'lap001' THEN 'LAP-001'
    WHEN LOWER(product_code) = 'tbl_002' THEN 'TBL-002'
    ELSE UPPER(REPLACE(product_code, '_', '-'))
END;


UPDATE products
SET supplier = CASE
    WHEN supplier IS NULL THEN 'Unknown Supplier'
    WHEN LOWER(supplier) = 'abc corp' THEN 'ABC Corp'
    ELSE supplier
END
WHERE product_id IS NOT NULL;  -- this includes all rows

select *
from products;

-- Task 4a: Identify invalid or NULL emails in the customers table
-- We want to find rows where email is missing or incorrectly formatted
SELECT email FROM customers WHERE email IS NULL;

-- Task 4b: Update customers table to fix invalid or NULL emails
-- Replace invalid or missing emails with 'unknown@gmail.com'

UPDATE customers
SET email = CASE
    WHEN email IS NULL THEN 'unknown@gmail.com'
    WHEN email NOT LIKE '%_@__%.__%' THEN 'unknown@gmail.com'
    ELSE email
END;
select *
from customers;

select * 
from sales;

-- Task 5a: Identify invalid quantity or price values in sales table
-- Quantity and price must be greater than zero and not NULL

SELECT quantity, price
FROM sales
WHERE quantity IS NULL 
   OR quantity <= 0
   OR price IS NULL
   OR price <= 0;