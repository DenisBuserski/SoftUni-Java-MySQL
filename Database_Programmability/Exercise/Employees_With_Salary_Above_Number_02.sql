CREATE PROCEDURE usp_get_employees_salary_above (num DECIMAL(9, 4))
BEGIN
SELECT `first_name`, `last_name`
FROM `employees` AS `e`
WHERE `e`.`salary` >= num
ORDER BY 
`e`.`first_name` ASC,
`e`.`last_name` ASC,
`e`.`employee_id` ASC;
END
