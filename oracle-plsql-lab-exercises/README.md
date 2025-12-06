# Oracle PL/SQL Database Lab Exercises

A comprehensive collection of Oracle SQL and PL/SQL laboratory exercises covering fundamental to advanced database programming concepts. This repository contains hands-on examples and solutions for learning database management, stored procedures, triggers, exception handling, and more.

## 📚 Table of Contents

- [Overview](#overview)
- [Technologies Used](#technologies-used)
- [Prerequisites](#prerequisites)
- [Installation & Setup](#installation--setup)
- [Lab Exercises](#lab-exercises)
- [Repository Structure](#repository-structure)
- [How to Use](#how-to-use)
- [Learning Path](#learning-path)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## 🎯 Overview

This repository contains 10 comprehensive lab exercises designed to teach Oracle SQL and PL/SQL programming. Each lab focuses on specific database concepts and includes:

- **Problem statements** with clear objectives
- **Complete solutions** with well-commented code
- **Sample data** for testing
- **Expected outputs** and results

Perfect for students, database beginners, and anyone looking to strengthen their Oracle database skills.

## 🛠 Technologies Used

- **Oracle Database** (11g or higher)
- **SQL*Plus** or **SQL Developer**
- **PL/SQL** programming language

## 📋 Prerequisites

Before running these exercises, ensure you have:

1. **Oracle Database** installed (Express Edition is sufficient)
2. **SQL Client** (SQL*Plus, SQL Developer, DBeaver, or any Oracle-compatible IDE)
3. **Basic Knowledge** of:
   - SQL fundamentals (SELECT, INSERT, UPDATE, DELETE)
   - Relational database concepts
   - Basic programming concepts

## 🚀 Installation & Setup

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/oracle-plsql-lab-exercises.git
cd oracle-plsql-lab-exercises
```

### 2. Connect to Oracle Database

```sql
-- Using SQL*Plus
sqlplus username/password@localhost:1521/XE

-- Or using SQL Developer
-- Create a new connection with your credentials
```

### 3. Enable Server Output (for PL/SQL blocks)

```sql
SET SERVEROUTPUT ON;
```

### 4. Run the Labs

Navigate to any lab folder and execute the SQL files in order:
1. `schema.sql` - Creates tables
2. `test-data.sql` - Inserts sample data (if available)
3. `solution.sql` - Contains the complete solution
4. Review `README.md` in each lab for specific instructions

## 📖 Lab Exercises

### Lab 01: Payroll Management System
**Topics**: Basic DML operations, Aggregate functions, Stored Procedures  
**Difficulty**: ⭐ Beginner  
[View Lab →](./labs/lab-01-payroll-management/)

### Lab 02: Student Marks & Triggers
**Topics**: Query filtering, Aggregate functions, Triggers  
**Difficulty**: ⭐⭐ Intermediate  
[View Lab →](./labs/lab-02-student-marks-triggers/)

### Lab 03: Departments & Employees
**Topics**: DDL/DML operations, Foreign keys, Date handling, Reports  
**Difficulty**: ⭐⭐ Intermediate  
[View Lab →](./labs/lab-03-departments-employees/)

### Lab 04: Employee Database with Exceptions
**Topics**: ALTER operations, Exception handling  
**Difficulty**: ⭐⭐ Intermediate  
[View Lab →](./labs/lab-04-employee-exceptions/)

### Lab 05: Department Management & Triggers
**Topics**: Table modifications, Complex triggers, DML event handling  
**Difficulty**: ⭐⭐ Intermediate  
[View Lab →](./labs/lab-05-department-triggers/)

### Lab 06: Student Admission Reports
**Topics**: Date filtering, Exception handling, Report generation  
**Difficulty**: ⭐⭐ Intermediate  
[View Lab →](./labs/lab-06-student-report-exceptions/)

### Lab 07: Procedures & Functions Deep Dive
**Topics**: Stored procedures, Functions, Return values, Cursors  
**Difficulty**: ⭐⭐⭐ Advanced  
[View Lab →](./labs/lab-07-procedures-functions/)

### Lab 08: DML Operations & Constraints
**Topics**: Complete DML suite, Integrity constraints, Data validation  
**Difficulty**: ⭐ Beginner  
[View Lab →](./labs/lab-08-dml-operations/)

### Lab 09: Stock Management System
**Topics**: NULL handling, Type conversion, Built-in exceptions  
**Difficulty**: ⭐⭐ Intermediate  
[View Lab →](./labs/lab-09-stock-management/)

### Lab 10: Customer Database & Salary Triggers
**Topics**: Advanced triggers, Business rules, Data validation  
**Difficulty**: ⭐⭐⭐ Advanced  
[View Lab →](./labs/lab-10-customer-triggers/)

## 📁 Repository Structure

```text
oracle-plsql-lab-exercises/
├── README.md
├── LICENSE
├── .gitignore
├── labs/
│   ├── lab-01-payroll-management/
│   ├── lab-02-student-marks-triggers/
│   ├── lab-03-departments-employees/
│   ├── lab-04-employee-exceptions/
│   ├── lab-05-department-triggers/
│   ├── lab-06-student-report-exceptions/
│   ├── lab-07-procedures-functions/
│   ├── lab-08-dml-operations/
│   ├── lab-09-stock-management/
│   └── lab-10-customer-triggers/
├── docs/
│   ├── setup-guide.md
│   ├── sql-best-practices.md
│   └── troubleshooting.md
└── assets/
    └── screenshots/
```

## 💡 How to Use

### For Individual Labs

1. Navigate to the lab folder:
   ```bash
   cd labs/lab-01-payroll-management/
   ```
2. Read the lab README:
   - Understand the problem statement
   - Review learning objectives
3. Execute the SQL files:
   ```sql
   @schema.sql
   @test-data.sql
   @solution.sql
   ```

### Learning Path

- **Beginner**: Labs 01, 08  
- **Intermediate**: Labs 02, 03, 04, 05, 06, 09  
- **Advanced**: Labs 07, 10  

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit and push changes
4. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the `LICENSE` file for details.

## 📧 Contact

**Your Name**  
- GitHub: [@yourusername](https://github.com/yourusername)
- Email: your.email@example.com
- LinkedIn: https://linkedin.com/in/yourprofile

## 📚 Additional Resources

- Oracle SQL Documentation
- PL/SQL User's Guide
- Oracle Live SQL
- Ask Tom Oracle

---

If you find this repository helpful, please consider giving it a ⭐ star!
