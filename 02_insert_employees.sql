-- Program 2: Inserting Data into Employees Table

-- Step 1: Insert single employee record
INSERT INTO employees (id, name, age, department, salary) 
VALUES (1, 'Alice Johnson', 30, 'HR', 60000.00);

-- Step 2: Insert multiple employee records
INSERT INTO employees (id, name, age, department, salary) 
VALUES 
(2, 'Bob Smith', 28, 'IT', 75000.00), 
(3, 'Charlie Davis', 35, 'Finance', 85000.00), 
(4, 'David Brown', 40, 'Marketing', 72000.00), 
(5, 'Emma Wilson', 26, 'HR', 50000.00);

-- Step 3: Insert a record with NULL values
INSERT INTO employees (id, name, age, department, salary) 
VALUES (6, 'Franklin Clark', 32, NULL, NULL);
