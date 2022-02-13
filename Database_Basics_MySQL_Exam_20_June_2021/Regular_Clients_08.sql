SELECT 
    `c`.`full_name`,
    COUNT(`cars`.`id`) AS `count_of_cars`,
    SUM(`cour`.`bill`) AS `total_sum`
FROM
    `cars`
        LEFT JOIN
    `courses` AS `cour` ON `cars`.`id` = `cour`.`car_id`
        LEFT JOIN
    `clients` AS `c` ON `cour`.`client_id` = `c`.`id`
WHERE
    REGEXP_LIKE(`c`.`full_name`, '^.a')
GROUP BY `full_name`
HAVING `count_of_cars` > 1
ORDER BY `full_name`;