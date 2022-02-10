SELECT 
`c`.`name`,
COUNT(`p`.`id`) AS `total_count_of_players`,
SUM(`p`.`salary`) AS `total_sum_of_salaries`
FROM `players` AS `p`
RIGHT JOIN `teams` AS `t` ON `p`.`team_id` = `t`.`id`
RIGHT JOIN `stadiums` AS `s` ON `t`.`stadium_id` = `s`.`id`
RIGHT JOIN `towns` ON `s`.`town_id` = `towns`.`id`
RIGHT JOIN `countries` AS `c` ON `towns`.`country_id` = `c`.`id`
GROUP BY `c`.`name`
ORDER BY 
`total_count_of_players` DESC,
`c`.`name`;