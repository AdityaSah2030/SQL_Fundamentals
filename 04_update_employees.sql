-- Program 4: Updating Data in Employees Table

-- Step 1: Update salary of a specific employee
UPDATE employees SET salary = 80000 WHERE id = 2;

-- Step 2: Update department of all employees in HR to 'Human Resources'
UPDATE employees SET department = 'Human Resources' WHERE department = 'HR';

-- Step 3: Increase salary of all employees in IT department by 10%
UPDATE employees SET salary = salary * 1.10 WHERE department = 'IT';

-- Step 4: Set department to NULL for employees with no assigned department
UPDATE employees SET department = NULL WHERE department = '' OR department IS NULL;
