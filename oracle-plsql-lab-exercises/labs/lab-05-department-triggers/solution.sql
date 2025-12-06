-- Group by example (assuming EMP table exists)
SELECT deptno, COUNT(*) AS emp_count
FROM emp
GROUP BY deptno;

-- Update and clear column data
UPDATE department
SET location = 'Delhi'
WHERE deptno = 5;

UPDATE department
SET designation = NULL
WHERE deptno = 2;

-- Trigger
SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER dept_trigger
BEFORE INSERT OR UPDATE OR DELETE ON department
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        DBMS_OUTPUT.PUT_LINE('A new record is being inserted.');
    ELSIF UPDATING THEN
        DBMS_OUTPUT.PUT_LINE('A record is being updated.');
    ELSIF DELETING THEN
        DBMS_OUTPUT.PUT_LINE('A record is being deleted.');
    END IF;
END;
/

-- Test trigger
INSERT INTO department VALUES (8, 'Support', 'Pune', 'Staff');
UPDATE department SET location = 'Delhi' WHERE deptno = 8;
DELETE FROM department WHERE deptno = 8;
