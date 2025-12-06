CREATE TABLE Emp (
    Eid NUMBER(5) PRIMARY KEY,
    Ename VARCHAR2(15) NOT NULL,
    Dept VARCHAR2(10),
    Salary NUMBER(7,2) CHECK (Salary > 0)
);
