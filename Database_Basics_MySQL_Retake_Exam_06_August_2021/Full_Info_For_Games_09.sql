SELECT 
    `g`.`name`,
    CASE
        WHEN `g`.`budget` <= 50000 THEN 'Normal budget'
        ELSE 'Insufficient budget'
    END AS 'budget_level',
    `t`.`name` AS `team_name`,
    `a`.`name` AS `address_name`
FROM
    `games` AS `g`
        JOIN
    `teams` AS `t` ON `g`.`team_id` = `t`.`id`
        JOIN
    `offices` AS `o` ON `t`.`office_id` = `o`.`id`
        JOIN
    `addresses` AS `a` ON `a`.`id` = `o`.`address_id`
WHERE
    `release_date` IS NULL
        AND `g`.`id` NOT IN (SELECT 
            `game_id`
        FROM
            `games_categories`)
ORDER BY `g`.`name`;