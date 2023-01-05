SELECT id, first_name, last_name, job_title, department_id, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);
