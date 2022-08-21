-- 06.Cheaters

SELECT `uf`.`user_id`, `u`.`username`
FROM `users_followers` AS `uf` JOIN `users` AS `u` ON `u`.`id` = `uf`.`user_id`
WHERE `uf`.`user_id` = `uf`.`follower_id`
ORDER BY `uf`.`user_id` ASC;