USE practice;

CREATE TABLE insurance_policies (
    policy_id INT,
    policy_number VARCHAR(14),
    policyholder_name VARCHAR(120),
    policy_type VARCHAR(20),
    coverage_amount INT,
    premium_amount INT,
    start_date VARCHAR(10),
    end_date VARCHAR(10),
    payment_frequency VARCHAR(20),
    nominee_name VARCHAR(120),
    policy_status VARCHAR(20),
    created_at VARCHAR(10)
);
DESCRIBE insurance_policies;
SHOW CREATE TABLE insurance_policies;

INSERT INTO 
	insurance_policies (policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, nominee_name, policy_status, created_at)
VALUES 
	(1, 'POL00000000001', 'Aditi Rao', 'HEALTH', 1000000, 18000, '2026-01-01', '2026-12-31', 'ANNUAL', 'Rohan Rao', 'ACTIVE', '2026-11-18'),
	(2, 'POL00000000002', 'Dev Kapoor', 'VEHICLE', 800000, 22000, '2026-04-15', '2027-04-14', 'QUARTERLY', NULL, 'ACTIVE', '2026-11-18');

INSERT INTO 
	insurance_policies (policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, nominee_name, policy_status, created_at)
VALUES 
	(3, 'POL00000000003', 'Meera Nair', 'LIFE', 5000000, 36000, '2026-06-01', '2046-05-31', 'ANNUAL', 'Arun Nair', 'ACTIVE', '2026-11-18');

INSERT INTO 
	insurance_policies (policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, nominee_name, policy_status, created_at)
VALUES 
	(4, 'POL00000000004', 'Kabir Shah', 'TRAVEL', 500000, 4500, '2026-10-01', '2026-10-31', 'MONTHLY', NULL, 'ACTIVE', '2026-11-18'),
	(5, 'POL00000000005', 'Test Policyholder', 'HOME', 2000000, 15000, '2025-01-01', '2025-12-31', 'ANNUAL', NULL, 'CANCELLED', '2026-11-18');

INSERT INTO 
	insurance_policies (policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, nominee_name, policy_status, created_at)
VALUES 
	(6, 'POL00000000006', 'Priya Sharma', 'HOME', 2000000, 15000, '2026-02-01', '2027-01-31', 'ANNUAL', 'Vikram Sharma', 'ACTIVE', '2026-11-18');

SELECT 
    policy_id,
    policy_number,
    policyholder_name,
    policy_type,
    premium_amount,
    policy_status
FROM
    insurance_policies;
SELECT * FROM insurance_policies;

UPDATE insurance_policies
SET coverage_amount = 1250000
WHERE policy_number = 'POL00000000001';

SELECT 
    policy_number, policyholder_name, coverage_amount
FROM
    insurance_policies
WHERE
    policy_number = 'POL00000000001';

UPDATE insurance_policies
SET nominee_name = 'Sara Kapoor'
WHERE policy_number = 'POL00000000002';

SELECT 
    policy_number, policyholder_name, nominee_name
FROM
    insurance_policies
WHERE
    policy_number = 'POL00000000002';

UPDATE insurance_policies
SET premium_amount = ROUND(premium_amount * 1.05)
WHERE policy_type = 'VEHICLE' AND policy_status = 'ACTIVE';

SELECT 
    policy_number,
    policyholder_name,
    policy_type,
    premium_amount
FROM
    insurance_policies
WHERE
    policy_type = 'VEHICLE';

UPDATE insurance_policies
SET payment_frequency = 'ANNUAL'
WHERE policy_number = 'POL00000000004';

SELECT 
    policy_number, policyholder_name, payment_frequency
FROM
    insurance_policies
WHERE
    policy_number = 'POL00000000004';

UPDATE insurance_policies
SET premium_amount = 2500000
WHERE policy_number = 'POL00000000006';

SELECT 
    policy_number, policyholder_name, coverage_amount, premium_amount
FROM
    insurance_policies
WHERE
    policy_number = 'POL00000000006';

SELECT 
    policy_number, policyholder_name, policy_status
FROM
    insurance_policies
WHERE
    policy_number = 'POL00000000005'
        AND policy_status = 'CANCELLED';

DELETE FROM insurance_policies 
WHERE
    policy_number = 'POL00000000005'
    AND policy_status = 'CANCELLED';

INSERT INTO 
	insurance_policies (policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, nominee_name, policy_status, created_at)
VALUES 
	(7, 'POL99999999999', 'Temp Policyholder', 'HEALTH', 100000, 1000, '2026-11-18', '2026-12-31', 'ANNUAL', NULL, 'ACTIVE', '2026-11-18');

SELECT * FROM insurance_policies WHERE policy_number = 'POL99999999999';

DELETE FROM insurance_policies 
WHERE
    policy_number = 'POL99999999999';

SELECT 
    *
FROM
    insurance_policies
WHERE
    policy_number = 'POL99999999999';

SELECT 
    policy_number,
    policyholder_name,
    policy_type,
    nominee_name,
    premium_amount
FROM
    insurance_policies
WHERE
    policy_type = 'TRAVEL'
        AND nominee_name IS NULL
        AND premium_amount < 5000;

DELETE FROM insurance_policies 
WHERE
    policy_type = 'TRAVEL'
    AND nominee_name IS NULL
    AND premium_amount < 5000;

SELECT 
    policy_number,
    policyholder_name,
    policy_type,
    nominee_name,
    premium_amount
FROM
    insurance_policies
WHERE
    policy_type = 'TRAVEL';

SELECT 
    policy_number,
    policyholder_name,
    policy_type,
    coverage_amount,
    premium_amount,
    policy_status
FROM
    insurance_policies;