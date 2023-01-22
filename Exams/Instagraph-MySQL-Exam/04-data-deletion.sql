-- SET SQL_SAFE_UPDATES = 0; -- Remove Safe mode
DELETE FROM `users` 
WHERE `id` IN
(SELECT `id` FROM 
                 (SELECT `id` FROM `instagraph_db`.`users` AS u 
                  WHERE 
                  `id` NOT IN(SELECT `user_id` FROM `instagraph_db`.`users_followers`)
                  AND `id` NOT IN(SELECT `follower_id` FROM `instagraph_db`.`users_followers`)
) AS c
);
