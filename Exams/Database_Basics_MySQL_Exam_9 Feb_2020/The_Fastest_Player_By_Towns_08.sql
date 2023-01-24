SELECT
MAX(`sk`.`speed`) AS `max_speed`,
`towns`.`name` AS `town_name`
FROM `players` AS `p` 
LEFT JOIN `skills_data` AS `sk` ON `p`.`skills_data_id` = `sk`.`id`
right JOIN `teams` AS `t` ON `t`.`id` = `p`.`team_id`
right JOIN `stadiums` AS `s` ON `s`.`id` = `t`.`stadium_id`
right JOIN `towns` ON `towns`.`id` = `s`.`town_id`
WHERE `t`.`name` NOT LIKE 'Devify'
GROUP BY `town_name`
ORDER BY 
`max_speed` DESC,
`towns`.`name`;