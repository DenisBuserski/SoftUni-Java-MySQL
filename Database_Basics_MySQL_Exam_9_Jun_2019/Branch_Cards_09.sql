SELECT 
    `b`.`name`, COUNT(`cards`.`id`) AS `count_of_cards`
FROM
    `branches` AS `b`
        LEFT JOIN
    `employees` AS `e` ON `b`.`id` = `e`.`branch_id`
        LEFT JOIN
    `employees_clients` AS `ec` ON `e`.`id` = `ec`.`employee_id`
        LEFT JOIN
    `clients` AS `c` ON `ec`.`client_id` = `c`.`id`
        LEFT JOIN
    `bank_accounts` AS `ba` ON `c`.`id` = `ba`.`client_id`
        LEFT JOIN
    `cards` ON `ba`.`id` = `cards`.`bank_account_id`
GROUP BY `b`.`name`
ORDER BY `count_of_cards` DESC , `name`;
