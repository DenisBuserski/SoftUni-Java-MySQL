DELETE FROM `players_coaches` 
WHERE
    `coach_id` = `player_id`;

DELETE FROM `players` 
WHERE
    `age` >= 45;