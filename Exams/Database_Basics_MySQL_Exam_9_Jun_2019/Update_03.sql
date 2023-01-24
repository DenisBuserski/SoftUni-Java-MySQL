UPDATE `employees_clients` AS `ec`
JOIN
    (SELECT `ec1`.`employee_id`, COUNT(`ec1`.`client_id`) AS 'count'
    FROM `employees_clients` AS `ec1`
    GROUP BY `ec1`.`employee_id`
    ORDER BY `count` , `ec1`.`employee_id`) AS `l` 
SET `ec`.`employee_id` = `l`.`employee_id`
WHERE `ec`.`employee_id` = `ec`.`client_id`;
