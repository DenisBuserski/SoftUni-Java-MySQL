SELECT 
`u`.`id`, 
`u`.`username`, 
COUNT(`u`.`id`) AS `posts`,
(SELECT COUNT(`uf`.`follower_id`) FROM `users_followers` AS `uf` WHERE `u`.`id` = `uf`.`user_id`) AS `followers`
FROM `users` AS `u`
JOIN `posts` AS `p` ON `p`.`user_id` = `u`.`id`
GROUP BY `u`.`id`
ORDER BY followers DESC
LIMIT 1;
