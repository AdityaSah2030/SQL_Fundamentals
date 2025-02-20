# SQL Fundamentals

## Introduction
SQL (Structured Query Language) is used to store, manipulate, and retrieve data in relational database management systems (RDBMS). This guide covers fundamental concepts, commands, and operations in SQL.

---

## 📌 What is a Database?
A **database** is a collection of interrelated data that is organized for efficient retrieval and management.

## 📌 What is DBMS?
A **Database Management System (DBMS)** is software that helps in creating, managing, and organizing databases.

## 📌 What is RDBMS?
A **Relational Database Management System (RDBMS)** is a DBMS that organizes data into tables (relations). Examples: MySQL, PostgreSQL, Oracle, SQL Server.

## 📌 What is SQL?
SQL is a language used to interact with an RDBMS for performing CRUD operations:
- **CREATE** – Create databases, tables, and records.
- **READ** – Retrieve data from databases.
- **UPDATE** – Modify existing data.
- **DELETE** – Remove data from tables.

---

# SQL Data Types

| Data Type | Description |
|-----------|-------------|
| CHAR(n) | Fixed-length string (0-255 characters) |
| VARCHAR(n) | Variable-length string (0-255 characters) |
| INT | Integer (-2,147,483,648 to 2,147,483,647) |
| BIGINT | Large integer values |
| FLOAT | Decimal numbers with up to 23 digits of precision |
| DOUBLE | Decimal numbers with 24-53 digits of precision |
| BOOLEAN | Boolean values (0 or 1) |
| DATE | Stores date (YYYY-MM-DD) |
| TIME | Stores time (HH:MM:SS) |

---

# SQL Commands
SQL commands are categorized into five types:

## 1️⃣ Data Definition Language (DDL)
DDL commands define database structure.

| Command | Description |
|---------|-------------|
| `CREATE TABLE` | Creates a new table |
| `ALTER TABLE` | Modifies an existing table |
| `DROP TABLE` | Deletes a table permanently |
| `TRUNCATE TABLE` | Deletes all rows from a table |

Example:
```sql
CREATE TABLE employees (
    id INT PRIMARY KEY, 
    name VARCHAR(50),
    salary DECIMAL(10,2)
);
```

## 2️⃣ Data Manipulation Language (DML)
DML commands modify data in the database.

| Command | Description |
|---------|-------------|
| `INSERT` | Adds new records |
| `UPDATE` | Modifies existing records |
| `DELETE` | Removes records |

Example:
```sql
INSERT INTO employees (id, name, salary) VALUES (1, 'Alice', 50000);
UPDATE employees SET salary = 55000 WHERE id = 1;
DELETE FROM employees WHERE id = 1;
```

## 3️⃣ Data Query Language (DQL)
DQL is used to retrieve data from the database.

| Command | Description |
|---------|-------------|
| `SELECT` | Retrieves data from a table |

Example:
```sql
SELECT * FROM employees;
SELECT name, salary FROM employees WHERE salary > 50000;
```

## 4️⃣ Data Control Language (DCL)
DCL commands control access and permissions.

| Command | Description |
|---------|-------------|
| `GRANT` | Grants permissions to a user |
| `REVOKE` | Removes permissions from a user |

Example:
```sql
GRANT SELECT ON employees TO user1;
REVOKE SELECT ON employees FROM user1;
```

## 5️⃣ Transaction Control Language (TCL)
TCL commands manage database transactions.

| Command | Description |
|---------|-------------|
| `COMMIT` | Saves all changes |
| `ROLLBACK` | Undoes changes |
| `SAVEPOINT` | Sets a checkpoint to roll back to |

Example:
```sql
BEGIN;
UPDATE employees SET salary = salary * 1.1;
SAVEPOINT before_update;
ROLLBACK TO before_update;
COMMIT;
```

---

# SQL Joins
Joins are used to retrieve data from multiple tables based on related columns.

## 🔹 INNER JOIN
Returns only matching rows between tables.
```sql
SELECT customers.name, orders.product FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;
```

## 🔹 LEFT JOIN
Returns all records from the left table and matching records from the right table.
```sql
SELECT customers.name, orders.product FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;
```

## 🔹 RIGHT JOIN
Returns all records from the right table and matching records from the left table.
```sql
SELECT customers.name, orders.product FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id;
```

## 🔹 FULL OUTER JOIN
Returns all records when there is a match in either table.
```sql
SELECT customers.name, orders.product FROM customers
FULL OUTER JOIN orders ON customers.id = orders.customer_id;
```

---

# SQL Set Operations
Set operations combine results from multiple queries.

| Operation | Description |
|-----------|-------------|
| `UNION` | Combines results and removes duplicates |
| `UNION ALL` | Combines results without removing duplicates |
| `INTERSECT` | Returns common rows in both queries |
| `EXCEPT` | Returns rows in first query but not in second |

Example:
```sql
SELECT name FROM customers
UNION
SELECT name FROM suppliers;
```

---

# SQL Subqueries
A **subquery** is a query inside another query.

Example:
```sql
SELECT name FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
```

---

# Conclusion 🎯
This document covers the core SQL concepts required to work with relational databases. Mastering these commands and operations will help you become proficient in SQL. 🚀

For more resources, visit [MySQL Documentation](https://dev.mysql.com/doc/).
