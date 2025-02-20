-- Program 10: Using Set Operations in SQL

-- Step 1: Create a temporary table for past employees
CREATE TABLE past_employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);

-- Step 2: Insert sample data into past_employees table
INSERT INTO past_employees (id, name, department) VALUES 
(7, 'George Miller', 'Finance'),
(8, 'Hannah Scott', 'HR'),
(9, 'Ian Lee', 'IT');

-- Step 3: Use UNION to combine current and past employees
SELECT name, department FROM employees
UNION
SELECT name, department FROM past_employees;

-- Step 4: Use UNION ALL to include duplicates
SELECT name, department FROM employees
UNION ALL
SELECT name, department FROM past_employees;

-- Step 5: Use INTERSECT to find common employees (not available in MySQL, workaround using INNER JOIN)
SELECT employees.name, employees.department FROM employees
INNER JOIN past_employees ON employees.name = past_employees.name;

-- Step 6: Use EXCEPT to find employees only in current employees (workaround using LEFT JOIN and NULL check)
SELECT employees.name, employees.department FROM employees
LEFT JOIN past_employees ON employees.name = past_employees.name
WHERE past_employees.name IS NULL;
