-- Failed students (assuming pass mark = 40)
SELECT stud_id, stud_name
FROM student_marks
WHERE sub1 < 40 OR sub2 < 40 OR sub3 < 40 OR sub4 < 40 OR sub5 < 40;

-- Max and average
SELECT MAX(sub1) AS Max_Sub1 FROM student_marks;
SELECT AVG(sub2) AS Avg_Sub2 FROM student_marks;

-- Audit table & trigger
CREATE TABLE student_audit (
    stud_id NUMBER,
    action VARCHAR2(10),
    action_date DATE
);

CREATE OR REPLACE TRIGGER student_trigger
AFTER INSERT OR DELETE
ON student_marks
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO student_audit VALUES (:NEW.stud_id, 'INSERT', SYSDATE);
    ELSIF DELETING THEN
        INSERT INTO student_audit VALUES (:OLD.stud_id, 'DELETE', SYSDATE);
    END IF;
END;
/

-- Test trigger
INSERT INTO student_marks VALUES (6, 'Ravi', 50, 60, 70, 80, 90);
DELETE FROM student_marks WHERE stud_id = 2;

SELECT * FROM student_audit;
