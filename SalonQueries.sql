-- Query 1

SELECT CONCAT(customer.cust_firstname, " ", customer.cust_lastname) AS 'Customer', 
product.product_name AS 'Product', product.type AS 'Type', product.price AS 'Price'
FROM customer
JOIN tran
ON customer.customer_id = tran.customer_customer_id
JOIN transaction_detail
ON tran.tran_id = transaction_detail.transaction_tran_id
JOIN product
ON transaction_detail.product_product_id = product.product_id
ORDER BY customer.cust_lastname;

-- Query 2
SELECT CONCAT(customer.cust_firstname, " ", customer.cust_lastname) AS 'Customer', 
SUM(product.price) AS 'Total Spent'
FROM customer
JOIN tran
ON customer.customer_id = tran.customer_customer_id
JOIN transaction_detail
ON tran.tran_id = transaction_detail.transaction_tran_id
JOIN product
ON transaction_detail.product_product_id = product.product_id
GROUP BY customer.cust_lastname
ORDER BY SUM(product.price) DESC;

-- Query 3
SELECT CONCAT(employee.emp_firstname, ' ', employee.emp_lastname) AS 'Employee', 
SUM(product.price) AS 'Total Revenue Generated'
FROM employee
JOIN tran
ON employee.emp_id = tran.employee_emp_id
JOIN transaction_detail
ON tran.tran_id = transaction_detail.transaction_tran_id
JOIN product
ON transaction_detail.product_product_id = product.product_id
GROUP BY employee.emp_lastname
ORDER BY SUM(product.price) DESC;

-- Query 4
SELECT CONCAT(e.emp_firstname, ' ', e.emp_lastname) AS 'Employee', 
e.title AS 'Title', 
e.hire_date AS 'Hired', 
CONCAT(m.emp_firstname, ' ', m.emp_lastname) AS 'Manager', 
m.title AS 'Manager Title'
FROM employee e
LEFT JOIN employee m
ON m.emp_id = e.manager_id;