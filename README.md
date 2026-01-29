# Sales Data Analysis Project

## Description
This project demonstrates a complete workflow for managing and analyzing sales data using SQL. It includes:

- Creating tables for products, customers, and sales
- Inserting sample data
- Data cleaning and validation
- Revenue analysis by product, store, and supplier
- Advanced SQL techniques such as CTEs, window functions, and aggregations

---

## Files

| File | Description |
|------|-------------|
| `01_create_tables.sql` | Creates the products, customers, and sales tables with proper structure. |
| `02_insert_data.sql` | Inserts sample data into all tables, including some intentionally invalid data for cleansing. |
| `03_data_cleansing.sql` | Cleans data: standardizes supplier names, fixes product codes, validates customer emails, and identifies invalid sales data. |
| `04_revenue_analysis.sql` | Performs revenue and sales analysis: total revenue, revenue per store, per product, top-selling products, revenue per supplier, daily revenue trends, and ranking. |

---

## How to Run

1. Open your SQL environment (e.g., MySQL Workbench).  
2. Run `01_create_tables.sql` to create tables.  
3. Run `02_insert_data.sql` to populate tables with sample data.  
4. Run `03_data_cleansing.sql` to clean and validate data.  
5. Run `04_revenue_analysis.sql` to perform all revenue and sales analysis queries.  

> Make sure SQL_SAFE_UPDATES is disabled if running updates:  
> ```sql
> SET SQL_SAFE_UPDATES = 0;
> ```


## Tasks / Features Covered

Data Cleaning (Tasks 1–6)

- Standardize supplier names  
- Fix product codes  
- Correct invalid or NULL customer emails  
- Identify invalid quantity or price in sales  
- Identify sales records with missing product references  

Revenue Analysis (task 1-10)

- Total revenue from all sales  
- Revenue per store and per product  
- Top-selling products and ranking  
- Revenue per supplier and per store  
- Daily revenue trends  
- Use of CTEs and window functions  



## Notes

- This project is designed for recruiters or technical reviewers to showcase **SQL skills** including joins, aggregation, CTEs, conditional logic, and data cleansing.  
- Sample data includes edge cases to demonstrate cleaning and validation.  
- All files are ready to run sequentially to reproduce the results. 