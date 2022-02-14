INSERT INTO `games` (`name`, `rating`, `budget`, `team_id`)
SELECT 
lower(reverse(substring(`name`, 2))) AS `name`,
`t`.`id` AS `rating`,
`t`.`leader_id` * 1000 AS `budget`,
`t`.`id` AS `team_id`
FROM `teams` AS `t`
WHERE `t`.`id` BETWEEN 1 AND 9;