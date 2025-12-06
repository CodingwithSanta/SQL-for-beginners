INSERT INTO customer VALUES ('Arun', 'MG Road', 'Chennai');
INSERT INTO customer VALUES ('Priya', 'Main Street', 'New York');
INSERT INTO customer VALUES ('Ravi', 'Anna Nagar', 'Delhi');

ALTER TABLE customer ADD salary NUMBER(10,2);
ALTER TABLE customer MODIFY cust_name VARCHAR2(30);
