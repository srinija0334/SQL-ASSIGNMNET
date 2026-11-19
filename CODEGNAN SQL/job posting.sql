USE practice;

CREATE TABLE job_postings (
    job_id INT,
    job_code VARCHAR(15),
    job_title VARCHAR(150),
    department VARCHAR(100),
    location VARCHAR(100),
    employment_type VARCHAR(20),
    minimum_salary INT,
    maximum_salary INT,
    vacancies INT,
    posted_date VARCHAR(10),
    closing_date VARCHAR(10),
    job_status VARCHAR(20),
    created_at VARCHAR(10)
);
DESCRIBE job_postings;
SHOW CREATE TABLE job_postings;

INSERT INTO 
	job_postings (job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, job_status, created_at)
VALUES 
	(1, 'JOB-JAVA-001', 'Java Developer', 'Engineering', 'Bengaluru', 'FULL_TIME', 700000, 1200000, 3, '2026-09-20', '2026-10-20', 'OPEN', '2026-11-18'),
	(2, 'JOB-QA-002', 'QA Automation Engineer', 'Quality Assurance', 'Hyderabad', 'CONTRACT', 600000, 900000, 2, '2026-09-21', '2026-10-15', 'OPEN', '2026-11-18');

INSERT INTO 
	job_postings (job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, job_status, created_at)
VALUES 
	(3, 'JOB-INT-003', 'Software Intern', 'Engineering', 'Chennai', 'INTERNSHIP', 180000, 240000, 1, '2026-09-22', '2026-10-10', 'OPEN', '2026-11-18');

INSERT INTO 
	job_postings (job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, job_status, created_at)
VALUES 
	(4, 'JOB-HR-004', 'HR Coordinator', 'Human Resources', 'Mumbai', 'PART_TIME', 300000, 450000, 1, '2026-09-23', '2026-10-18', 'DRAFT', '2026-11-18'),
	(5, 'JOB-OLD-005', 'Cancelled Test Role', 'Training', 'Pune', 'FULL_TIME', 250000, 350000, 1, '2026-09-01', '2026-09-15', 'CANCELLED', '2026-11-18');

INSERT INTO 
	job_postings (job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, job_status, created_at)
VALUES 
	(6, 'JOB-MKT-006', 'Marketing Executive', 'Marketing', 'Hyderabad', 'FULL_TIME', 400000, 600000, 2, '2026-09-25', '2026-10-25', 'OPEN', '2026-11-18');

SELECT 
    job_id,
    job_code,
    job_title,
    department,
    minimum_salary,
    maximum_salary,
    job_status
FROM
    job_postings;
SELECT * FROM job_postings;

UPDATE job_postings
SET maximum_salary = 1300000
WHERE job_code = 'JOB-JAVA-001';

SELECT 
    job_code, job_title, minimum_salary, maximum_salary
FROM
    job_postings
WHERE
    job_code = 'JOB-JAVA-001';

UPDATE job_postings
SET vacancies = 4
WHERE job_code = 'JOB-QA-002';

SELECT 
    job_code, job_title, vacancies
FROM
    job_postings
WHERE
    job_code = 'JOB-QA-002';

UPDATE job_postings
SET job_status = 'OPEN'
WHERE job_code = 'JOB-HR-004';

SELECT 
    job_code, job_title, job_status
FROM
    job_postings
WHERE
    job_code = 'JOB-HR-004';

UPDATE job_postings
SET minimum_salary = ROUND(minimum_salary * 1.08), maximum_salary = ROUND(maximum_salary * 1.08)
WHERE department = 'Engineering' AND job_status = 'OPEN';

SELECT 
    job_code,
    job_title,
    department,
    minimum_salary,
    maximum_salary,
    job_status
FROM
    job_postings
WHERE
    department = 'Engineering';

UPDATE job_postings
SET maximum_salary = 150000
WHERE job_code = 'JOB-INT-003';

SELECT 
    job_code, job_title, minimum_salary, maximum_salary
FROM
    job_postings
WHERE
    job_code = 'JOB-INT-003';

SELECT 
    job_code, job_title, job_status
FROM
    job_postings
WHERE
    job_code = 'JOB-OLD-005'
        AND job_status = 'CANCELLED';

DELETE FROM job_postings 
WHERE
    job_code = 'JOB-OLD-005'
    AND job_status = 'CANCELLED';

INSERT INTO 
	job_postings (job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, job_status, created_at)
VALUES 
	(7, 'JOB-TEMP-999', 'Temp Role', 'Training', 'Hyderabad', 'FULL_TIME', 200000, 300000, 1, '2026-11-18', '2026-11-30', 'DRAFT', '2026-11-18');

SELECT * FROM job_postings WHERE job_code = 'JOB-TEMP-999';

DELETE FROM job_postings 
WHERE
    job_code = 'JOB-TEMP-999';

SELECT 
    *
FROM
    job_postings
WHERE
    job_code = 'JOB-TEMP-999';

SELECT 
    job_code,
    job_title,
    employment_type,
    maximum_salary
FROM
    job_postings
WHERE
    employment_type = 'INTERNSHIP'
        AND maximum_salary <= 250000;

DELETE FROM job_postings 
WHERE
    employment_type = 'INTERNSHIP'
    AND maximum_salary <= 250000;

SELECT 
    job_code,
    job_title,
    employment_type,
    maximum_salary
FROM
    job_postings
WHERE
    employment_type = 'INTERNSHIP';

SELECT 
    job_code,
    job_title,
    department,
    minimum_salary,
    maximum_salary,
    job_status
FROM
    job_postings;