SELECT 
`ss`.`name`, 
`ss`.`manufacturer`
FROM
`spaceships` AS `ss`
LEFT JOIN `journeys` AS `j` ON `ss`.`id` = `j`.`spaceship_id`
LEFT JOIN `travel_cards` AS `tc` ON `j`.`id` = `tc`.`journey_id`
LEFT JOIN `colonists` AS `c` ON `tc`.`colonist_id` = `c`.`id`
WHERE
`c`.`birth_date` > '1989-01-01'
AND `tc`.`job_during_journey` = 'Pilot'
ORDER BY `ss`.`name` ASC;