create database sales_performance_analysis

use sales_performance_analysis

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
  drop table order_items

CREATE TABLE order_items (
    order_item_id  INT IDENTITY (1,1) PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1,'Alice','Kenya','2023-01-10'),
(2,'Bob','Kenya','2023-02-15'),
(3,'Carol','Uganda','2023-03-01'),
(4,'David','Tanzania','2023-03-20'),
(5,'Eva','Kenya','2023-04-05');

INSERT INTO products VALUES
(1,'Laptop','Electronics'),
(2,'Phone','Electronics'),
(3,'Tablet','Electronics');

INSERT INTO orders VALUES
(101,1,'2024-01-05',1200),
(102,2,'2024-01-20',850),
(103,1,'2024-02-10',430),
(104,3,'2024-02-18',990),
(105,4,'2024-03-01',1500),
(106,5,'2024-03-15',670);

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(101,1,2,600),
(102,2,1,850),
(103,3,4,107.5),
(104,1,3,330),
(105,2,2,750),
(106,3,1,670);

-- DATA VALIDATION
SELECT customer_id, COUNT(*) 
FROM customers 
GROUP BY customer_id 
HAVING COUNT(*) > 1;

SELECT * FROM orders WHERE total_amount IS NULL;

-- MONTHLY REVENUE
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;


-- AVERAGE ORDER VALUE
SELECT AVG(total_amount) AS avg_order_value
FROM orders;

-- REVENUE BY CATEGORY
SELECT 
    p.category,
    SUM(oi.quantity * oi.price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category;

-- CUSTOMER LIFETIME VALUE
SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS lifetime_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY lifetime_value DESC;

-- TOP CUSTOMERS 
SELECT TOP 5
    c.name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;





