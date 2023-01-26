SELECT 
CONCAT_WS(' ', `u`.`id`, `u`.`username`) AS `id_username`,
`email`
FROM `users` AS `u`
JOIN `users_photos` AS `up` ON `u`.`id` = `up`.`user_id`
WHERE `up`.`photo_id` = `u`.`id`
ORDER BY `u`.`id` ASC;