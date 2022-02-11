SELECT 
    `p`.`id`,
    ANY_VALUE(`p`.`date`) AS `date_and_time`,
    ANY_VALUE(`p`.`description`) AS `description`,
    COUNT(`p`.`id`) AS `commentsCount`
FROM
    `comments` AS `c`
        JOIN
    `photos` AS `p` ON `c`.`photo_id` = `p`.`id`
GROUP BY `p`.`id`
ORDER BY `commentsCount` DESC , `id` ASC
LIMIT 5;