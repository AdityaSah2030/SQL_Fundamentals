-- Program 3: Retrieving and Filtering Data from Employees Table

-- Step 1: Retrieve all records from employees table
SELECT * FROM employees;

-- Step 2: Retrieve specific columns (name and department)
SELECT name, department FROM employees;

-- Step 3: Filter employees with salary greater than 60000
SELECT * FROM employees WHERE salary > 60000;

-- Step 4: Filter employees belonging to HR department
SELECT * FROM employees WHERE department = 'HR';

-- Step 5: Retrieve employees ordered by salary in descending order
SELECT * FROM employees ORDER BY salary DESC;

-- Step 6: Retrieve employees where department is NULL
SELECT * FROM employees WHERE department IS NULL;
