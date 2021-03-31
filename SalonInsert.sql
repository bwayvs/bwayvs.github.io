INSERT INTO location 
(location_id, address1, address2, city, state, zipcode)
VALUES
(DEFAULT, '100 N Main St.', 'Suite 3', 'Rexburg', 'ID', '83441'),
(DEFAULT, '200 N Center St.', NULL, 'Rigby', 'ID', '83442');


INSERT INTO customer
VALUES 
(DEFAULT, 'Jeana', 'Bradford', 'jb@gmail.com', '111222333'),
(DEFAULT, 'Sandra', 'Hobbs', 'sh@gmail.com', '1112223334'),
(DEFAULT, 'Ryan', 'Taylor', 'rt@gmail.com', '1112223335'), 
(DEFAULT, 'Michelle', 'Drake', 'md@gmail.com', '1112223336'),
(DEFAULT, 'Heidi', 'Nolan', 'hn@gmail.com', '1112223337'), 
(DEFAULT, 'Karen', 'Smith' , 'ks@gmail.com', '1112223338'), 
(DEFAULT, 'Jose', 'Medez', 'jm@gmail.com', '1112223339');

INSERT INTO employee
VALUES
(DEFAULT, 'Jenny', 'Jensen', 'Owner', '2013-06-15', NULL, 'jensenj@salon.com', '2081112222', 1, NULL), 
(DEFAULT, 'Haley', 'Lopez', 'Assistant Manager', '2013-08-23', NULL, 'lopezh@salon.com', '2083334444', 1, 1),
(DEFAULT, 'Robert', 'Green', 'Associate', '2014-01-03', NULL, 'greenr@salon.com', '2085556666', 1, 2), 
(DEFAULT, 'Olive', 'Adams', 'Manager', '2015-07-12', NULL, 'adamso@salon.com', '2087778888', 2, 1), 
(DEFAULT, 'Julie', 'Davis', 'Associate', '2015-10-20', NULL, 'davisj@salon.com', '2089990000', 2, 4);

INSERT INTO product
VALUES
(DEFAULT, 'Shampoo', 'Product', '8 oz', 4.95), 
(DEFAULT, 'Shampoo', 'Product', '16 oz', 8.95),
(DEFAULT, 'Conditioner', 'Product', '12 oz', 8.95), 
(DEFAULT, 'Hairspray', 'Product', '8 oz', 7.95), 
(DEFAULT, 'Shampoo', 'Service', NULL, 8.00), 
(DEFAULT, 'Men Hair Cut', 'Service', NULL, 15.00), 
(DEFAULT, 'Women Hair Cut', 'Service', NULL, 25.00), 
(DEFAULT, 'Color', 'Service', NULL, 50.00),
(DEFAULT, 'Perm', 'Service', NULL, 60.00);

INSERT INTO tran
VALUES
(DEFAULT, 1, 7, '2019-03-25'),
(DEFAULT, 1, 6, '2019-03-25'),
(DEFAULT, 2, 5, '2019-03-25'), 
(DEFAULT, 3, 4, '2019-03-25'), 
(DEFAULT, 4, 3, '2019-03-25');

INSERT INTO transaction_detail
VALUES
(DEFAULT, 1, 1, 2), 
(DEFAULT, 1, 6, 1),
(DEFAULT,2, 9, 1),
(DEFAULT, 2, 3, 3),
(DEFAULT, 3, 8, 1), 
(DEFAULT, 4, 7, 1), 
(DEFAULT, 4, 2, 1),
(DEFAULT, 5, 6, 1); 

SELECT tran_date, CONCAT(customer.cust_firstname, ' ', customer.cust_lastname) AS 'CustName',
CONCAT(employee.emp_firstname, ' ', employee.emp_lastname) AS 'EmpName', 
CONCAT(transaction_detail.quantity, ' ', product.product_name) AS 'Product', 
CONCAT(product.price, ' x ', transaction_detail.quantity) AS 'AmountCharged'
FROM tran
JOIN transaction_detail
ON tran.tran_id = transaction_detail.transaction_tran_id
JOIN product
ON product.product_id = transaction_detail.product_product_id
JOIN customer
ON tran.customer_customer_id = customer.customer_id
JOIN employee
ON tran.employee_emp_id = employee.emp_id
GROUP BY transaction_detail.transaction_tran_id, transaction_detail.tran_detail_id 
ORDER BY transaction_detail.transaction_tran_id;


