use cdn_059;

CREATE TABLE products(
product_id INT,
name VARCHAR(100),
price DECIMAL
);
DROP TABLE products;
CREATE TABLE products(
product_id INT,
name VARCHAR(100),
price DECIMAL(6,2) 
);

DELETE FROM products;
INSERT INTO products VALUES(101,'srinija',20.3);
INSERT INTO products VALUES(102,'haa',20.3);
INSERT INTO products VALUES(103,'jaa',999.99);
UPDATE products SET price=9999.99 WHERE product_id=103;
SELECT * FROM products;

-- train table data ----
CREATE TABLE trainbooking(
booking_id INT,
train_no INT,
train_name VARCHAR(50),
date_of_journey DATE,
departure_time TIME,
booking_date_tme DATETIME
);

INSERT INTO trainbooking(booking_id,train_no,train_name,date_of_journey,departure_time,booking_date_tme) VALUES (101,55,'bharath','2023-02-06', '5:45','2023-03-02');
INSERT INTO trainbooking(booking_id,train_no,train_name,date_of_journey,departure_time,booking_date_tme) VALUES (102,123,'bharath','2023-02-06', '19:45','2023-03-02');
INSERT INTO trainbooking(booking_id,train_no,train_name,date_of_journey,departure_time,booking_date_tme) VALUES (103,90,'bharath','2023-01-06', '17:45','2023-03-02');
INSERT INTO trainbooking(booking_id,train_no,train_name,date_of_journey,departure_time,booking_date_tme) VALUES (104,55,'bharath','2023-07-06', '5:45','2023-03-02');
 SELECT * FROM trainbooking;
 
 
SELECT CURRENT_DATE(), CURRENT_TIME(), NOW();

SELECT current_date(), current_time(),NOW(),curdate(),curtime();