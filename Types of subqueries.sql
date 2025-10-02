-- Scalar subquery
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT,
    department VARCHAR(50)
);
INSERT INTO employees (emp_id, name, salary, department) VALUES
(1, 'Alice', 70000, 'HR'),
(2, 'Bob', 85000, 'Engineering'),
(3, 'Charlie', 90000, 'Engineering'),
(4, 'David', 60000, 'HR'),
(5, 'Eva', 75000, 'Marketing');
SELECT 
    name,
    salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary,
    CASE 
        WHEN salary > (SELECT AVG(salary) FROM employees) THEN 'Above Average'
        ELSE 'Below or Equal to Average'
    END AS comparison
FROM employees;
-- Multiple row subquery
SELECT name, department
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING COUNT(*) > 1
);
-- Coerrelated subquey
SELECT name, department, salary
FROM employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e2.department = e1.department
);