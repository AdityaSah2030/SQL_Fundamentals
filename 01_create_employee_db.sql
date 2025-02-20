-- Program 1: Creating a Database and Table

-- Step 1: Create a new database
CREATE DATABASE company_db;

-- Step 2: Use the newly created database
USE company_db;

-- Step 3: Create an employees table
CREATE TABLE employees (
    id INT PRIMARY KEY, 
    name VARCHAR(50) NOT NULL, 
    age INT CHECK (age > 18), 
    department VARCHAR(50), 
    salary DECIMAL(10,2)
);
