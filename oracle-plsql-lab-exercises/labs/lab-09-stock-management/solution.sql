-- Delete rows with rating > 8
DELETE FROM stock WHERE TO_NUMBER(rating) > 8;

-- Update row
UPDATE stock SET sname = 'Ravi', rating = '8', age = 28 WHERE sid = 2;

-- Insert null values
INSERT INTO stock VALUES (4, NULL, NULL, NULL);

SELECT * FROM stock;

-- Built-in exceptions
SET SERVEROUTPUT ON;

DECLARE
    n1 NUMBER := 10;
    n2 NUMBER := 0;
    result NUMBER;
BEGIN
    result := n1 / n2;
    DBMS_OUTPUT.PUT_LINE('Result: ' || result);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Division by zero is not allowed.');
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Error: Invalid value or data type.');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: No data found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: Some other exception occurred.');
END;
/
