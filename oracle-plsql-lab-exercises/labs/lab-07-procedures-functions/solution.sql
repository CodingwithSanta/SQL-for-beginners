SET SERVEROUTPUT ON;

-- Procedure
CREATE OR REPLACE PROCEDURE show_student_details(
    sname IN VARCHAR2,
    sage  IN NUMBER
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Student Name: ' || sname);
    DBMS_OUTPUT.PUT_LINE('Student Age: ' || sage);
END;
/

-- Function
CREATE OR REPLACE FUNCTION calc_average(
    mark1 IN NUMBER,
    mark2 IN NUMBER,
    mark3 IN NUMBER
) RETURN NUMBER AS
    avg_marks NUMBER;
BEGIN
    avg_marks := (mark1 + mark2 + mark3) / 3;
    RETURN avg_marks;
END;
/

-- Call procedure and function
DECLARE
    name_student VARCHAR2(20) := 'Arun';
    age_student NUMBER := 20;
    avg_marks NUMBER;
BEGIN
    show_student_details(name_student, age_student);
    avg_marks := calc_average(80, 75, 90);
    DBMS_OUTPUT.PUT_LINE('Average Marks: ' || avg_marks);
END;
/

-- Cursor-based result report
DECLARE
    CURSOR c1 IS SELECT * FROM student_marks;
BEGIN
    FOR rec IN c1 LOOP
        IF rec.sub1 < 50 OR rec.sub2 < 50 OR rec.sub3 < 50 THEN
            DBMS_OUTPUT.PUT_LINE('Reg No: ' || rec.reg_no || '  Name: ' || rec.name || '  Status: FAIL');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Reg No: ' || rec.reg_no || '  Name: ' || rec.name || '  Status: PASS');
        END IF;
    END LOOP;
END;
/
