# SQL-for-beginners
A comprehensive collection of 10 hands-on Oracle SQL and PL/SQL lab exercises covering DDL/DML operations, stored procedures, functions, triggers, and exception handling. Each lab includes complete solutions, sample data, and documentation. Perfect for students learning Oracle database programming
# Oracle PL/SQL Lab Exercises

A comprehensive collection of 10 hands-on Oracle SQL and PL/SQL lab exercises covering DDL/DML operations, stored procedures, functions, triggers, and exception handling. Each lab includes complete solutions, sample data, and documentation.

## 📋 Prerequisites

Before starting these exercises, ensure you have:

1. **Oracle Database** installed (11g or higher recommended)
   - Oracle Express Edition (XE) is sufficient
2. **SQL Client** - any of the following:
   - SQL*Plus (included with Oracle)
   - Oracle SQL Developer
   - DBeaver
   - Any Oracle-compatible IDE
3. **Basic Knowledge** of:
   - SQL fundamentals (SELECT, INSERT, UPDATE, DELETE)
   - Relational database concepts
   - Basic programming concepts

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/CodingwithSanta/SQL-for-beginners.git
cd SQL-for-beginners/oracle-plsql-lab-exercises
```

### 2. Connect to Oracle Database

**Using SQL*Plus:**
```bash
sqlplus username/password@localhost:1521/XE
```

**Using SQL Developer:**
- Create a new connection with your credentials
- Test the connection before proceeding

### 3. Enable Server Output

Before running PL/SQL blocks, always execute:
```sql
SET SERVEROUTPUT ON;
```

This enables output from `DBMS_OUTPUT.PUT_LINE()` statements.

### 4. Running a Lab Exercise

For each lab, execute the SQL files in this order:

1. **`schema.sql`** - Creates the required tables
2. **`test-data.sql`** - Inserts sample data (if available)
3. **`solution.sql`** - Contains the complete solution

**Example:**
```bash
cd labs/lab-01-payroll-management/
```

Then in your SQL client:
```sql
@schema.sql
@test-data.sql
@solution.sql
```

## 📖 Lab Exercises

### Lab 01: Payroll Management System
- **Topics**: Basic DML operations, Aggregate functions, Stored Procedures
- **Difficulty**: ⭐ Beginner
- **Learn**: INSERT, UPDATE, DELETE, COUNT, MAX, MIN, CREATE PROCEDURE

### Lab 02: Student Marks & Triggers
- **Topics**: Query filtering, Aggregate functions, Triggers
- **Difficulty**: ⭐⭐ Intermediate
- **Learn**: WHERE conditions, AVG, Audit triggers, AFTER INSERT/DELETE

### Lab 03: Departments & Employees
- **Topics**: DDL/DML operations, Foreign keys, Date handling, Reports
- **Difficulty**: ⭐⭐ Intermediate
- **Learn**: Multi-table operations, Date filtering, Relational constraints

### Lab 04: Employee Database with Exceptions
- **Topics**: ALTER operations, Exception handling
- **Difficulty**: ⭐⭐ Intermediate
- **Learn**: ALTER TABLE, RENAME COLUMN, ZERO_DIVIDE exception

### Lab 05: Department Management & Triggers
- **Topics**: Table modifications, Complex triggers, DML event handling
- **Difficulty**: ⭐⭐ Intermediate
- **Learn**: BEFORE triggers, INSERTING/UPDATING/DELETING conditions

### Lab 06: Student Admission Reports
- **Topics**: Date filtering, Exception handling, Report generation
- **Difficulty**: ⭐⭐ Intermediate
- **Learn**: BETWEEN operator, Year-based filtering, OTHERS exception

### Lab 07: Procedures & Functions Deep Dive
- **Topics**: Stored procedures, Functions, Return values, Cursors
- **Difficulty**: ⭐⭐⭐ Advanced
- **Learn**: IN parameters, RETURN types, Cursor loops, Pass/Fail logic

### Lab 08: DML Operations & Constraints
- **Topics**: Complete DML suite, Integrity constraints, Data validation
- **Difficulty**: ⭐ Beginner
- **Learn**: PRIMARY KEY, NOT NULL, CHECK constraints, TRUNCATE, DROP

### Lab 09: Stock Management System
- **Topics**: NULL handling, Type conversion, Built-in exceptions
- **Difficulty**: ⭐⭐ Intermediate
- **Learn**: TO_NUMBER, NULL values, VALUE_ERROR, NO_DATA_FOUND exceptions

### Lab 10: Customer Database & Salary Triggers
- **Topics**: Advanced triggers, Business rules, Data validation
- **Difficulty**: ⭐⭐⭐ Advanced
- **Learn**: BEFORE UPDATE triggers, RAISE_APPLICATION_ERROR, Business logic enforcement

## 📁 Repository Structure

```
oracle-plsql-lab-exercises/
├── README.md
├── labs/
│   ├── lab-01-payroll-management/
│   │   ├── README.md
│   │   ├── schema.sql
│   │   ├── test-data.sql
│   │   └── solution.sql
│   ├── lab-02-student-marks-triggers/
│   ├── lab-03-departments-employees/
│   ├── lab-04-employee-exceptions/
│   ├── lab-05-department-triggers/
│   ├── lab-06-student-report-exceptions/
│   ├── lab-07-procedures-functions/
│   ├── lab-08-dml-operations/
│   ├── lab-09-stock-management/
│   └── lab-10-customer-triggers/
└── docs/
    ├── setup-guide.md
    ├── sql-best-practices.md
    └── troubleshooting.md
```

## 💡 Recommended Learning Path

**Beginners** - Start with these labs:
1. Lab 08 (DML Operations & Constraints)
2. Lab 01 (Payroll Management System)

**Intermediate** - Continue with:
3. Lab 03 (Departments & Employees)
4. Lab 02 (Student Marks & Triggers)
5. Lab 04 (Employee Exceptions)
6. Lab 05 (Department Triggers)
7. Lab 06 (Student Report Exceptions)
8. Lab 09 (Stock Management)

**Advanced** - Complete with:
9. Lab 07 (Procedures & Functions Deep Dive)
10. Lab 10 (Customer Triggers)

## 🔧 Troubleshooting

**Connection Issues:**
- Verify Oracle service is running
- Check connection string format
- Ensure firewall allows port 1521

**Output Not Displaying:**
- Run `SET SERVEROUTPUT ON;` before executing PL/SQL blocks

**Table Already Exists Error:**
- Drop the table first: `DROP TABLE table_name;`
- Or use `DROP TABLE table_name CASCADE CONSTRAINTS;` if foreign keys exist

**Data Not Inserted:**
- Ensure schema.sql ran successfully before test-data.sql
- Check for constraint violations in error messages

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-lab`)
3. Commit your changes (`git commit -m 'Add new lab exercise'`)
4. Push to the branch (`git push origin feature/new-lab`)
5. Open a Pull Request

## 📧 Contact

**Santhosh_C**
- GitHub: [@CodingwithSanta](https://github.com/CodingwithSanta)

---

⭐ If you find this repository helpful, please consider giving it a star!        
