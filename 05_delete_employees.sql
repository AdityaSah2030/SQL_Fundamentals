-- Program 5: Deleting Data from Employees Table

-- Step 1: Delete a specific employee by ID
DELETE FROM employees WHERE id = 6;

-- Step 2: Delete all employees from the IT department
DELETE FROM employees WHERE department = 'IT';

-- Step 3: Delete employees with NULL salaries
DELETE FROM employees WHERE salary IS NULL;

-- Step 4: Delete all employees (be careful!)
-- DELETE FROM employees;  
-- Uncomment to execute, deletes all records
