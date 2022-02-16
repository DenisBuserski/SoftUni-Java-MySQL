CREATE FUNCTION udf_game_info_by_name (game_name VARCHAR (20)) 
RETURNS TEXT
DETERMINISTIC 
BEGIN
RETURN 
(SELECT
CONCAT('The ', `g`.`name`, ' is developed by a ', `t`.`name`, ' in an office with an address ', `a`.`name`)
`name`
FROM `games` AS `g` 
JOIN `teams` AS `t` ON `g`.`team_id` = `t`.`id`
JOIN `offices` AS `o` ON `o`.`id` = `t`.`office_id`
JOIN `addresses` AS `a` ON `a`.`id` = `o`.`address_id`
WHERE `g`.`name` = game_name);
END

