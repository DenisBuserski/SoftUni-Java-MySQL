SELECT 
`p`.`name` AS `planet_name`,
COUNT(`j`.`destination_spaceport_id`) AS `journeys_count`
FROM
`journeys` AS `j`
JOIN `spaceports` AS `sp` ON `sp`.`id` = `j`.`destination_spaceport_id`
JOIN `planets` AS `p` ON `p`.`id` = `sp`.`planet_id`
GROUP BY `planet_name`
ORDER BY 
`journeys_count` DESC, 
`planet_name` ASC;
