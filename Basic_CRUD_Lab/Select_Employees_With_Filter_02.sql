SELECT 
    `id`,
    CONCAT(`employees`.`first_name`,
            ' ',
            `employees`.`last_name`) AS `full_name`,
    `job_title`,
    `salary`
FROM
    `employees`
WHERE
    `salary` > 1000.00
ORDER BY `id`;