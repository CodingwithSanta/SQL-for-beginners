-- Update
UPDATE Employees SET emp_salary = 37000 WHERE emp_id = 101;

-- Delete
DELETE FROM Employees WHERE emp_id = 102;

-- Report employees joined after 1-Jan-2020
SELECT emp_id, emp_name, emp_salary, dept_no, doj
FROM Employees
WHERE doj > DATE '2020-01-01';
