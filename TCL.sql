#TCL TRANSACTION CONTROL LANGUAGE

START TRANSACTION;

INSERT INTO employees 
(emp_id, name, department) 
VALUES 
(3, 'Eva', 'IT');

SAVEPOINT sp1;

INSERT INTO employees
(emp_id, name, department)
VALUES
(4, 'Seri', 'HR');

COMMIT;

SELECT * FROM employees;

ROLLBACK TO sp1;

