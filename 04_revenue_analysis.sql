-- task 1: Total revenue from all sales
SELECT SUM(quantity * price) AS revenue
FROM sales;

-- tak 2: Revenue per store
SELECT store, SUM(quantity * price) AS revenue
FROM sales
GROUP BY store;

-- task 3 “How many units of each product were sold overall?”
SELECT product, SUM(quantity) AS total_quantity_sold
FROM sales
GROUP BY product
Order by product;

-- task 4“Which product generated the most revenue?
SELECT product, SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 1;

-- task 5 Write a query to show daily total revenue
SELECT sale_date, SUM(quantity * price) AS revenue
FROM sales
GROUP BY sale_date
ORDER BY sale_date;

-- task 6 revenue per store and per product together.
SELECT store, product, SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY store, product
ORDER BY total_revenue DESC;

-- Task 7: Calculate total revenue per store using a CTE
-- Include grand total of all stores

WITH total_revenue AS (
    SELECT 
        store, 
        SUM(quantity * price) AS revenue
    FROM sales
    GROUP BY store
)
SELECT 
    store, 
    revenue
FROM total_revenue

UNION ALL

SELECT 
    'Grand Total' AS store,
    SUM(revenue) AS revenue
FROM total_revenue

ORDER BY 
    CASE WHEN store = 'Grand Total' THEN 2 ELSE 1 END,
    revenue DESC;
    
    
    -- Monthly revenue calculation
-- Revenue = quantity * price

SELECT 
    YEAR(sale_date) AS year,
    MONTH(sale_date) AS month,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY 
    YEAR(sale_date),
    MONTH(sale_date)
ORDER BY 
    year, month;
    
    select*
    from sales;
    
 SET SQL_SAFE_UPDATES = 0;   
   
WITH total_revenue_by_product AS (
    SELECT 
        product,
        SUM(quantity * price) AS revenue
    FROM sales
    GROUP BY product
)
SELECT 
    product,
    revenue
FROM total_revenue_by_product
ORDER BY revenue DESC
LIMIT 1;
 
 
 -- Rank all products by total revenue from highest to lowest.
-- Show product, total revenue, and rank.
   SELECT
    product,
    SUM(quantity * price) AS revenue,
    RANK() OVER (ORDER BY SUM(quantity * price) DESC) AS revenue_rank
FROM sales
GROUP BY product;


WITH top_selling_product AS (
    SELECT
        store,
        product,
        SUM(quantity * price) AS revenue,
        RANK() OVER (PARTITION BY store ORDER BY SUM(quantity * price) DESC) AS revenue_rank
    FROM sales
    GROUP BY store, product
)
SELECT
    store,
    product,
    revenue
FROM top_selling_product
WHERE revenue_rank = 1
ORDER BY store;

describe products;

-- Show supplier and total revenue, ordered from highest to lowest.
SELECT 
    p.supplier,
    SUM(s.quantity * s.price) AS revenue
FROM sales s
INNER JOIN products p
    ON s.product = p.product_name
GROUP BY p.supplier
ORDER BY revenue DESC;



-- Using sales and products:
-- Calculate total revenue per supplier per store
-- Include only products that have sales
-- Order by store and revenue descending
-- Use a CTE for intermediate calculations

WITH supplier_store_revenue AS (
    SELECT
        s.store,
        p.supplier,
        SUM(s.quantity * s.price) AS revenue
    FROM sales s
    INNER JOIN products p
        ON s.product = p.product_name
    GROUP BY s.store, p.supplier
)
SELECT *
FROM supplier_store_revenue
ORDER BY store, revenue DESC;

-- Task 10: Clean product codes and suppliers, then calculate total revenue per supplier per store

WITH cleaned_products AS (
    -- Step 1: Clean product codes and suppliers
    SELECT
        product,
        store,
        quantity,
        price,
        -- Fix null or unknown suppliers
        CASE 
            WHEN supplier IS NULL OR supplier = '' THEN 'Unknown Supplier'
            ELSE supplier
        END AS cleaned_supplier,
        -- Standardize product codes (uppercase)
        UPPER(product) AS cleaned_product_code
    FROM sales s
    INNER JOIN products p
        ON s.product = p.product_name
),

revenue_per_supplier_store AS (
    -- Step 2: Calculate revenue using cleaned data
    SELECT
        store,
        cleaned_supplier AS supplier,
        SUM(quantity * price) AS revenue
    FROM cleaned_products
    GROUP BY store, cleaned_supplier
)

-- Step 3: Final result
SELECT *
FROM revenue_per_supplier_store
ORDER BY store, revenue DESC;