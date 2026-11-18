USE practice;

-- A. CREATE
CREATE TABLE subscriptions (
    subscription_id INT,
    subscription_code VARCHAR(16),
    subscriber_name VARCHAR(120),
    subscriber_email VARCHAR(120),
    plan_name VARCHAR(60),
    billing_cycle VARCHAR(20),
    amount INT,
    start_date VARCHAR(10),
    end_date VARCHAR(10),
    auto_renew INT,
    subscription_status VARCHAR(20),
    created_at VARCHAR(10)
);

DESCRIBE subscriptions;
SHOW CREATE TABLE subscriptions;


-- B. INSERT

-- SUB-I1: First two subscriptions
INSERT INTO subscriptions (
    subscription_id, subscription_code, subscriber_name,
    subscriber_email, plan_name, billing_cycle, amount,
    start_date, end_date, auto_renew,
    subscription_status, created_at
)
VALUES
(1, 'SUB260001', 'Aarav Nair', 'aarav.nair@example.test', 'Standard', 'MONTHLY', 499, '2026-09-01', NULL, 1, 'ACTIVE', '2026-09-01'),
(2, 'SUB260002', 'Diya Shah', 'diya.shah@example.test', 'Premium', 'YEARLY', 4999, '2026-01-15', '2027-01-14', 1, 'ACTIVE', '2026-01-15');

-- SUB-I2: Explicit values for every column
INSERT INTO subscriptions VALUES
(3, 'SUB260003', 'Kabir Rao', 'kabir.rao@example.test', 'Basic', 'MONTHLY', 199, '2026-09-10', NULL, 1, 'ACTIVE', '2026-09-10');

-- SUB-I3: Remaining two subscriptions
INSERT INTO subscriptions VALUES
(4, 'SUB260004', 'Meera Bose', 'meera.bose@example.test', 'Premium', 'QUARTERLY', 1399, '2026-07-01', '2026-09-30', 0, 'PAUSED', '2026-07-01'),
(5, 'SUB260005', 'Test Subscriber', 'test.subscriber@example.test', 'Standard', 'MONTHLY', 499, '2026-08-01', '2026-08-31', 0, 'CANCELLED', '2026-08-01');

-- Additional sample
INSERT INTO subscriptions VALUES
(6, 'SUB260006', 'Ananya Reddy', 'ananya.reddy@example.test', 'Premium', 'MONTHLY', 799, '2026-10-01', NULL, 1, 'ACTIVE', '2026-10-01');

SELECT * FROM subscriptions;


-- C. UPDATE

-- SUB-U1
UPDATE subscriptions
SET plan_name = 'Premium', amount = 799
WHERE subscription_code = 'SUB260001';

-- SUB-U2
UPDATE subscriptions
SET subscription_status = 'ACTIVE', auto_renew = 1
WHERE subscription_code = 'SUB260004';

-- SUB-U3
UPDATE subscriptions
SET amount = ROUND(amount * 1.05)
WHERE billing_cycle = 'MONTHLY'
AND subscription_status = 'ACTIVE';

-- SUB-U4
UPDATE subscriptions
SET subscription_status = 'CANCELLED',
    auto_renew = 0,
    end_date = '2026-11-19'
WHERE subscription_code = 'SUB260003';

-- SUB-U5
UPDATE subscriptions
SET end_date = '2026-01-01'
WHERE subscription_code = 'SUB260001';

SELECT subscription_code, start_date, end_date
FROM subscriptions
WHERE subscription_code = 'SUB260001';


-- D. DELETE

-- SUB-D1: Preview and delete
SELECT * FROM subscriptions
WHERE subscription_code = 'SUB260005';

DELETE FROM subscriptions
WHERE subscription_code = 'SUB260005';

-- SUB-D2: Insert temporary row
INSERT INTO subscriptions VALUES
(7, 'SUB-TEMP-999', 'Temporary User', 'temp.user@example.test',
 'Basic', 'MONTHLY', 199, '2026-11-19', NULL, 1, 'ACTIVE', '2026-11-19');

-- Preview and delete temporary row
SELECT * FROM subscriptions
WHERE subscription_code = 'SUB-TEMP-999';

DELETE FROM subscriptions
WHERE subscription_code = 'SUB-TEMP-999';

-- SUB-D3: Preview and delete cancelled subscriptions
SELECT * FROM subscriptions
WHERE subscription_status = 'CANCELLED'
AND auto_renew = 0;

DELETE FROM subscriptions
WHERE subscription_status = 'CANCELLED'
AND auto_renew = 0;

-- Final output
SELECT * FROM subscriptions;