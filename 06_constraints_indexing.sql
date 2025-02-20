-- Program 6: Adding Constraints and Indexing

-- Step 1: Add a UNIQUE constraint to the email column
ALTER TABLE employees ADD CONSTRAINT unique_email UNIQUE (email);

-- Step 2: Add a NOT NULL constraint to the department column
ALTER TABLE employees MODIFY department VARCHAR(50) NOT NULL;

-- Step 3: Add a CHECK constraint to ensure salary is positive
ALTER TABLE employees ADD CONSTRAINT check_salary CHECK (salary > 0);

-- Step 4: Create an index on the name column for faster searches
CREATE INDEX idx_employee_name ON employees (name);

-- Step 5: Drop an index if no longer needed
DROP INDEX idx_employee_name ON employees;
