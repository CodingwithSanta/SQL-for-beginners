-- Update job
UPDATE Employee SET Job = 'Manager' WHERE Empno = 2;

-- Rename column
ALTER TABLE Employee RENAME COLUMN Sal TO Emp_Salary;

-- Delete employee
DELETE FROM Employee WHERE Empno = 1;

-- View table
SELECT * FROM Employee;

-- Exception demo
SET SERVEROUTPUT ON;

DECLARE
    num1 NUMBER := 10;
    num2 NUMBER := 0;
    result NUMBER;
BEGIN
    result := num1 / num2;
    DBMS_OUTPUT.PUT_LINE('Result: ' || result);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Division by zero is not allowed.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Some other error occurred: ' || SQLERRM);
END;
/
