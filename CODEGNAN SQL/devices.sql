
USE practice;

-- A. CREATE

CREATE TABLE devices (
    device_id INT,
    asset_tag VARCHAR(20),
    serial_number VARCHAR(50),
    device_name VARCHAR(120),
    device_type VARCHAR(20),
    manufacturer VARCHAR(80),
    model VARCHAR(100),
    purchase_date VARCHAR(10),
    purchase_price INT,
    warranty_expiry VARCHAR(10),
    assigned_to VARCHAR(120),
    device_status VARCHAR(20),
    created_at VARCHAR(10)
);

DESCRIBE devices;
SHOW CREATE TABLE devices;


-- B. INSERT

-- DEV-I1: Insert laptop
INSERT INTO devices VALUES
(1, 'AST-LAP-001', 'SN-LAP-260001', 'Developer Laptop',
 'LAPTOP', 'Lenovo', 'ThinkPad E14', '2026-01-15',
 78000, '2029-01-14', 'Kavya Menon', 'ASSIGNED', '2026-01-15');


-- DEV-I2: Insert desktop and tablet
INSERT INTO devices VALUES
(2, 'AST-DES-002', 'SN-DES-260002', 'Lab Desktop',
 'DESKTOP', 'Dell', 'OptiPlex 7010', '2025-08-10',
 62000, '2028-08-09', NULL, 'AVAILABLE', '2025-08-10'),

(3, 'AST-TAB-003', 'SN-TAB-260003', 'Demo Tablet',
 'TABLET', 'Samsung', 'Galaxy Tab S9', '2026-03-05',
 68000, '2028-03-04', NULL, 'AVAILABLE', '2026-03-05');


-- DEV-I3: Insert router and retired phone
INSERT INTO devices VALUES
(4, 'AST-RTR-004', 'SN-RTR-260004', 'Office Router',
 'ROUTER', 'Cisco', 'RV340', '2024-06-20',
 28000, NULL, 'Network Team', 'REPAIR', '2024-06-20'),

(5, 'AST-OLD-005', 'SN-OLD-260005', 'Retired Phone',
 'PHONE', 'Nokia', 'Test Model', '2020-01-10',
 8000, '2021-01-09', NULL, 'RETIRED', '2020-01-10');


-- Additional sample row
INSERT INTO devices VALUES
(6, 'AST-LAP-006', 'SN-LAP-260006', 'HR Laptop',
 'LAPTOP', 'HP', 'ProBook 440', '2026-05-10',
 65000, '2029-05-09', 'Ananya Reddy', 'ASSIGNED', '2026-05-10');


SELECT * FROM devices;


-- C. UPDATE

-- DEV-U1: Assign desktop to Rohan Das
UPDATE devices
SET assigned_to = 'Rohan Das',
    device_status = 'ASSIGNED'
WHERE asset_tag = 'AST-DES-002';


-- DEV-U2: Make router available and clear assignee
UPDATE devices
SET device_status = 'AVAILABLE',
    assigned_to = NULL
WHERE asset_tag = 'AST-RTR-004';


-- DEV-U3: Extend laptop warranty
UPDATE devices
SET warranty_expiry = '2030-01-14'
WHERE asset_tag = 'AST-LAP-001';


-- DEV-U4: Increase tablet price by 3%
UPDATE devices
SET purchase_price = ROUND(purchase_price * 1.03)
WHERE device_type = 'TABLET';


-- DEV-U5: Set warranty date before purchase date
UPDATE devices
SET warranty_expiry = '2025-01-01'
WHERE asset_tag = 'AST-LAP-001';


-- Inspect stored value
SELECT asset_tag, purchase_date, warranty_expiry
FROM devices
WHERE asset_tag = 'AST-LAP-001';


-- D. DELETE

-- DEV-D1: Preview retired test device
SELECT * FROM devices
WHERE asset_tag = 'AST-OLD-005'
AND device_status = 'RETIRED';

-- Delete
DELETE FROM devices
WHERE asset_tag = 'AST-OLD-005'
AND device_status = 'RETIRED';


-- DEV-D2: Insert temporary device
INSERT INTO devices VALUES
(7, 'AST-TEMP-999', 'SN-TEMP-999',
 'Temporary Laptop', 'LAPTOP', 'Dell', 'Latitude 3450',
 '2026-11-19', 55000, '2029-11-18',
 NULL, 'AVAILABLE', '2026-11-19');

-- Preview and delete temporary device