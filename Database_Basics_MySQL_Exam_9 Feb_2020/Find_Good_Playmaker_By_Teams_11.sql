CREATE PROCEDURE udp_find_playmaker (min_dribble_points INT, team_name VARCHAR(45))
BEGIN
(SELECT
CONCAT_WS(' ', `p`.`first_name`, `p`.`last_name`) AS `full_name`,
`p`.`age`,
`p`.`salary`,
`sk`.`dribbling`,
`sk`.`speed`,
`t`.`name` AS `team_name`
FROM `players` AS `p`
LEFT JOIN `teams` AS `t` ON `t`.`id` = `p`.`team_id`
LEFT JOIN `skills_data` AS `sk` ON `sk`.`id` = `p`.`skills_data_id`
WHERE
`sk`.`dribbling` > min_dribble_points AND
`t`.`name` LIKE team_name
ORDER BY `sk`.`speed` DESC
LIMIT 1);
END