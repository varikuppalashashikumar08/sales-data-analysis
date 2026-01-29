INSERT INTO sales (sale_id, sale_date, store, product, quantity, price) 
VALUES
(1, '2024-01-05', 'NY', 'Laptop', 2, 900.00),
(2, '2024-01-06', 'CA', 'Phone', 3, 600.00),
(3, '2024-01-07', 'TX', 'Chair', 5, 120.00),
(4, '2024-01-08', 'NY', 'Table', 1, 300.00),
(5, '2024-01-09', 'CA', 'Headphones', 4, 150.00);

INSERT INTO sales (sale_id, sale_date, store, product, quantity, price)
VALUES
(6, '2024-01-10', 'FL', 'Monitor', 3, 200.00),
(7, '2024-01-11', 'TX', 'Laptop', 1, 950.00),
(8, '2024-01-12', 'CA', 'Table', 2, 320.00),
(9, '2024-01-13', 'NY', 'Headphones', 5, 150.00),
(10, '2024-01-14', 'FL', 'Phone', 2, 650.00),
(11, '2024-01-15', 'TX', 'Chair', 4, 120.00),
(12, '2024-01-16', 'CA', 'Laptop', 1, 900.00),
(13, '2024-01-17', 'NY', 'Monitor', 2, 220.00),
(14, '2024-01-18', 'FL', 'Notebook', 10, 5.00),
(15, '2024-01-19', 'TX', 'Pen', 20, 2.00),
(16, '2024-01-20', 'CA', 'Sofa', 1, 320.00),
(17, '2024-01-21', 'NY', 'Printer', 1, 210.00),
(18, '2024-01-22', 'FL', 'Laptop', 2, 920.00),
(19, '2024-01-23', 'TX', 'Phone', 3, 630.00),
(20, '2024-01-24', 'CA', 'Chair', 2, 130.00),
(21, '2024-01-25', 'NY', 'Table', 1, 310.00),
(22, '2024-01-26', 'FL', 'Headphones', 6, 160.00),
(23, '2024-01-27', 'TX', 'Monitor', 1, 210.00),
(24, '2024-01-28', 'CA', 'Notebook', 15, 5.00),
(25, '2024-01-29', 'NY', 'Pen', 25, 2.50);

select *
FROM sales;

INSERT INTO products (product_id, product_name, category, cost_price, supplier, launch_date, discontinued, product_code)
VALUES
(1, 'Laptop', 'Electronics', 800.00, 'ABC Corp', '2023-01-01', FALSE, 'LAP-001'),
(2, 'Phone', 'Electronics', 400.00, 'abc corp', '2023-02-15', NULL, 'lap001'),
(3, 'Chair', 'Furniture', 70.00, NULL, '2024-12-01', FALSE, 'CHR-001'),
(4, 'Table', 'Furniture', 150.00, 'XYZ Ltd', '2022-05-01', TRUE, 'TBL_002'),
(5, 'Headphones', 'Electronics', 50.00, NULL, NULL, FALSE, 'HPH-001'),
(6, 'Monitor', 'Electronics', 120.00, 'Tech Supplies', '2023-03-01', FALSE, 'MON-001'),
(7, 'Notebook', 'Stationery', 5.00, NULL, '2023-06-01', FALSE, 'NB-001'),
(8, 'Pen', 'Stationery', 2.00, 'PenCo', NULL, FALSE, 'PEN-001'),
(9, 'Sofa', 'Furniture', 300.00, 'FurniCo', '2024-08-01', TRUE, 'SOF-001'),
(10, 'Printer', 'Electronics', 200.00, 'PrintCorp', NULL, FALSE, 'PRT-001');

INSERT INTO customers (customer_id, customer_name, email, phone, city, signup_date)
VALUES
(1, 'John Doe', 'john.doe@gmail.com', '123-456-7890', 'New York', '2023-01-05'),
(2, 'Jane Smith', 'janesmith@@mail.com', '9876543210', 'Los Angeles', '2023-02-10'),
(3, 'Alice Johnson', NULL, '(555)123-4567', 'Chicago', '2024-12-01'),
(4, 'Bob Lee', 'bob.lee@mail.com', '5551234567', 'Houston', '2022-05-20'),
(5, 'Charlie Kim', 'charlie.kim@gmail', '123.456.7890', 'Phoenix', '2023-07-01'),
(6, 'Diana Prince', 'diana.prince@gmail.com', '555-987-6543', 'Philadelphia', '2023-03-15'),
(7, 'Evan Brown', NULL, '555-123-0000', 'San Antonio', '2023-06-10'),
(8, 'Fiona Green', 'fiona.green@mail.com', '555 123 9999', 'San Diego', '2024-08-01'),
(9, 'George White', 'georgewhite@gmail.com', NULL, 'Dallas', '2024-09-15'),
(10, 'Hannah Black', 'hannah.black@mail.com', '1234567890', 'San Jose', '2023-11-25');

select * 
from customers;

select*
from products;
