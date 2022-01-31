SELECT 
    `t`.`town_id`, `t`.`name` AS `town_name`, `a`.`address_text`
FROM
    `addresses` AS `a`
        JOIN
    `towns` AS `t` ON `a`.`town_id` = `t`.`town_id`
WHERE
    `t`.`name` = 'San Francisco'
        OR `t`.`name` = 'Sofia'
        OR `t`.`name` = 'Carnation'
ORDER BY `town_id` , `address_id`;