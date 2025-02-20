-- Program 8: Working with Aggregate Functions & Grouping

-- Step 1: Calculate the total number of employees
SELECT COUNT(*) AS total_employees FROM employees;

-- Step 2: Calculate the average salary of employees
SELECT AVG(salary) AS avg_salary FROM employees;

-- Step 3: Find the highest and lowest salaries
SELECT MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary FROM employees;

-- Step 4: Calculate total salary expenditure per department
SELECT department, SUM(salary) AS total_salary FROM employees GROUP BY department;

-- Step 5: Find the number of employees in each department
SELECT department, COUNT(*) AS employee_count FROM employees GROUP BY department;

-- Step 6: Filter departments where total salary expenditure is greater than 100000
SELECT department, SUM(salary) AS total_salary 
FROM employees 
GROUP BY department 
HAVING SUM(salary) > 100000;

-- Step 7: Order departments by total salary in descending order
SELECT department, SUM(salary) AS total_salary 
FROM employees 
GROUP BY department 
ORDER BY total_salary DESC;
