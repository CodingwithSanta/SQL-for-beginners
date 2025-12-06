-- Update salary
UPDATE payroll
SET salary = 70000
WHERE emp_id = 101;

-- Delete a record
DELETE FROM payroll
WHERE emp_id = 104;

-- Aggregate queries
SELECT COUNT(*) AS Total_Employees FROM payroll;
SELECT MAX(salary) AS Max_Salary FROM payroll;
SELECT MIN(salary) AS Min_Salary FROM payroll;

-- Procedures
CREATE OR REPLACE PROCEDURE add_employee(
    p_id NUMBER,
    p_name VARCHAR2,
    p_desig VARCHAR2,
    p_salary NUMBER
) AS
BEGIN
    INSERT INTO payroll VALUES (p_id, p_name, p_desig, p_salary);
END;
/

CREATE OR REPLACE PROCEDURE update_salary(
    p_id NUMBER,
    p_salary NUMBER
) AS
BEGIN
    UPDATE payroll SET salary = p_salary WHERE emp_id = p_id;
END;
/

CREATE OR REPLACE PROCEDURE delete_employee(
    p_id NUMBER
) AS
BEGIN
    DELETE FROM payroll WHERE emp_id = p_id;
END;
/

-- Test procedures
BEGIN
    add_employee(105, 'Kumar', 'HR', 38000);
    update_salary(102, 47000);
    delete_employee(103);
END;
/
