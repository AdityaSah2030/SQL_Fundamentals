-- Program 12: SQL Performance Optimization Techniques

-- Step 1: Use Indexing to speed up queries
CREATE INDEX idx_salary ON employees(salary);

-- Step 2: Optimize SELECT queries using EXPLAIN
EXPLAIN SELECT * FROM employees WHERE salary > 70000;

-- Step 3: Use LIMIT to restrict the number of records returned
SELECT * FROM employees ORDER BY salary DESC LIMIT 10;

-- Step 4: Optimize Joins by selecting only required columns
SELECT e.name, d.dept_name FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Step 5: Use EXISTS instead of IN for subqueries when possible
SELECT name FROM employees WHERE EXISTS (
    SELECT 1 FROM departments WHERE employees.dept_id = departments.dept_id
);

-- Step 6: Avoid SELECT * when not necessary
SELECT name, salary FROM employees WHERE salary > 50000;

-- Step 7: Partitioning data for better performance
ALTER TABLE employees PARTITION BY RANGE (salary) (
    PARTITION low_salaries VALUES LESS THAN (50000),
    PARTITION mid_salaries VALUES LESS THAN (100000),
    PARTITION high_salaries VALUES LESS THAN MAXVALUE
);
