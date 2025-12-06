-- Deletion
DELETE FROM student WHERE reg_no = 103;

-- Report
SELECT reg_no, name, dept, admission_year
FROM student
WHERE admission_year BETWEEN 2022 AND 2023;

-- Exceptions demo
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
