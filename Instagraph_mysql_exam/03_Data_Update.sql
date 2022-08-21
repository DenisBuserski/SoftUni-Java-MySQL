-- 03.Data Update
SET SQL_SAFE_UPDATES = 0;

UPDATE `users` AS `u`
SET `profile_picture_id` = 
(SELECT COUNT(`uf`.`follower_id`) 
FROM `users_followers` AS `uf` 
WHERE `uf`.`user_id` = `u`.`id`)
WHERE `u`.`profile_picture_id` IS NULL;



