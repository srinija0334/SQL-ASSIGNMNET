USE cdn_059;

SHOW databases;
DESCRIBE customers;
SHOW CREATE TABLE customers;
SELECT customer_id,first_nname,last_name FROM customers;

INSERT INTO 
customers(customer_id,first_nname,last_name) 
VALUES
(101,'srinija','hello');
INSERT INTO 
customers(first_nname,customer_id,last_name) 
VALUES
('srinu',102,'hello');
INSERT INTO 
customers
(first_nname,last_name) 
VALUES
('radhima','shetty');
INSERT INTO 
customers
 VALUES
 (103,'nidhi','hi');
-- NSERT INTO customers VALUES('hello','kkk',104);wrong query this is without writing column names direct table name
INSERT INTO 
customers(customer_id,first_nname,last_name)
 VALUES
 (105,'Akash','shetty'),
 (106,'ramm','pothineni'),
 (107,'raj','bahi');
 
 
 
 -- UPDATE QYERYYYY--
 UPDATE customers SET last_name='varma';
 UPDATE customers SET last_name='hangova' WHERE first_nname='srinija';
 UPDATE customers SET last_name='kaaali' WHERE customer_id=111; 
 UPDATE customers SET customer_id=103,last_name='vaasi' WHERE first_nname='srinu';
 
 
 
 -- DELETE QUERYYYYYY
 
 DELETE FROM customers;
 DELETE FROM customers WHERE customer_id=105;
 DELETE FROM customers WHERE first_nname='nidhi';
 
SELECT customer_id,first_nname,last_name FROM customers;
