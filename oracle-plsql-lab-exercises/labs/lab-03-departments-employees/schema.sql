CREATE TABLE Departments (
    dept_no NUMBER(5) PRIMARY KEY,
    dept_name VARCHAR2(20),
    dept_location VARCHAR2(20)
);

CREATE TABLE Employees (
    emp_id NUMBER(5) PRIMARY KEY,
    emp_name VARCHAR2(20),
    emp_salary NUMBER(10,2),
    dept_no NUMBER(5),
    doj DATE
);
