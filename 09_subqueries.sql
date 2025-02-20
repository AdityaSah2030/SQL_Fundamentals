-- Program 9: Subqueries in SQL

-- Step 1: Retrieve employees earning above the average salary
SELECT name, salary FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Step 2: Find departments with more than 2 employees
SELECT department FROM employees 
GROUP BY department 
HAVING COUNT(*) > 2;

-- Step 3: Retrieve employees working in the department with the highest total salary
SELECT name, department FROM employees 
WHERE department = (SELECT department FROM employees 
GROUP BY department 
ORDER BY SUM(salary) DESC LIMIT 1);

-- Step 4: Get employees who have the same salary as the highest-paid employee
SELECT name, salary FROM employees 
WHERE salary = (SELECT MAX(salary) FROM employees);

-- Step 5: Retrieve employees whose salary is greater than the salary of 'Alice Johnson'
SELECT name, salary FROM employees 
WHERE salary > (SELECT salary FROM employees WHERE name = 'Alice Johnson');
