

CREATE DATABASE practice;
USE practice;
DROP TABLE courses;

-- 1. Online Course Catalogue-------
CREATE TABLE courses (
course_id INT,
course_code VARCHAR(15),
course_title VARCHAR(150),
category VARCHAR(60),
duration_hours INT,
fee INT,
discount_percentage DECIMAL(5,2),
delivery_mode VARCHAR(20),
start_date	DATE,
class_start_time TIME,
class_end_time TIME,
created_at DATETIME
);
DESCRIBE courses;

INSERT INTO courses VALUES (101,'CRS-JAVA-101','Java Fundamentals','Programming',40,6500,10.00,'classroom','2026-12-01','09:00:00','11:00:00','2026-12-01 09:00:00'),
(102,'CRS-SQL-102','MySQL Essentials','Database',32,4500,5.00,'online','2026-12-05','10:00:00','12:00:00','2026-11-19 09:15:00'),
(103,'CRS-WEB-103','Web Development','Web Development',60,8500,12.50,'hybrid','2027-01-10','14:00:00','16:00:00','2026-11-19 09:30:00'),
(104,'CRS-TST-104','Software Testing','Testing',24,3500,00.0,'classroom','2026-12-15','15:00:00','17:00:00','2026-11-19 09:45:00'),
(105,'CRS-PYT-105','Python Basics','Programming',32,5500,7.50,'classroom','2026-11-18','2027-01-05','09:30:00','11:30:00','2026-11-19 10:00:00');

UPDATE courses SET fee=6500 WHERE course_code='CRS-JAVA-101';
UPDATE courses SET fee = ROUND(fee * 1.10) WHERE course_status = 'active';
UPDATE courses SET course_status='active',fee=2500 WHERE course_code= 'CRS-JAVA-103';
UPDATE courses SET duration_hours=duration_hours+4 WHERE category='Testing';

-- DELETE QUERYYYYY--
SELECT * FROM courses WHERE course_code='CRS-OLD-105';
DELETE FROM courses WHERE course_code='CRS-OLD-105';
INSERT INTO courses VALUES(108,'CRS-TEMP-999','Responsive Web Design','Web Development',46,4500,'offline','active','2026-19-15');
DELETE  FROM courses WHERE course_code='CRS-TEMP-999';
DELETE FROM courses WHERE category='Testing' AND fee<5000;

SELECT * FROM courses;



-- 2. Instructor Directory---------

CREATE TABLE instructors(
instructor_id	INT,
instructor_code	VARCHAR(12),
first_name	VARCHAR(60),
last_name	VARCHAR(60), 
email	VARCHAR(120), 
specialization	VARCHAR(100),	 
years_experience	INT,
hourly_rate	INT,
employment_type	VARCHAR(20),	 
is_active	INT	,
joined_on	VARCHAR(10),
created_at	VARCHAR(10));
 
 DESCRIBE instructors;
 
 -- INSERT QUERYYYY----
 INSERT INTO instructors VALUES(101, 'INS-JV-001','Kavya','Menon','kavya.menon@example.test','Java',8,1500,'FULL_TIME',1,'2021-06-14','2020-03-06'),
 (102,'INS-DB-002','Ritesh','Kumar','ritesh.kumar@example.test','Databases',12,1800,'CONTRACT',1,'2019-02-01','2018-06-05'),
 (103,'INS-WB-003','Farah','Ali','farah.ali@example.test','Web Development',5,1200,'PART_TIME',1,'2023-08-21','2020-09-11'),
 (104,'INS-QA-004','Nitin','Bose','nitin.bose@example.test','Software Testing',7,1350,'PART_TIME',1,'2022-01-10','2018-09-12'),
 (105,'INS-OLD-005','Leela','Shah','leela.shah@example.test','Mainframe Systems',25,2000,'CONTRACT',0,'2010-05-17','2006-02-03');
 
 
 SELECT * FROM instructors;
 -- ADDITIONAL INSERT--
 INSERT INTO instructors VALUES
(106, 'INS-PY-006', 'Rahul', 'Sharma',
 'rahul.sharma@example.test', 'Python', 5, 1000,
 'FULL_TIME', 1, '2024-05-10', '2024-05-10');
 
 -- UPDATE QUERYY----
 UPDATE instructors SET hourly_rate =1500 WHERE instructor_code='INS-QA-004';
 UPDATE instructors SET hourly_rate = ROUND(hourly_rate * 1.08) WHERE is_active = 1 AND employment_type = 'CONTRACT';
 UPDATE instructors SET specialization='Full-Stack Web Development' WHERE instructor_code='INS-WB-003';
 UPDATE instructors SET years_experience=years_experience+1 WHERE is_active=1;
 UPDATE instructors SET is_active=0 WHERE instructor_code ='INS-OLD-005';
 SELECT * FROM instructors WHERE years_experience>50;
 
 
 -- DELETE QUERYY---
 DELETE FROM instructors
WHERE instructor_code = 'INS-OLD-005'
AND is_active = 0;

DELETE FROM instructors
WHERE is_active = 1
AND employment_type = 'PART_TIME'
AND years_experience < 6;





