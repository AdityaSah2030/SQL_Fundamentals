-- Program 11: Advanced SQL Topics - Views, Stored Procedures, and Triggers

-- Step 1: Create a View to show high-earning employees
CREATE VIEW high_earning_employees AS
SELECT name, department, salary 
FROM employees
WHERE salary > 70000;

-- Step 2: Use the View to retrieve data
SELECT * FROM high_earning_employees;

-- Step 3: Create a Stored Procedure to give a raise to employees in a specific department
DELIMITER //
CREATE PROCEDURE GiveRaise(IN dept VARCHAR(50), IN percentage DECIMAL(5,2))
BEGIN
    UPDATE employees
    SET salary = salary + (salary * (percentage / 100))
    WHERE department = dept;
END //
DELIMITER ;

-- Step 4: Call the Stored Procedure to give a 10% raise to IT department employees
CALL GiveRaise('IT', 10);

-- Step 5: Create a Trigger to log salary updates
CREATE TABLE salary_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER before_salary_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO salary_log (employee_id, old_salary, new_salary)
    VALUES (OLD.id, OLD.salary, NEW.salary);
END //
DELIMITER ;
