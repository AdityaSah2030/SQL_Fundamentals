-- Program 7: Using Joins in SQL

-- Step 1: Create a departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Step 2: Insert sample data into departments table
INSERT INTO departments (dept_id, dept_name) VALUES 
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- Step 3: Add a foreign key to employees table referencing departments
ALTER TABLE employees ADD COLUMN dept_id INT;
ALTER TABLE employees ADD CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES departments(dept_id);

-- Step 4: Perform an INNER JOIN to retrieve employee names along with their department names
SELECT employees.name, departments.dept_name 
FROM employees 
INNER JOIN departments ON employees.dept_id = departments.dept_id;

-- Step 5: Perform a LEFT JOIN to include employees without assigned departments
SELECT employees.name, departments.dept_name 
FROM employees 
LEFT JOIN departments ON employees.dept_id = departments.dept_id;

-- Step 6: Perform a RIGHT JOIN to include departments without employees
SELECT employees.name, departments.dept_name 
FROM employees 
RIGHT JOIN departments ON employees.dept_id = departments.dept_id;

-- Step 7: Perform a FULL OUTER JOIN (not available in MySQL, workaround using UNION)
SELECT employees.name, departments.dept_name 
FROM employees 
LEFT JOIN departments ON employees.dept_id = departments.dept_id
UNION
SELECT employees.name, departments.dept_name 
FROM employees 
RIGHT JOIN departments ON employees.dept_id = departments.dept_id;
