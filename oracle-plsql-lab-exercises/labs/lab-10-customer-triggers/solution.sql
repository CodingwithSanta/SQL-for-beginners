-- Delete rows where city is New York
DELETE FROM customer WHERE cust_city = 'New York';

SELECT * FROM customer;

-- Recreate table with salary for trigger demo
DROP TABLE customer;

CREATE TABLE customer (
    cust_name VARCHAR2(20),
    cust_street VARCHAR2(20),
    cust_city VARCHAR2(20),
    salary NUMBER(10,2)
);

CREATE OR REPLACE TRIGGER check_salary_increase
BEFORE UPDATE OF salary
ON customer
FOR EACH ROW
BEGIN
    IF :NEW.salary < :OLD.salary THEN
        RAISE_APPLICATION_ERROR(-20001, 'New salary must be greater than old salary.');
    END IF;
END;
/

-- Test trigger
INSERT INTO customer VALUES ('Arun', 'MG Road', 'Chennai', 30000);
UPDATE customer SET salary = 35000 WHERE cust_name = 'Arun'; -- valid
-- This will raise error:
-- UPDATE customer SET salary = 25000 WHERE cust_name = 'Arun';

SELECT * FROM customer;
