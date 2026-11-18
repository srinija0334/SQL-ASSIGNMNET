

CREATE DATABASE practice;
USE practice;

-- 1. Online Course Catalogue-------
CREATE TABLE courses (
course_id INT,
course_code VARCHAR(15),
course_title VARCHAR(150),
category VARCHAR(60),
duration_hours INT,
fee INT,
delivery_mode VARCHAR(20),
course_status VARCHAR(20),
created_at VARCHAR(10)
);
DESCRIBE courses;

INSERT INTO courses VALUES (101,'CRS-JAVA-101','Java Fundamentals','Programming',40,6000,'classroom','active','2026-11-08'),
(102,'CRS-SQL-102','MySQL Essentials','Database',20,6000,'online','active','2021-10-18'),
(103,'CRS-WEB-103','Responsive Web Design','Web Development',46,4500,'offline','active','2026-19-15'),
(104,'CRS-TST-104','Software Testing Basics','Testing',50,0,'classroom','active','2025-11-18'),
(105,'CRS-OLD-105','Legacy Systems Overview','Technology',28,5500,'hybrid','ARCHIVED','2026-11-18');

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





