-- 09.Profile Pictures


SELECT `u`.`id`, 
`u`.`username`, 
CONCAT_WS(' ', `p`.`size`, 'KB') AS `size`
FROM `users` AS `u` JOIN `pictures` AS `p` ON `u`.`profile_picture_id` = `p`.`id`
WHERE `profile_picture_id` > 1
GROUP BY `profile_picture_id`
ORDER BY `p`.`id` ASC;
