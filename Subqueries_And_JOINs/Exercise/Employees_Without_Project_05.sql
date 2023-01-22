SELECT 
`employee_id`, 
`first_name`
FROM `employees` AS `e`
WHERE
NOT EXISTS( SELECT `employee_id` FROM `employees_projects` AS `ep` WHERE `e`.`employee_id` = `ep`.`employee_id`)
ORDER BY `e`.`employee_id` DESC
LIMIT 3;
