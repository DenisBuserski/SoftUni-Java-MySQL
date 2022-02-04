CREATE PROCEDURE usp_raise_salary_by_id(id VARCHAR(100))
BEGIN
UPDATE `employees` 
SET salary = salary * 1.05
WHERE `id` = id;
END