SELECT 
`t`.`name` AS `team_name`,
`a`.`name` AS `address_name`,
CHAR_LENGTH(`a`.`name`) AS `count_of_characters`
FROM
`teams` AS `t`
LEFT JOIN `offices` AS `off` ON `t`.`office_id` = `off`.`id`
LEFT JOIN `addresses` AS `a` ON `a`.`id` = `off`.`address_id`
WHERE `off`.`website` IS NOT NULL
ORDER BY 
`team_name`, 
`address_name`;